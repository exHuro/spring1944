-- mediumsmall_muzzleflash
-- mediumsmall_muzzledust
-- xlarge_muzzleflash
-- large_muzzledust
-- xlarge_muzzledust
-- xsmall_muzzleflash
-- xxlarge_muzzleflash
-- mediumlarge_muzzledust
-- medium_muzzleflash
-- medium_muzzledust
-- xsmall_muzzledust
-- small_muzzleflash
-- muzzlebrakesmoke
-- mediumlarge_muzzleflash
-- small_muzzledust
-- xxlarge_muzzledust
-- large_muzzleflash

return {
  ["mediumsmall_muzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        alwaysvisible      = false,
        colormap           = [[1 1 0.5 0.01	1 0.7 0 0.01	0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0.3,
        fronttexture       = [[plasma0029]],
        length             = 0.3,
        sidetexture        = [[plasma2]],
        size               = 0.15,
        sizegrowth         = 70,
        ttl                = 5,
      },
    },
    muzzlesmoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = false,
        colormap           = [[0 0 0 0.01  0.5 0.5 0.5 0.5     0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 10,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 20,
        particlelifespread = 0,
        particlesize       = [[7 i-0.4]],
        particlesizespread = 1,
        particlespeed      = [[10 i-1]],
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["mediumsmall_muzzledust"] = {
    muzzleflash = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 0,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = false,
        colormap           = [[0.72 0.61 0.41 1      0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.05, 0]],
        numparticles       = 20,
        particlelife       = 30,
        particlelifespread = 0,
        particlesize       = 1,
        particlesizespread = 2,
        particlespeed      = 6,
        particlespeedspread = 6,
        pos                = [[0, 0, 0]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["xlarge_muzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        alwaysvisible      = true,
        colormap           = [[1 1 0.5 0.01	1 0.7 0 0.01	0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0.3,
        fronttexture       = [[plasma0029]],
        length             = 1.3,
        sidetexture        = [[plasma2]],
        size               = 0.75,
        sizegrowth         = 70,
        ttl                = 5,
      },
    },
    muzzlesmoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = true,
        colormap           = [[0 0 0 0.01  0.5 0.5 0.5 0.5     0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 10,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 20,
        particlelifespread = 0,
        particlesize       = [[7 i-0.4]],
        particlesizespread = 1,
        particlespeed      = [[10 i-1]],
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["large_muzzledust"] = {
    muzzleflash = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 0,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = true,
        colormap           = [[0.72 0.61 0.41 1  0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.05, 0]],
        numparticles       = 40,
        particlelife       = 30,
        particlelifespread = 0,
        particlesize       = 1,
        particlesizespread = 2,
        particlespeed      = 6,
        particlespeedspread = 8,
        pos                = [[0, 0, 0]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["xlarge_muzzledust"] = {
    muzzleflash = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 0,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = true,
        colormap           = [[0.72 0.61 0.41 1  0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.05, 0]],
        numparticles       = 40,
        particlelife       = 30,
        particlelifespread = 0,
        particlesize       = 1,
        particlesizespread = 2,
        particlespeed      = 6,
        particlespeedspread = 8,
        pos                = [[0, 0, 0]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["xsmall_muzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        alwaysvisible      = false,
        colormap           = [[1 1 0.5 0.01	1 0.7 0 0.01	0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0.3,
        fronttexture       = [[plasma0029]],
        length             = 0.3,
        sidetexture        = [[plasma2]],
        size               = 0.15,
        sizegrowth         = 70,
        ttl                = 5,
      },
    },
    muzzlesmoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = false,
        colormap           = [[0 0 0 0.01  0.5 0.5 0.5 0.5     0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 10,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 20,
        particlelifespread = 0,
        particlesize       = [[7 i-0.4]],
        particlesizespread = 1,
        particlespeed      = [[10 i-1]],
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["xxlarge_muzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        alwaysvisible      = true,
        colormap           = [[1 1 0.5 0.01	1 0.7 0 0.01	0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0.3,
        fronttexture       = [[plasma0029]],
        length             = 1.75,
        sidetexture        = [[plasma2]],
        size               = 1,
        sizegrowth         = 70,
        ttl                = 5,
      },
    },
    muzzlesmoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = true,
        colormap           = [[0 0 0 0.01  0.5 0.5 0.5 0.5     0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 10,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 20,
        particlelifespread = 0,
        particlesize       = [[7 i-0.4]],
        particlesizespread = 1,
        particlespeed      = [[10 i-1]],
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["mediumlarge_muzzledust"] = {
    muzzleflash = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 0,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = false,
        colormap           = [[0.72 0.61 0.41 1      0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.05, 0]],
        numparticles       = 20,
        particlelife       = 30,
        particlelifespread = 0,
        particlesize       = 1,
        particlesizespread = 2,
        particlespeed      = 6,
        particlespeedspread = 6,
        pos                = [[0, 0, 0]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["medium_muzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        alwaysvisible      = false,
        colormap           = [[1 1 0.5 0.01	1 0.7 0 0.01	0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0.3,
        fronttexture       = [[plasma0029]],
        length             = 0.5,
        sidetexture        = [[plasma2]],
        size               = 0.26,
        sizegrowth         = 70,
        ttl                = 5,
      },
    },
    muzzlesmoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = false,
        colormap           = [[0 0 0 0.01  0.5 0.5 0.5 0.5     0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 10,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 20,
        particlelifespread = 0,
        particlesize       = [[7 i-0.4]],
        particlesizespread = 1,
        particlespeed      = [[10 i-1]],
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["medium_muzzledust"] = {
    muzzleflash = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 0,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = false,
        colormap           = [[0.72 0.61 0.41 1      0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.05, 0]],
        numparticles       = 20,
        particlelife       = 30,
        particlelifespread = 0,
        particlesize       = 1,
        particlesizespread = 2,
        particlespeed      = 6,
        particlespeedspread = 6,
        pos                = [[0, 0, 0]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["xsmall_muzzledust"] = {
    muzzleflash = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 0,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = false,
        colormap           = [[0.72 0.61 0.41 1      0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.05, 0]],
        numparticles       = 20,
        particlelife       = 30,
        particlelifespread = 0,
        particlesize       = 1,
        particlesizespread = 2,
        particlespeed      = 6,
        particlespeedspread = 6,
        pos                = [[0, 0, 0]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["small_muzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        alwaysvisible      = false,
        colormap           = [[1 1 0.5 0.01	1 0.7 0 0.01	0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0.3,
        fronttexture       = [[plasma0029]],
        length             = 0.3,
        sidetexture        = [[plasma2]],
        size               = 0.15,
        sizegrowth         = 70,
        ttl                = 5,
      },
    },
    muzzlesmoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = false,
        colormap           = [[0 0 0 0.01  0.5 0.5 0.5 0.5     0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 10,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 20,
        particlelifespread = 0,
        particlesize       = [[7 i-0.4]],
        particlesizespread = 1,
        particlespeed      = [[10 i-1]],
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["muzzlebrakesmoke"] = {
    muzzlesmoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = false,
        colormap           = [[0 0 0 0.01  0.5 0.5 0.5 0.5     0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 10,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 20,
        particlelifespread = 0,
        particlesize       = [[7 i-0.4]],
        particlesizespread = 1,
        particlespeed      = [[10 i-1]],
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["mediumlarge_muzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        alwaysvisible      = false,
        colormap           = [[1 1 0.5 0.01	1 0.7 0 0.01	0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0.3,
        fronttexture       = [[plasma0029]],
        length             = 0.75,
        sidetexture        = [[plasma2]],
        size               = 0.375,
        sizegrowth         = 70,
        ttl                = 5,
      },
    },
    muzzlesmoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = false,
        colormap           = [[0 0 0 0.01  0.5 0.5 0.5 0.5     0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 10,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 20,
        particlelifespread = 0,
        particlesize       = [[7 i-0.4]],
        particlesizespread = 1,
        particlespeed      = [[10 i-1]],
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["small_muzzledust"] = {
    muzzleflash = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 0,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = false,
        colormap           = [[0.72 0.61 0.41 1      0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.05, 0]],
        numparticles       = 20,
        particlelife       = 30,
        particlelifespread = 0,
        particlesize       = 1,
        particlesizespread = 2,
        particlespeed      = 6,
        particlespeedspread = 6,
        pos                = [[0, 0, 0]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["xxlarge_muzzledust"] = {
    muzzleflash = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 0,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = true,
        colormap           = [[0.72 0.61 0.41 1  0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.05, 0]],
        numparticles       = 40,
        particlelife       = 30,
        particlelifespread = 0,
        particlesize       = 1,
        particlesizespread = 2,
        particlespeed      = 6,
        particlespeedspread = 8,
        pos                = [[0, 0, 0]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

  ["large_muzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        alwaysvisible      = true,
        colormap           = [[1 1 0.5 0.01	1 0.7 0 0.01	0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0.3,
        fronttexture       = [[plasma0029]],
        length             = 1,
        sidetexture        = [[plasma2]],
        size               = 0.5,
        sizegrowth         = 70,
        ttl                = 5,
      },
    },
    muzzlesmoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        alwaysvisible      = true,
        colormap           = [[0 0 0 0.01  0.5 0.5 0.5 0.5     0 0 0 0.01]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 10,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 20,
        particlelifespread = 0,
        particlesize       = [[7 i-0.4]],
        particlesizespread = 1,
        particlespeed      = [[10 i-1]],
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[smokesmall]],
      },
    },
  },

}
