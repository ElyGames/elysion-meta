SWEP.Base = "tfa_gun_base"
SWEP.Category = "TFA AVA" --The category.  Please, just choose something generic or something I"ve already done if you plan on only doing like one swep..
SWEP.Manufacturer = "Solothurn" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.Slot = 1
SWEP.PrintName = "Tuma MTE-224 VA"
SWEP.ViewModel = "models/weapons/tfa_ava/c_tuma.mdl" --Viewmodel path
SWEP.ViewModelFOV = 56
SWEP.UseHands = true
SWEP.WorldModel = "models/weapons/tfa_ava/w_tuma.mdl" --Viewmodel path
SWEP.DefaultHoldType = "pistol"
SWEP.HoldType = "pistol"
SWEP.Scoped = false
SWEP.Shotgun = false
SWEP.ShellTime = 0.75
SWEP.Revolver = false
SWEP.DisableChambering = false
SWEP.Primary.ClipSize = 16
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 4
SWEP.Primary.Sound = "TFA_AVA_TUMA.1"
SWEP.Primary.Ammo = "pistol"
SWEP.Primary.Automatic = true
SWEP.SelectiveFire = true
SWEP.FireModes = {"Auto", "Single"} --Override fire modes here ( Auto, XBurst, 3Burst, Single )
SWEP.Primary.RPM = 800
SWEP.Primary.Damage = 30
SWEP.Primary.HullSize = 0
SWEP.Primary.NumShots = 1
SWEP.Primary.Spread = .02 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns
SWEP.Primary.KickUp = 0.3 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.3 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.2 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.3 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
SWEP.Primary.SpreadMultiplierMax = 4 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 0.8 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 8 --How much the spread recovers, per second.
SWEP.Secondary.IronFOV = 80 --Ironsights FOV (90 = same)
SWEP.BoltAction = false --Un-sight after shooting?
SWEP.BoltTimerOffset = 0.0 --How long do we remain in ironsights after shooting?
SWEP.IronSightsPos = Vector(-9.061, 0, 2.759)
SWEP.IronSightsAng = Vector(0.532, -0.03, 0)
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
        ["Bone01"] = { scale = Vector(1, 1, 1), pos = Vector(-0.541, 2.089, -0.08), angle = Angle(0, 0, 0) }
}
SWEP.MoveSpeed = 0.95
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.9
SWEP.LuaShellEject = true
SWEP.LuaShellEjectDelay = 0
SWEP.LuaShellEffect = "ShellEject"

SWEP.EventTable = {
        [ACT_VM_DRAW] = {
                {
                        ["time"] = 1 / 30,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_TUMA.Draw")
                },
                {
                        ["time"] = 16 / 30 - 0.235,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_TUMA.Bolt")
                }
        },
        [ACT_VM_RELOAD] = {
                {
                        ["time"] = 9 / 30 - 0.07,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_TUMA.MagOut")
                },
                {
                        ["time"] = 57 / 30 - 0.57,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_TUMA.MagIn")
                },
                {
                        ["time"] = 71 / 30 - 0.1,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_TUMA.BoltSlap")
                }
        }
}

SWEP.VElements = {
        ["aku12_pbs4"] = { type = "Model", model = "models/robotnik_attachments/robotnik_pistolsup.mdl", bone = "WPBone01", rel = "", pos = Vector(8.494, 14.114, 2.437), angle = Angle(6.328, -73.348, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false }
}
SWEP.WElements = {
        ["aku12_pbs4"] = { type = "Model", model = "models/robotnik_attachments/robotnik_pistolsup.mdl", bone = "WPBone01", rel = "", pos = Vector(8.494, 14.114, 2.437), angle = Angle(6.328, -73.348, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false }
}

SWEP.Attachments = {
        [1] = {
                offset = {50, 100},
                atts = {"aku12_pbs4"}
        }
}