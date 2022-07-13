SWEP.Base				= "tfa_gun_base"
SWEP.Category				= "TFA Killing Floor" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer = "Elycorp" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= "Elygames" --Author Tooltip
SWEP.Contact				= "" --Contact Info Tooltip
SWEP.Purpose				= "" --Contact Info Tooltip
SWEP.Instructions				= "" --Instructions Tooltip
SWEP.Spawnable			= TFA_BASE_VERSION and TFA_BASE_VERSION >= 4 --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable			= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair			= true		-- Draw the crosshair?
SWEP.DrawCrosshairIS = false --Draw the crosshair in ironsights?
SWEP.PrintName				= "HSG-1 Shotgun"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 2				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 0			-- Position in the slot
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.Weight				= 50			-- This controls how "good" the weapon is for autopickup.
SWEP.Type = "Pack OR Original"
--[[WEAPON HANDLING]]-- 
SWEP.Primary.Sound = Sound("KF_HSG") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound = Sound("KF_HSG")-- This is the sound of the weapon, when you shoot.
SWEP.Primary.SoundEchoTable = {
	[0] = Sound("KF_HSG"), -- Indoor
	[256] = Sound("KF_HSG") -- Outdoor
} 

SWEP.Primary.PenetrationMultiplier = 0 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = 65 -- Damage, in standard damage points.
SWEP.Primary.DamageTypeHandled = true --true will handle damagetype in base
SWEP.Primary.DamageType = nil --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.Force = nil --Force value, leave nil to autocalc
SWEP.Primary.Knockback = nil --Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots = 5 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = false -- Automatic/Semi Auto
SWEP.Primary.RPM = 350 -- This is in Rounds Per Minute / RPM
SWEP.Primary.BurstDelay = nil -- Delay between bursts, leave nil to autocalculate
SWEP.Primary.DryFireDelay = 0.25
SWEP.FiresUnderwater = false
SWEP.C_CanChamber = true
--Miscelaneous Sounds
SWEP.IronInSound = nil --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = nil --Sound to play when ironsighting out?  nil for default
--Silencing
SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?
-- Selective Fire Stuff 
SWEP.SelectiveFire = true --Allow selecting your firemode?
SWEP.DisableBurstFire = true --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?
SWEP.DefaultFireMode = "" --Default to auto or whatev
SWEP.FireModeName = nil --Change to a text value to override it
--Ammo Related
SWEP.Primary.ClipSize = 12 -- This is the size of a clip
SWEP.Primary.DefaultClip = 36 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Round = nil
SWEP.Primary.Ammo = "buckshot" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DisableChambering = true --Disable round-in-the-chamber
--Recoil Related
SWEP.Primary.KickUp = 7.5 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 2 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = .3 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.75 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
--Firing Cone Related
SWEP.Primary.Spread = 0.05 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = 0.002 -- Ironsight accuracy, should be the same for shotguns
--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 3.5 --How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = 0.3 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 0.4 --How much the spread recovers, per second. Example val: 3
--Range Related
SWEP.Range = -1 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
--Penetration Related
SWEP.MaxPenetrationCounter = 1 --The maximum number of ricochets.  To prevent stack overflows.
--Misc
SWEP.IronRecoilMultiplier = 0.7 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.35 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
SWEP.MuzzleFlashEffect = "muzzleflash_shotgun"


SWEP.TracerCount        = 3     -- 0 disables, otherwise, 1 in X chance
SWEP.SprintBobMult = 1 
--Movespeed
SWEP.MoveSpeed = 1 --Multiply the player's movespeed by this.
SWEP.IronSightsSensitivity = 1.45
SWEP.IronSightsMoveSpeed = .55
--[[VIEWMODEL]]--
SWEP.ViewModel			= "models/weapons/v_kf_shotgun_hsg.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 58		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= false		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = true --Use gmod c_arms system.
SWEP.VMPos = Vector(-.5,-2,.2) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0,0,0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
--The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.


