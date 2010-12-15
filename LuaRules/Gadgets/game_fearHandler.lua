function gadget:GetInfo()
	return {
		name      = "Infantry Suppression",
		desc      = "Lua Implementation of fear weapons causing suppression",
		author    = "FLOZi",
		date      = "13 October 2008", -- Happy Birthday Charlie!
		license   = "GNU GPL v2",
		layer     = 0,
		enabled   = true
	}
end

-- function localisations
-- Synced Read
local GetCOBScriptID			= Spring.GetCOBScriptID
local GetUnitAllyTeam			= Spring.GetUnitAllyTeam
local GetUnitDefID       		= Spring.GetUnitDefID
local GetUnitIsDead 			= Spring.GetUnitIsDead
local GetUnitsInSphere			= Spring.GetUnitsInSphere
local ValidUnitID				= Spring.ValidUnitID
-- Synced Ctrl
local CallCOBScript				= Spring.CallCOBScript
local SetUnitExperience			= Spring.SetUnitExperience
local SetUnitRulesParam 		= Spring.SetUnitRulesParam
-- constants

-- variables
local scriptIDs = {}
local fearLevels = {}

local targets = {}
local tLength = 0

local blockAllyTeams = {}

if (gadgetHandler:IsSyncedCode()) then
-- SYNCED

local function UpdateSuppression(unitID)
	local _, currFear = CallCOBScript(unitID, scriptIDs[unitID], 1, 1)
	fearLevels[unitID] = currFear
	SetUnitRulesParam(unitID, "suppress", currFear)
end


function gadget:UnitCreated(unitID)
	local scriptID = GetCOBScriptID(unitID, "luaFunction")
	if (scriptID) then 
		SetUnitRulesParam(unitID, "suppress", 0)
		scriptIDs[unitID] = scriptID
	end
end


function gadget:UnitDestroyed(unitID)
	scriptIDs[unitID] = nil
end


function gadget:UnitDamaged(unitID, unitDefID, unitTeam, damage, paralyzer, weaponID, attackerID, attackerDefID, attackerTeam)
	if scriptIDs[unitID] and weaponID and weaponID > 0 then
		local wd = WeaponDefs[weaponID]
		local cp = wd.customParams
		-- SMGs and Rifles do a small amount of suppression cob side, so update suppression when hit by them
		-- ... but be sure not to update suppression for a dead unit
		if cp and cp.damagetype == "smallarms" and not cp.fearid and not GetUnitIsDead(unitID) then
			UpdateSuppression(unitID)
		end
	end
end


function gadget:Explosion(weaponID, px, py, pz, ownerID)
	local wd = WeaponDefs[weaponID]
	local cp = wd.customParams
	local fearID = cp.fearid
	
	if not fearID then return false end
  
	local unitsAtSpot = GetUnitsInSphere(px, py, pz, cp.fearaoe)
	
	-- if the weapon is a howitzer shell reset the gun's experience to 0
	if ValidUnitID(ownerID) and (cp.howitzer or cp.infgun) then
		SetUnitExperience(ownerID, 0)
	end
	
	for i = 1, #unitsAtSpot do
		local unitID = unitsAtSpot[i]
		local ud = UnitDefs[GetUnitDefID(unitID)]
		if ud.customParams.blockfear == "1" then
			blockAllyTeams[GetUnitAllyTeam(unitID)] = true
		elseif ud.customParams.feartarget then
			tLength = tLength + 1
			targets[tLength] = unitID
		end
	end
	
	for i = 1, tLength do
		local unitID = targets[i]
		-- exactly how scriptIDs[unitID] can be nil at this point I am not sure, but it will crash without it
		if unitID ~= ownerID and not blockAllyTeams[GetUnitAllyTeam(unitID)] and scriptIDs[unitID] then
			CallCOBScript(unitID, "HitByWeaponId", 0, 0, 0, fearID, 0)
			UpdateSuppression(unitID)
		end
	end
	-- reset tables
	targets = {}
	tLength = 0
	blockAllyTeams = {}
	
	return false
end


function gadget:Initialize()
	for weaponId, weaponDef in pairs (WeaponDefs) do
		if weaponDef.customParams.fearid then
			--Spring.Echo(weaponDef.name) -- useful for debugging
			Script.SetWatchWeapon(weaponId, true)
		end
	end
end

-- Until we move to LUS or someone bothers to update the COBs; keep polling in order to reset fear levels due to recovery
function gadget:GameFrame(n)
	if (n % (1.5*30) < 0.1) then
		for unitID, funcID in pairs(scriptIDs) do
			UpdateSuppression(unitID)
		end
	end
end
else
-- UNSYNCED
end
