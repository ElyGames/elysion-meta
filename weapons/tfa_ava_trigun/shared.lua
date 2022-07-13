SWEP.Base = "tfa_gun_base"
SWEP.Category = "TFA AVA" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer = "Madhouse" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.Slot = 1

SWEP.PrintName = "Trigun"

SWEP.ViewModel = "models/weapons/tfa_ava/c_trigun.mdl" --Viewmodel path
SWEP.ViewModelFOV = 56
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/tfa_ava/w_trigun.mdl" --Viewmodel path
SWEP.HoldType = "revolver"

SWEP.Scoped = false

SWEP.Shotgun = false
SWEP.ShellTime = 0.75

SWEP.Revolver = true

SWEP.DisableChambering = true
SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 24

SWEP.Primary.Sound = "TFA_AVA_TRIGUN.1"
SWEP.Primary.Ammo = "357"
SWEP.Primary.Automatic = false
SWEP.Primary.RPM = 360
SWEP.Primary.Damage = 80
SWEP.Primary.NumShots = 1
SWEP.Primary.Spread		= .0125					--This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .005	-- Ironsight accuracy, should be the same for shotguns

SWEP.Primary.KickUp			= 1.4					-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 1.0					-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.5					-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.4 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

SWEP.Primary.SpreadMultiplierMax = 6 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 2 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 4 --How much the spread recovers, per second.

SWEP.Secondary.IronFOV = 80 --Ironsights FOV (90 = same)
SWEP.BoltAction = false --Un-sight after shooting?
SWEP.BoltTimerOffset = 0.0 --How long do we remain in ironsights after shooting?

SWEP.IronSightsPos = Vector(-11.2, -11.507, 2.68)
SWEP.IronSightsAng = Vector(0.254, -4.993, -4.286)

SWEP.RunSightsPos = Vector(1.3, 0, 1.406)
SWEP.RunSightsAng = Vector(-17.813, 3.454, -6.294)

SWEP.InspectionPos = Vector(11.112, -13.193, 1.041)
SWEP.InspectionAng = Vector(40, 38.693, 40)

SWEP.Primary.Range = 16*164.042*2.5 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 0.5 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.ViewModelBoneMods = nil

SWEP.BlowbackEnabled = true
SWEP.BlowbackVector = Vector(0.5,-4.5,1)
SWEP.Blowback_PistolMode = true
SWEP.BlowbackBoneMods = nil

SWEP.MoveSpeed = 0.925
SWEP.IronSightsMoveSpeed  = SWEP.MoveSpeed * 0.8

SWEP.LuaShellEject = true
SWEP.LuaShellEjectDelay = 0
SWEP.LuaShellEffect = "tfa_muzzle_revolver"


SWEP.EventTable = {
        [ACT_VM_DRAW] = {
                {
                        ['time'] = 1 / 30,
                        ['type'] = "sound",
                        ['value'] = Sound("TFA_AVA_TRIGUN.Foley")
                }
        },
        [ACT_VM_RELOAD] = {
                {
                        ['time'] = 0 / 30,
                        ['type'] = "sound",
                        ['value'] = Sound("TFA_AVA_TRIGUN.OpenClose")
                },
                {
                        ['time'] = 85 / 30 - 0.77,
                        ['type'] = "sound",
                        ['value'] = Sound("TFA_AVA_TRIGUN.Spin")
                }
        }
}