SWEP.VMPos_Additive = false --Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse
SWEP.CenteredPos = nil --The viewmodel positional offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.CenteredAng = nil --The viewmodel angular offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.Bodygroups_V = { 
 
}
--[[WORLDMODEL]]--
SWEP.WorldModel			= "models/weapons/w_shotgun.mdl" -- Weapon world model path
SWEP.Offset = {
		Pos = {
		Up = -0.5,
		Right = 0.5,
		Forward = 3.5
	},
	Ang = {
		Up = -1,
		Right = 15,
		Forward = 178 
	},
	Scale = 1
}
SWEP.Bodygroups_W = {}
SWEP.HoldType = "shotgun" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
--[[SHOTGUN CODE]]-- 
SWEP.Shotgun = true --Enable shotgun style reloading.
---SWEP.ShotgunEmptyAnim = true --Enable insertion of a shell directly into the chamber on empty reload?
--SWEP.ShellTime = 0.35 -- For shotguns, how long it takes to insert a shell.
SWEP.PumpAction = {
["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
["value"] = ACT_SHOTGUN_PUMP, --Number for act, String/Number for sequence
["value_is"] = ACT_VM_PULLBACK
}
--[[SPRINTING]]--
SWEP.RunSightsPos = Vector(4.221, -6, -2)
SWEP.RunSightsAng = Vector(-17.554, 46.507, -25.734)	
SWEP.SafetyPos = Vector(4.221, -6, -2)
SWEP.SafetyAng = Vector(-17.554, 46.507, -25.734)
--[[IRONSIGHTS]]--
SWEP.data = {}
SWEP.data.ironsights = 1 --Enable Ironsights
SWEP.Secondary.IronFOV = 72 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(-6, -6, 2)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.IronSightsPos_Kobra = Vector(-2.7325, -7.5, .95)
SWEP.IronSightsAng_Kobra = Vector(0, 0, 0)

SWEP.IronSightsPos_EOTech = Vector(-2.7325, -7, .75)
SWEP.IronSightsAng_EOTech = Vector(0, 0, 0)

SWEP.IronSightsPos_RDS = Vector(-2.731, -7, .695)
SWEP.IronSightsAng_RDS = Vector(0, 0, 0)

SWEP.IronSightsPos_2XRDS = Vector(-2.728, -7, .69)
SWEP.IronSightsAng_2XRDS = Vector(0, 0, 0)

SWEP.IronSightsPos_C79 = Vector(-2.7285, -7, .666)
SWEP.IronSightsAng_C79 = Vector(0, 0, 0)

SWEP.IronSightsPos_PO4X = Vector(-2.6765, -7, 1.046)
SWEP.IronSightsAng_PO4X = Vector(0, 0, 0)

SWEP.IronSightsPos_Mosin = Vector(-2.711, -6.5, 1.071)
SWEP.IronSightsAng_Mosin = Vector(0, 0, 0)

SWEP.IronSightsPos_MX4 = Vector(-2.74, -6.5, .851)
SWEP.IronSightsAng_MX4 = Vector(0, 0, 0)
--[[INSPECTION]]--
SWEP.InspectPos = Vector(8, -7, -2)
SWEP.InspectAng = Vector(24, 32, 16)
--[[HOLDTYPES]]--
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0 --Start an idle this far early into the end of another animation
SWEP.IronSightHoldTypeOverride = "" --This variable overrides the ironsights holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
SWEP.SprintHoldTypeOverride = "" --This variable overrides the sprint holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
--Shell eject override
SWEP.LuaShellEject = false --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --= 0 --The delay to actually eject things
SWEP.LuaShellModel = "models/weapons/fas2shells/23mm.mdl"
SWEP.LuaShellEffect = "ShellEject"
SWEP.ShellScale = .85 -- 2.5
--[[EVENT TABLE]]-- 

--[[RENDER TARGET]]--
SWEP.RTMaterialOverride = nil -- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.
SWEP.RTOpaque = false -- Do you want your render target to be opaque?
SWEP.RTCode = nil--function(self) return end --This is the function to draw onto your rendertarget
--[[ATTACHMENTS]]--


SWEP.MuzzleAttachmentSilenced = 1
SWEP.MuzzleAttachment			= "muzzle" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "ejector" 		-- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleAttachmentSilenced   = 2

SWEP.AttachmentDependencies = {}
--SWEP.AttachmentExclusions = {["fas2tfa_ks23_supp"] = {"fas2tfa_ks23_7rnd"},}
DEFINE_BASECLASS(SWEP.Base)