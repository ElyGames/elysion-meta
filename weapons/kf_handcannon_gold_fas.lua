SWEP.Base				= "tfa_gun_base"
SWEP.Category				= "TFA Killing Floor" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer = "Elycorp" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= "Elygames" --Author Tooltip
SWEP.Contact				= "" --Contact Info Tooltip 
SWEP.Purpose				= "" --Contact Info Tooltip
SWEP.Instructions				= "" --Instructions Tooltip
SWEP.Spawnable			= TFA_BASE_VERSION and TFA_BASE_VERSION >= 4 --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable		= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair		= true		-- Draw the crosshair?
SWEP.DrawCrosshairIS	= false --Draw the crosshair in ironsights?
SWEP.PrintName			= "Deagle OR"	 	-- Weapon name (Shown on HUD)
SWEP.Slot = 1				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos			= 54			-- Position in the slot
SWEP.AutoSwitchTo		= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom		= true		-- Auto switch from if you pick up a better weapon
SWEP.Weight				= 35			-- This controls how "good" the weapon is for autopickup.
SWEP.Type		= "Gros deagle"

--[[WEAPON HANDLING]]--
SWEP.Primary.Sound = Sound("KF_Handcannon") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound = Sound("KF_Handcannon") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SoundEchoTable = {
	[0] = Sound("KF_Handcannon"), -- Indoor
	[256] = Sound("KF_Handcannon") -- Outdoor
}

SWEP.Primary.PenetrationMultiplier = 2 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = 65 -- Damage, in standard damage points.
SWEP.Primary.DamageTypeHandled = true --true will handle damagetype in base
SWEP.Primary.DamageType = nil --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.Force = nil --Force value, leave nil to autocalc
SWEP.Primary.Knockback = 0 --Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = false -- Automatic/Semi Auto
SWEP.Primary.RPM = 350 -- This is in Rounds Per Minute / RPM
SWEP.Primary.DryFireDelay = 0.1 --How long you have to wait after firing your last shot before a dryfire animation can play.  Leave nil for full empty attack length.  Can also use SWEP.StatusLength[ ACT_VM_BLABLA ]
SWEP.Primary.BurstDelay = 0.02 -- Delay between bursts, leave nil to autocalculate
SWEP.FiresUnderwater = false
--Miscelaneous Sounds
--SWEP.IronInSound = Sound("FAS2TFA_ADSIN") --Sound to play when ironsighting in?  nil for default
--SWEP.IronOutSound = Sound("FAS2TFA_ADSOUT") --Sound to play when ironsighting out?  nil for default
--Silencing
SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?
-- Selective Fire Stuff
SWEP.SelectiveFire = false --Allow selecting your firemode?
SWEP.DisableBurstFire = false --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?
--Ammo Related
SWEP.Primary.ClipSize = 15 -- This is the size of a clip
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 3 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "Pistol" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DisableChambering = false --Disable round-in-the-chamber
--Recoil Related
SWEP.Primary.KickUp = .65 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = .6 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.12 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = .62 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
--Firing Cone Related
SWEP.Primary.Spread = .0172 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .0055 -- Ironsight accuracy, should be the same for shotguns
--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 2 --How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = .65 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 4 --How much the spread recovers, per second. Example val: 3
--Range Related
SWEP.Primary.Range = -1 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = -1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
--Penetration Related
SWEP.MaxPenetrationCounter = 1 --The maximum number of ricochets.  To prevent stack overflows.
--Misc
SWEP.IronRecoilMultiplier = .65 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.8 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
SWEP.MuzzleFlashEffect = "NMRIH_PISTOL_FLASH"
--Movespeed 
SWEP.MoveSpeed = .975 --Multiply the player's movespeed by this.
SWEP.IronSightsSensitivity = 1.25
SWEP.IronSightsMoveSpeed = .75
--[[VIEWMODEL]]--
SWEP.ViewModel			= "models/weapons/KF/v_goldcannon.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 60		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= false		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = true --Use gmod c_arms system.
SWEP.VMPos = Vector(-1.15, .5, .1) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0, 0, 0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false --Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 1	
SWEP.CenteredPos = nil --The viewmodel positional offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.CenteredAng = nil --The viewmodel angular offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.Bodygroups_V = {}
--[[WORLDMODEL]]--
SWEP.WorldModel			= "models/weapons/fas2wm/pistols/w_p226.mdl" --Wmodel path
SWEP.Bodygroups_W = {}
SWEP.HoldType = "revolver" -- This is how others view you carrying the weapon. Options include: 
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Offset = {
	Scale = 1
} --Procedural world model animation, defaulted for CS:S purposes.
SWEP.ThirdPersonReloadDisable = false --Disable third person reload?  True disables.

SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(.005,-5,.025) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
--SWEP.BlowbackBoneMods = {["Magazine001"] = { scale = Vector(1, 1, 1), pos = Vector(-26, 0, 0), angle = Angle(0, 0, 0)  },} --Viewmodel bone mods via SWEP Creation Kit
--[[SPRINTING]]--
SWEP.RunSightsPos = Vector(-1, -12, -8)
SWEP.RunSightsAng = Vector(50, 0, -8)	
SWEP.SafetyPos = Vector(-1, -2, -1)
SWEP.SafetyAng = Vector(-17.554, 10.507, -5.734)	
--[[IRONSIGHTS]]--
SWEP.data = {}
SWEP.data.ironsights = 1 --Enable Ironsights
SWEP.Secondary.IronFOV = 75 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(-4, -3, 2)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.IronSightsPos_RDS = Vector(-3.22, -4.5, 1.25)
SWEP.IronSightsAng_RDS = Vector(0, .05, 0)

--[[INSPECTION]]--
SWEP.InspectPos = Vector(9, -8, -2.5)
SWEP.InspectAng = Vector(24, 39, 16)
--[[VIEWMODEL ANIMATION HANDLING]]--
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_LUA --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0 --Start an idle this far early into the end of another animation
SWEP.SprintBobMult = 1

SWEP.FireAnimation = {
	["shoot"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_PRIMARYATTACK_1, --Number for act, String/Number for sequence
		["value_last"] = ACT_VM_PRIMARYATTACK_2,
		["value_empty"] = ACT_VM_PRIMARYATTACK_3
	} --What do you think
}
--Shell eject override
SWEP.LuaShellEject = false --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --= 0.0165 --The delay to actually eject things
SWEP.LuaShellModel = "models/weapons/fas2shells/357sig.mdl"
SWEP.ShellScale = .7
--[[EVENT TABLE]]--

--[[ATTACHMENTS]]--



SWEP.MuzzleAttachmentSilenced = 1
SWEP.MuzzleAttachment			= "muzzle" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "ejector" 		-- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleAttachmentSilenced   = 2

SWEP.AttachmentDependencies = {}
SWEP.AttachmentExclusions = {}

SWEP.SequenceRateOverride = {
["reload"] = 1.2,
[ACT_VM_PRIMARYATTACK] = 1.1,
}

--SWEP.SequenceLengthOverride = {
--["reload_empty_nomen"] = 2.3,
--["reload_empty"] = 2.45,}

SWEP.StatusLengthOverride = {
["reload"] = 1.77,
["reload_empty"] = 1.2,
["reload_empty_nomen"] = 1.49,
}

DEFINE_BASECLASS(SWEP.Base)