SWEP.Base = "tfa_gun_base"
SWEP.Category = "TFA AVA" --The category.  Please, just choose something generic or something I"ve already done if you plan on only doing like one swep..
SWEP.Manufacturer = "Luger" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.Slot = 1

SWEP.PrintName = "Luger P-08 [Stock]"

SWEP.ViewModel = "models/weapons/tfa_ava/c_luger_p08.mdl" --Viewmodel path
SWEP.ViewModelFOV = 56
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/tfa_ava/w_luger_p08.mdl" --Viewmodel path
SWEP.HoldType = "pistol"

SWEP.Scoped = false

SWEP.Shotgun = false
SWEP.ShellTime = 0.75

SWEP.Revolver = false

SWEP.DisableChambering = false
SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = 48

SWEP.Primary.Sound = "TFA_AVA_LUGER.1"
SWEP.Primary.Ammo = "pistol"
SWEP.Primary.Automatic = false
SWEP.SelectiveFire = false
SWEP.FireModes = nil --Override fire modes here ( Auto, XBurst, 3Burst, Single )
SWEP.Primary.RPM = 444
SWEP.Primary.Damage = 28
SWEP.Primary.HullSize = 0
SWEP.Primary.NumShots = 1
SWEP.Primary.Spread		= .01					--This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .0025	-- Ironsight accuracy, should be the same for shotguns

SWEP.Primary.KickUp			= 0.3					-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 0.3					-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.1					-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.3 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

SWEP.Primary.SpreadMultiplierMax = 4 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 1.25 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 4.5 --How much the spread recovers, per second.

SWEP.Secondary.IronFOV = 80 --Ironsights FOV (90 = same)
SWEP.BoltAction = false --Un-sight after shooting?
SWEP.BoltTimerOffset = 0.0 --How long do we remain in ironsights after shooting?

SWEP.IronSightsPos = Vector(-9.221, -7.501, 3.538)
SWEP.IronSightsAng = Vector(0.633, 0.071, 0)

SWEP.RunSightsPos = Vector(0.898, -17, -10.379)
SWEP.RunSightsAng = Vector(60, 0, 0)

SWEP.InspectionPos = Vector(11.112, -13.193, 1.041)
SWEP.InspectionAng = Vector(40, 38.693, 40)


local meters = 100
local metersmax = 300

SWEP.Primary.Range = meters * 52.4935 * ( metersmax / meters ) -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = metersmax / meters -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.ViewModelBoneMods = {
        ["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-3,5,0) }
}
SWEP.BlowbackEnabled = false
SWEP.BlowbackVector = Vector(0.0,-3.5,0.1)
SWEP.Blowback_PistolMode = true
SWEP.BlowbackBoneMods = {
        ["Bone01"] = { scale = Vector(1, 1, 1), pos = Vector( 0, 5, 0), angle = Angle(0, 0, 0) }
}

SWEP.MoveSpeed = 1
SWEP.IronSightsMoveSpeed  = SWEP.MoveSpeed * 0.9

SWEP.LuaShellEject = true
SWEP.LuaShellEjectDelay = 0
SWEP.LuaShellEffect = "ShellEject"

SWEP.EventTable = {
        [ACT_VM_DRAW] = {
                {
                        ["time"] = 1 / 30,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_LUGER.Draw")
                }
        },
        [ACT_VM_RELOAD] = {
                {
                        ["time"] = 18 / 30 - 0.05,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_LUGER.MagOut")
                },
                {
                        ["time"] = 48 / 30 - 0.3,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_LUGER.MagIn")
                },
                {
                        ["time"] = 74 / 30 - 0.2,
                        ["type"] = "sound",
                        ["value"] = Sound("TFA_AVA_LUGER.Bolt")
                }
        }
}