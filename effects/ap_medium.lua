-- ap_medium_hit
-- ap_medium_miss
-- ap_medium

return {
  ["ap_medium_hit"] = {
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.95,
        colormap           = [[1 0.75 0.5 0.01   1 0.75 0.5 0.01   0 0 0 0]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 90,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.1, 0]],
        numparticles       = 32,
        particlelife       = 32,
        particlelifespread = 0,
        particlesize       = 0.5,
        particlesizespread = 1,
        particlespeed      = 0.5,
        particlespeedspread = 2,
        pos                = [[0, 1, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[plasma]],
      },
    },
  },

  ["ap_medium_miss"] = {
    ground = {
      class              = [[CBitmapMuzzleFlame]],
      count              = 4,
      ground             = true,
      properties = {
        colormap           = [[0.5 0.4 0.3 1  0.05 0.04 0.03 0.1]],
        dir                = [[-0.1 r0.2, 1, -0.1 r0.2]],
        frontoffset        = 0,
        fronttexture       = [[splashbase]],
        length             = [[16 r8]],
        sidetexture        = [[splashside]],
        size               = [[4 r2]],
        sizegrowth         = 1,
        ttl                = 12,
      },
    },
    water = {
      class              = [[CBitmapMuzzleFlame]],
      count              = 4,
      water              = true,
      properties = {
        colormap           = [[0.45 0.45 0.5 0.5  0.045 0.045 0.05 0.05]],
        dir                = [[-0.1 r0.2, 1, -0.1 r0.2]],
        frontoffset        = 0,
        fronttexture       = [[splashbase]],
        length             = [[16 r8]],
        sidetexture        = [[splashside]],
        size               = [[4 r2]],
        sizegrowth         = 1,
        ttl                = 12,
      },
    },
  },

  ["ap_medium"] = {
    usedefaultexplosions = false,
    groundflash = {
      circlealpha        = 0,
      circlegrowth       = 10,
      flashalpha         = 1,
      flashsize          = 32,
      ttl                = 8,
      color = {
        [1]  = 1,
        [2]  = 0.75,
        [3]  = 0.5,
      },
    },
    hit = {
      class              = [[CExpGenSpawner]],
      count              = 1,
      unit               = 1,
      properties = {
        delay              = 0,
        explosiongenerator = [[custom:AP_Medium_Hit]],
        pos                = [[0, 0,  0]],
      },
    },
    miss = {
      class              = [[CExpGenSpawner]],
      count              = 1,
      nounit             = 1,
      properties = {
        delay              = 0,
        explosiongenerator = [[custom:AP_Medium_Miss]],
        pos                = [[0, 0,  0]],
      },
    },
    pikes = {
      air                = true,
      class              = [[CExploSpikeProjectile]],
      count              = 8,
      ground             = true,
      water              = true,
      properties = {
        alpha              = 1,
        alphadecay         = 0.125,
        alwaysvisible      = true,
        color              = [[1,0.75,0.5]],
        dir                = [[-2 r4, -2 r4, -2 r4]],
        length             = 1,
        lengthgrowth       = 1,
        width              = 4,
      },
    },
    smoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.75,
        alwaysvisible      = false,
        colormap           = [[0.5 0.5 0.5 1  0 0 0 0]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 90,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 8,
        particlelife       = 12,
        particlelifespread = 4,
        particlesize       = 1,
        particlesizespread = 0,
        particlespeed      = 2,
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = [[2 r2]],
        sizemod            = 0.5,
        texture            = [[smokesmall]],
      },
    },
  },

}
