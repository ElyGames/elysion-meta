SWEP.Base = "tfa_gun_base"
SWEP.Category = "TFA AVA" --The category.  Please, just choose something generic or something I"ve already done if you plan on only doing like one swep..
SWEP.Manufacturer = "Zastava" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.Slot = 1
SWEP.PrintName = "Škorpion vz. 61"
SWEP.ViewModel = "models/weapons/tfa_ava/c_vz61.mdl" --Viewmodel path
SWEP.ViewModelFOV = 56
SWEP.UseHands = true
SWEP.WorldModel = "models/weapons/tfa_ava/w_vz61.mdl" --Viewmodel path
SWEP.DefaultHoldType = "pistol"
SWEP.HoldType = "pistol"
SWEP.Scoped = false
SWEP.Shotgun = false
SWEP.ShellTime = 0.75
SWEP.Revolver = false
SWEP.DisableChambering = false
SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultClip = 50
SWEP.Primary.Sound = "TFA_AVA_VZ61.1"
SWEP.Primary.Ammo = "pistol"
SWEP.Primary.Automatic = true
SWEP.SelectiveFire = true
SWEP.FireModes = {"Auto", "Single"} --Override fire modes here ( Auto, XBurst, 3Burst, Single )
SWEP.Primary.RPM = 850
SWEP.Primary.Damage = 33
SWEP.Primary.HullSize = 0
SWEP.Primary.NumShots = 1
SWEP.Primary.Spread = .02 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .0075 -- Ironsight accuracy, should be the same for shotguns
SWEP.Primary.KickUp = 0.3 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.3 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.1 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.3 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
SWEP.Primary.SpreadMultiplierMax = 4 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 0.8 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 8 --How much the spread recovers, per second.
SWEP.Secondary.IronFOV = 80 --Ironsights FOV (90 = same)
SWEP.BoltAction = false --Un-sight after shooting?
SWEP.BoltTimerOffset = 0.0 --How long do we remain in ironsights after shooting?
SWEP.IronSightsPos = Vector(-9.8, -12.462, 3.579)
SWEP.IronSightsAng = Vector(1.1, 0.05, 0)
SWEP.RunSightsPos = Vector(0.898, -17, -10.379)
SWEP.RunSightsAng = Vector(60, 0, 0)
SWEP.InspectionPos = Vector(11.112, -13.193, 1.041)
SWEP.InspectionAng = Vector(40, 38.693, 40)
local meters = 50
local metersmax = 150
SWEP.Primary.Range = meters * 52.4935 * (metersmax / meters) -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = metersmax / meters -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
SWEP.ViewModelBoneMods = nil
SWEP.BlowbackEnabled = true
SWEP.BlowbackVector = Vector(0.00, -3.5, 0.05)
SWEP.Blowback_PistolMode = true

SWEP.BlowbackBoneMods = {
        ["Scorpion_Bone05"] = {
                scale = Vector(1, 1, 1),
                pos = Vector(0, 0, -2),
                angle = Angle(0, 0, 0)
        }
}

SWEP.MoveSpeed = 0.925
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.9
SWEP.LuaShellEject = true
SWEP.LuaShellEjectDelay = 0
SWEP.LuaShellEffect = "ShellEject"

SWEP.EventTable = {
        [ACT_VM_DRAW] = {
                {
                        ["time"] = 1 / 30,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_VZ61.Draw")
                },
                {
                        ["time"] = 15 / 30 - 0.2,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_VZ61.Bolt")
                }
        },
        [ACT_VM_RELOAD] = {
                {
                        ["time"] = 10 / 30 - 0.175,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_VZ61.MagOut")
                },
                {
                        ["time"] = 33 / 30 - 0.05,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_VZ61.MagIn")
                },
                {
                        ["time"] = 62 / 30 - 0.2,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_VZ61.Bolt")
                }
        }
}

SWEP.VElements = {
        ["eotech"] = {
                type = "Model",
                model = "models/wystan/attachments_tfa/eotech557sight.mdl",
                bone = "Scorpion_Bone03",
                rel = "",
                pos = Vector(1.853, -1.2, -0.8),
                angle = Angle(0, 0, -90),
                size = Vector(1, 1, 1),
                color = Color(255, 255, 255, 255),
                surpresslightning = false,
                material = "",
                skin = 0,
                bodygroup = {},
                active = false
        },
        ["acog"] = {
                type = "Model",
                model = "models/wystan/attachments_tfa/acog.mdl",
                bone = "Scorpion_Bone03",
                rel = "",
                pos = Vector(4, -1.2, -0.9),
                angle = Angle(0, 0, -90),
                size = Vector(1, 1, 1),
                color = Color(255, 255, 255, 255),
                surpresslightning = false,
                material = "",
                skin = 0,
                bodygroup = {},
                active = false
        },
        ["rtcircle_acog"] = {
                type = "Model",
                model = "models/rtcircle.mdl",
                bone = "Scorpion_Bone03",
                rel = "",
                pos = Vector(0, -2.631, -0.075),
                angle = Angle(0, 180, 90),
                size = Vector(0.238, 0.238, 0.238),
                color = Color(255, 255, 255, 255),
                surpresslightning = false,
                material = "!tfa_rtmaterial",
                skin = 0,
                bodygroup = {},
                active = false
        }
}

SWEP.WElements = {
        ["eotech"] = {
                type = "Model",
                model = "models/wystan/attachments_tfa/eotech557sight.mdl",
                bone = "ValveBiped.Bip01_R_Hand",
                rel = "",
                pos = Vector(5.383, 2.5, -5.824),
                angle = Angle(0, 0, 180),
                size = Vector(1, 1, 1),
                color = Color(255, 255, 255, 255),
                surpresslightning = false,
                material = "",
                skin = 0,
                bodygroup = {},
                active = false
        },
        ["acog"] = {
                type = "Model",
                model = "models/wystan/attachments_tfa/acog.mdl",
                bone = "ValveBiped.Bip01_R_Hand",
                rel = "",
                pos = Vector(5.238, 2.5, -5.384),
                angle = Angle(0, 0, 180),
                size = Vector(1, 1, 1),
                color = Color(255, 255, 255, 255),
                surpresslightning = false,
                material = "",
                skin = 0,
                bodygroup = {},
                active = false
        }
}


SWEP.Attachments = {
        [1] = {
                header = "Ammo",
                offset = {200, 0},
                atts = {"si_eotech", "si_acog"}
        },
        [2] = {
                header = "Ammo",
                offset = {100, 100},
                atts = {"am_match"}
        }
}


--[MDL_ATTACHMENT] = = { header = "Sight", offset = { 0, 0 }, atts = { } }
--Sorry for copying your syntax, Spy, but it makes it easier on the users and you did an excellent job.  The code's all mine anyways.

SWEP.IronSightsPos_EOTech = Vector(-9.848, -7.868, 2.62)
SWEP.IronSightsAng_EOTech = Vector(0, 0, 0.24)
SWEP.IronSightsPos_ACOG = Vector(-9.75, -10, 2.3785)
SWEP.IronSightsAng_ACOG = Vector(0, 0, 0.24)