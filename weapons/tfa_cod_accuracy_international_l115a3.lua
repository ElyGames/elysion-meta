SWEP.Base					= ( TFA and DVL ) and "tfa_devl_base" or "tfa_gun_base"                  -- Weapon Base
SWEP.Category               = ( TFA and TFA.Yankys_Custom_Weapon_Pack_Categories ) and "[TFA] [AT] [ Sniper Rifles ]" or "TFA Customs"   
SWEP.PrintName				= ( TFA and TFA.Yankys_Custom_Weapon_Pack ) and "AI L115A3" or "L115A3"   		           
SWEP.Manufacturer           = "Accuracy International"        -- Gun Manufactrer (e.g. Hoeckler and Koch )          
SWEP.Type                   = ( TFA and TFA.Yankys_Custom_Weapon_Pack ) and "Type: Bolt-Action Sniper Rifle - Caliber: .338 Lapua Magnum - Muzzle Velocity: 936 m/s" or "Bolt-Action Sniper Rifle"
SWEP.Purpose				= "A .338 Lapua Magnum Sniper Rifle."   
SWEP.Instructions		    = ""    

SWEP.Author				    = "XxYanKy700xX"    
SWEP.Contact				= "https://steamcommunity.com/profiles/76561198296543672/" 
 
SWEP.Spawnable				= true 
SWEP.AdminSpawnable			= true                            -- Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair			= true		                      -- Draw the crosshair?
SWEP.DrawCrosshairIS		= false                           -- Draw the crosshair in ironsights?

SWEP.Slot				    = 3				                  -- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 73			                  -- Position in the slot
SWEP.AutoSwitchTo			= true		                      -- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		                      -- Auto switch from if you pick up a better weapon
SWEP.Weight				    = 30			                  -- This controls how "good" the weapon is for autopickup.

--[[WEAPON HANDLING]]--

SWEP.Primary.Sound          = Sound("TFA_CUSTOMS.L115A3.Fire")            -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound  = Sound("TFA_CUSTOMS.L115A3.Fire_Suppressed") -- This is the sound of the weapon, when silenced.

SWEP.Primary.SoundEchoTable = {
	[0]   = Sound("TFA_MWR_SNI.TailInside"),   
	[256] = Sound("TFA_MWR_M40A3.TailOutside") 
}

SWEP.Primary.Damage                = ( TFA and TFA.Yankys_Custom_Weapon_Pack ) and 180 * TFA.Yankys_Custom_Weapon_Pack.DamageMultiplier or 165
SWEP.Primary.DamageTypeHandled     = true                     -- true will handle damagetype in base
SWEP.Primary.DamageType            = nil                      -- See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.PenetrationMultiplier = 0.825                    -- Change the amount of something this gun can penetrate through
SWEP.Primary.Velocity              = 936                      -- Bullet Velocity in m/s
SWEP.Primary.NumShots              = 1                        -- The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.

SWEP.Primary.Automatic             = false                    -- Automatic/Semi Auto
SWEP.Primary.RPM                   = 52                       -- This is in Rounds Per Minute / RPM

SWEP.Primary.Force                 = nil                      -- Force value, leave nil to autocalc
SWEP.Primary.Knockback             = nil                      -- Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize              = 0                        -- Big bullets, increase this value.  They increase the hull size of the hitscan bullet.

SWEP.FiresUnderwater               = false

-- Miscelaneous Sounds
SWEP.IronInSound                 = nil                        -- Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound                = nil                        -- Sound to play when ironsighting out?  nil for default

-- Selective Fire Stuff
SWEP.SelectiveFire               = false                      -- Allow selecting your firemode?
SWEP.DisableBurstFire            = false                      -- Only auto/single?
SWEP.OnlyBurstFire               = false                      -- No auto, only burst/single?
SWEP.DefaultFireMode             = ""                         -- Default to auto or whatev
SWEP.FireModeName                = "BOLT-ACTION"              -- Change to a text value to override it

-- Ammo Related
SWEP.Primary.ClipSize            = 5                          -- This is the size of a clip
SWEP.Primary.DefaultClip         = SWEP.Primary.ClipSize * 13 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo                = "SniperPenetratedRound"    -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption     = 1                          -- Ammo consumed per shot

-- Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DisableChambering           = false                      -- Disable round-in-the-chamber
SWEP.CanJam                      = true

-- Recoil Related 
SWEP.Primary.KickUp              = 0.63                       -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown            = 0.70                       -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal      = 0.32                       -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor  = 0.70                       -- Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

-- Firing Cone Related
SWEP.Primary.Spread              = .020                       -- This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy        = .00050                     -- Ironsight accuracy, should be the same for shotguns

-- Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 6.25                       -- How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement     = 5.3                        -- What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery      = 3.5                        -- How much the spread recovers, per second. Example val: 3

-- Range Related
SWEP.Primary.Range               = 1.7 * (3280.84 * 16)       -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff        = 0.80                       -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.Primary.RangeFalloffLUT = {
	bezier     = true,
	
	range_func = "quintic",
	units      = "meters",
	
	lut = {
		{range = 0, damage = 1},
		{range = 500, damage = 1},
		{range = 1000, damage = 1},
		{range = 1500, damage = 1},
		{range = 1700, damage = 1},
		{range = 1700, damage = 1},
		{range = 1700, damage = 1},
		{range = 2475, damage = 0.8},
		{range = 3000, damage = 0.7},
	}
}

-- Penetration Related
SWEP.MaxPenetrationCounter       = 1                          -- The maximum number of ricochets.  To prevent stack overflows.

-- Misc
SWEP.IronRecoilMultiplier        = 0.75                       -- Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier    = 0.5                        -- Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate

-- Movespeed
SWEP.MoveSpeed                   = 0.88                       -- Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed         = 0.82                       -- Multiply the player's movespeed by this when sighting.

--[[EFFECTS]]--

-- Attachments
SWEP.MuzzleAttachment			 = "muzzle" 	              -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			 = "shell" 		              -- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleFlashEnabled          = true                       -- Enable muzzle flash
SWEP.MuzzleAttachmentRaw         = nil -- 1                   -- This will override whatever string you gave.  This is the raw attachment number.  This is overridden or created when a gun makes a muzzle event.
SWEP.AutoDetectMuzzleAttachment  = false                      -- For multi-barrel weapons, detect the proper attachment?
SWEP.MuzzleFlashEffect           = ( TFA and TFA.YanKys_Realistic_Muzzleflashes ) and "tfa_muzzleflash_awm" or "tfa_muzzleflash_shotgun"
SWEP.SmokeParticle               = nil                        -- Smoke particle (ID within the PCF), defaults to something else based on holdtype; "" to disable

-- Shell eject override
SWEP.LuaShellEject               = true                       -- Enable shell ejection through lua?
SWEP.LuaShellEjectDelay          = 0.6 -- 0.7                 -- The delay to actually eject things
SWEP.LuaShellEffect              = "RifleShellEject"          -- The effect used for shell ejection; Defaults to that used for blowback

-- Tracer Stuff
SWEP.TracerName 		         = nil 	                      -- Change to a string of your tracer name.  Can be custom. There is a nice example at https://github.com/garrynewman/garrysmod/blob/master/garrysmod/gamemodes/base/entities/effects/tooltracer.lua
SWEP.TracerCount 		         = 1 	                      -- 0 disables, otherwise, 1 in X chance

--[[VIEWMODEL]]--

SWEP.ViewModel			   = "models/weapons/c_cod_snip_l115a3.mdl" 
SWEP.ViewModelFOV	       = 70		                          -- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip	       = false		                      -- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands              = true                             -- Use gmod c_arms system.

SWEP.VMPos                 = ( TFA and TFA.Yankys_Custom_Weapon_Pack ) and Vector(-1.65, 0, 0.42) or Vector(-1.2, 0, 0.1)         
SWEP.VMAng                 = Vector(1, 0.3, 0)                -- The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.

SWEP.VMPos_Additive        = false                            -- Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse
SWEP.CenteredPos           = nil                              -- The viewmodel positional offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.CenteredAng           = nil                              -- The viewmodel angular offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.Bodygroups_V          = nil 

--[[VIEWMODEL ANIMATION HANDLING]]--

SWEP.AllowViewAttachment   = true                             -- Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.

--[[ANIMATION]]--

SWEP.StatusLengthOverride  = {
	["reload"]             = 75 / 30,
	["reload_empty"]       = 132 / 30,
	["ext_reload"]         = 75 / 30,
	["ext_reload_empty"]   = 132 / 30,
} 

SWEP.SequenceRateOverride  = {
    [ACT_VM_DRAW_DEPLOYED] = 1,
    [ACT_VM_DEPLOY_8]      = 1,
    [ACT_VM_DEPLOY_7]      = 1, 
    [ACT_VM_RELOAD]        = 1,                               -- Remember Decrease the QC Reload Ext to -5%
    [ACT_VM_RELOAD_EMPTY]  = 1,                               -- Remember Decrease the QC Reload Empty Ext to -5%
} -- Like above but changes animation length to a target

SWEP.EventTable = {
	[ACT_VM_RELOAD] = {
		{
			["time"] = 30 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Magout"
		},
		{
			["time"] = 140 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Magin1"
		},
	},
		[ACT_VM_RELOAD_EMPTY] = {
		{
			["time"] = 12 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Boltup"
		},
		{
			["time"] = 23 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Boltback"
		},
		{
			["time"] = 86 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Magout"
		},
		{
			["time"] = 195 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Magin1"
		},
		{
			["time"] = 250 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Boltrelease"
		},
		{
			["time"] = 260 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Boltdown"
		},
	},
	
	[ACT_VM_DEPLOY_8] = {
		{
			["time"] = 30 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Magout"
		},
		{
			["time"] = 140 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Magin1"
		},
	},
		[ACT_VM_DEPLOY_7] = {
		{
			["time"] = 12 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Boltup"
		},
		{
			["time"] = 23 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Boltback"
		},
		{
			["time"] = 86 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Magout"
		},
		{
			["time"] = 195 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Magin1"
		},
		{
			["time"] = 250 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Boltrelease"
		},
		{
			["time"] = 260 / 60,
			["type"] = "sound",
			["value"] = "TFA_CUSTOMS.L115A3.Boltdown"
		},
	},
}

SWEP.SequenceLengthOverride     = {}                          -- Changes both the status delay and the nextprimaryfire of a given animation
SWEP.SequenceRateOverrideScaled = {}                          -- Like above but scales animation length rather than being absolute

SWEP.ProceduralHoslterEnabled   = nil
SWEP.ProceduralHolsterTime      = 0.3
SWEP.ProceduralHolsterPos       = Vector(3, 0, -5)
SWEP.ProceduralHolsterAng       = Vector(-40, -30, 10)

SWEP.Sights_Mode                = TFA.Enum.LOCOMOTION_HYBRID  -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation

SWEP.Sprint_Mode                = TFA.Enum.LOCOMOTION_ANI     -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.SprintBobMult              = 0.35
SWEP.SprintFOVOffset            = 5

SWEP.Idle_Mode                  = TFA.Enum.IDLE_BOTH          -- TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend                 = 0.25                        -- Start an idle this far early into the end of a transition
SWEP.Idle_Smooth                = 0.05                        -- Start an idle this far early into the end of another animation

-- MDL Animations Below

SWEP.IronAnimation = {
	["shoot"] = {
		["type"] = TFA.Enum.ANIMATION_ACT,                    -- Sequence or act
		["value"] = ACT_VM_PRIMARYATTACK_1,                   -- Number for act, String/Number for sequence
		["value_last"] = ACT_VM_PRIMARYATTACK_2,
		["value_empty"] = ACT_VM_PRIMARYATTACK_3,
	}, -- Inward transition
}

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,                    -- Sequence or act
		["value"] = "sprint",                                 -- Number for act, String/Number for sequence
		["is_idle"] = true
	}
}

--[[WORLDMODEL]]--

SWEP.WorldModel	   = "models/weapons/w_cod_snip_l115a3.mdl"   -- Weapon world model path

SWEP.Bodygroups_W  = nil 
SWEP.HoldType      = "ar2" 

-- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.Offset = {
	Pos = {
		Up = -4.5,
		Right = 0.6,
		Forward = 13
	},
	Ang = {
		Up = 0,
		Right = -12.05,
		Forward = 180
	},
	Scale = 0.9
}

SWEP.ThirdPersonReloadDisable = false                         -- Disable third person reload?  True disables.
 
--[[IRONSIGHTS]]--

SWEP.data              = {}
SWEP.data.ironsights   = 1         -- Enable Ironsights
SWEP.Secondary.IronFOV = 80        -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.

SWEP.IronSightsReloadEnabled = true
SWEP.IronSightsReloadLock    = false

SWEP.IronSightsPos = Vector(-4.29, 0, 0.4)
SWEP.IronSightsAng = Vector(1.45, -0.025, 0)

SWEP.IronSightsPos_Point_Shooting = Vector(2, -2, 1)
SWEP.IronSightsAng_Point_Shooting = Vector(0, 0, 30)
SWEP.Secondary.Point_Shooting_FOV = 70 

SWEP.IronSightsPos_Kobra      = Vector(-4.28, -1, 0.88)
SWEP.IronSightsAng_Kobra      = Vector(-0.18, -0.02, 0)

SWEP.IronSightsPos_EOTech     =  Vector(-4.28, -0.5, 0.68)
SWEP.IronSightsAng_EOTech     = Vector(-0.36, -0.025, 0)

SWEP.IronSightsPos_RDS        = Vector(-4.28, 0, 0.65)  
SWEP.IronSightsAng_RDS        = Vector(-0.57, -0.018, 0)

SWEP.IronSightsPos_2XRDS      = Vector(-4.292, -1, 0.55)
SWEP.IronSightsAng_2XRDS      = Vector(-0.25, -0.08, 0)
SWEP.Secondary.IronFOV_2XRDS  = 70
SWEP.RTScopeFOV_2XRDS         = 25
SWEP.RTOverlayTransforms_2XRDS = { 0.01, 0.025 }

SWEP.IronSightsPos_C79        = Vector(-4.3, -1, 0.5)
SWEP.IronSightsAng_C79        = Vector(-0.25, -0.125, 0)
SWEP.RTOverlayTransforms_C79  = { 0, 0.025 }
SWEP.Secondary.IronFOV_C79    = 75
SWEP.RTScopeFOV_C79           = 45

SWEP.IronSightsPos_Mosin      = Vector(-4.27, -1.5, 1.47)
SWEP.IronSightsAng_Mosin      = Vector(-0.27, -0.13, 0)
SWEP.RTOverlayTransforms_Mosin  = { 0, 0 }
SWEP.RTScopeFOV_Mosin         = 45

SWEP.IronSightsPos_PO4X       = Vector(-4.22, -3, 1.03)
SWEP.IronSightsAng_PO4X       = Vector(-0.25, -0.125, 0)
SWEP.RTOverlayTransforms_PO4X = { 0, 0 }
SWEP.RTScopeFOV_PO4X          = 45

SWEP.IronSightsPos_MX4        = Vector(-4.315, -1.5, 0.755)
SWEP.IronSightsAng_MX4        = Vector(-0.28, -0.15, 0)
SWEP.Secondary.IronFOV_MX4    = 75
SWEP.RTScopeFOV_MX4           = 60
SWEP.RTOverlayTransforms_MX4  = { 0, 0 }

SWEP.IronSightsPos_CPU        = Vector(-4.305, -1.8, 0.965)
SWEP.IronSightsAng_CPU        = Vector(-0.3, -0.12, 0)
SWEP.Secondary.IronFOV_CPU    = 75
SWEP.RTOverlayTransforms_CPU  = { 0, 0 }

--[[SPRINTING]]--

SWEP.RunSightsPos = Vector(2.4, -1.6, -0.8)
SWEP.RunSightsAng = Vector(-15, 30, -15)

--[[ CROUCHING ]] --

SWEP.CrouchPos    = Vector(-0.5, -1, -0.5) + SWEP.VMPos
SWEP.CrouchAng    = Vector(0, 0, -5) + SWEP.VMAng

--[[INSPECTION]]--

SWEP.InspectPos   = Vector(9.78, -6.5, -2.241) 
SWEP.InspectAng   = Vector(24.622, 45, 15.477)

--[[ATTACHMENTS]]--

SWEP.Attachments = {
	[1] = { atts = { "ins2_si_kobra", "ins2_si_eotech", "ins2_si_rds", "ins2_si_2xrds", "ins2_si_c79", "ins2_si_po4x", "ins2_si_mosin", "ins2_si_mx4", "ghost_l115a3_ballistics_cpu_scope" } },
	[2] = { atts = { "r6s_muzzle_2", "r6s_flashhider_2", "ins2_br_supp", "ins2_eft_osprey" } },
	[3] = { atts = { "ins2_br_heavy", "r6s_h_barrel", "bo2_longbarrel", "ghost_l115a3_short_barrel" } },
	[4] = { atts = { "ins2_ub_laser", "ins2_laser_anpeq15_black", "ins2_laser_anpeq15_tan", "ins2_ub_flashlight" } },
	[5] = { atts = { "ghost_l115a3_extented_magazine" } },
	[6] = { atts = { "tfa_tactical_point_shooting" } },
	[7] = { atts = { "tfa_yanks_wpn_pack_heavy_stock", "tfa_yanks_wpn_pack_light_stock", "bo2_stock" } }, 
	[8] = { atts = { "tfa_yanks_wpn_pack_sleight_of_hand", "tfa_yanks_wpn_pack_quick_draw", "bo2_rapidfire", "bo2_quickdraw" } },
	[9] = { atts = { "am_match", "am_magnum", "am_gib", "tfa_mb_penrnd" } },
}

SWEP.AttachmentDependencies = {	
    ["tfa_tactical_point_shooting"] = {"ins2_ub_laser", "ins2_laser_anpeq15_black", "ins2_laser_anpeq15_tan", "ins2_ub_flashlight", "ins2_eft_lastac2"},
}

SWEP.AttachmentExclusions   = {}

SWEP.ViewModelBoneMods = {
	["tag_Weapon"] = { scale = Vector(0.98, 0.98, 0.98), pos = Vector(-0.1, 0, 0), angle = Angle(0, 0, 0) },
	["tag_bolt"] = { scale = Vector(1, 1, 1), pos = Vector(-0.025, 0, -0.08), angle = Angle(0, 0, 0) },
	["tag_bolt_handle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["j_thumb_le_0"] = { scale = Vector(1.05, 1.05, 1.05), pos = Vector(0, -0.2, 0), angle = Angle(0, 5, 0) },
	["j_thumb_le_1"] = { scale = Vector(1.05, 1.05, 1.05), pos = Vector(0, 0, 0), angle = Angle(0, 5, 0) },
	["j_thumb_le_2"] = { scale = Vector(1.05, 1.05, 1.05), pos = Vector(0, 0.2, 0), angle = Angle(0, -15, 0) },
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-1, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(1, 0, 0), angle = Angle(0, 0, 0) },
	
	["A_Eject"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -90, 0) },
	["A_Muzzle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(180, 0, -90) },
	["A_Muzzle_Supp"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(180, 0, -90) },
	["A_Optic"] = { scale = Vector(1, 1, 1), pos = Vector(-1, -0.01, -0.32), angle = Angle(-89.85, 0, 0) },
	["A_Suppressor"] = { scale = Vector(1.07, 1.07, 1.07), pos = Vector(-1.2, -0.0245, 0), angle = Angle(0, 180, 0) },
	["A_LaserFlashlight"] = { scale = Vector(1.15, 1.15, 1.15), pos = Vector(0.3, -0.21, -0), angle = Angle(-180, 0, 20) },
	["Bullets"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -0.1), angle = Angle(0, 0, 0) },
	["Bullets_ext"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -0.1), angle = Angle(0, 0, 0) },
}	

-- 	["A_LaserFlashlight"] = { scale = Vector(1, 1, 1), pos = Vector(-0.7, -1, 0), angle = Angle(-180, 0, 20) },
--	["A_LaserFlashlight"] = { scale = Vector(1, 1, 1), pos = Vector(20, 10, 0), angle = Angle(0, 0, 0) },
	
SWEP.WorldModelBoneMods = {
	["ATTACH_Eject"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ATTACH_Laser"] = { scale = Vector(1, 1, 1), pos = Vector(1, 12, 0), angle = Angle(0, 0, 90) },
}

SWEP.VElements = {
	["sights_folded"] = { type = "Model", model = "models/weapons/a_standard_iron_sight_l115a3.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = true },
	["sight_kobra"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_kobra_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_kobra_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_kobra") or nil,
	["sight_eotech"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_eotech_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_eotech_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_eotech") or nil,
	["sight_rds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimpoint_l.mdl", bone = "A_Optic", rel = "", pos = Vector(-0.001, 0, 0.5), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = false },
	["sight_rds_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_rds") or nil,
	["scope_2xrds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimp2x_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_c79"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_elcan.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_po4x"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_po4x24.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_mosin"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_mosin.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_mx4"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_m40_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_ballistics_cpu"] = { type = "Model", model = "models/weapons/a_optic_range_finder_ll15a3.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0.4, 0.5), angle = Angle(90, 0, 90), size = Vector(0.9, 0.9, 0.9), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },

	["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_suppressor_sec2.mdl", bone = "A_Suppressor", rel = "", pos = Vector(36.8, 0, 2.5), angle = Angle(0, 0, 0), size = Vector(1.15, 1.15, 1.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = false },
	["suppressor_osprey"] = { type = "Model", model = "models/weapons/tfa_eft/upgrades/v_osprey.mdl", bone = "A_Suppressor", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1.35, 1.35, 1.35), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = false, active = false },

	["laser"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_laser_rail.mdl", bone = "A_UnderBarrel", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1 ,1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["laser_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "A_Beam", rel = "laser", pos = Vector(0, 0, 0), angle = Angle(0, 0.1, 0), size = Vector(1.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },
	["laser_anpeq15_black"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_laser_anpeq15.mdl", bone = "A_LaserFlashlight", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1 ,1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["laser_beam_anpeq15_black"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "A_Beam", rel = "laser_anpeq15_black", pos = Vector(0, -0.35, -0.86), angle = Angle(0, 0.1, 0), size = Vector(2, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },
	["laser_anpeq15_tan"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_laser_anpeq15_tan.mdl", bone = "A_LaserFlashlight", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1 ,1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["laser_beam_anpeq15_tan"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "A_Beam", rel = "laser_anpeq15_tan", pos = Vector(0, -0.35, -0.86), angle = Angle(0, 0.1, 0), size = Vector(2, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },
	["flashlight"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_flashlight_rail.mdl", bone = "A_LaserFlashlight", rel = "", pos = Vector(-1, 0.05, 0), angle = Angle(0, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },
}

SWEP.WElements = {
	["ref"] = { type = "Model", model = SWEP.WorldModel, bone = "oof", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_sil_sec2.mdl", bone = "ATTACH_Muzzle", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 0.63, 0.63), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["laser"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_laser_ins.mdl", bone = "ATTACH_Laser", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["flashlight"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_laser_ins.mdl", bone = "ATTACH_Laser", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
}

SWEP.MuzzleAttachmentSilenced     = 1

SWEP.LaserSightModAttachment      = 0
SWEP.LaserSightModAttachmentWorld = 0
SWEP.LaserDotISMovement           = false

SWEP.RTAttachment_2XRDS           = 2
SWEP.ScopeDistanceMin_2XRDS       = 55
SWEP.ScopeDistanceRange_2XRDS     = 55

SWEP.RTAttachment_C79             = 2
SWEP.ScopeDistanceMin_C79         = 55
SWEP.ScopeDistanceRange_C79       = 55

SWEP.RTAttachment_PO4X            = 2
SWEP.ScopeDistanceMin_PO4X        = 55
SWEP.ScopeDistanceRange_PO4X      = 55

SWEP.RTAttachment_Mosin           = 2
SWEP.ScopeDistanceMin_Mosin       = 55
SWEP.ScopeDistanceRange_Mosin     = 55

SWEP.RTAttachment_MX4             = 2
SWEP.ScopeDistanceMin_MX4         = 55
SWEP.ScopeDistanceRange_MX4       = 55

SWEP.RTAttachment_CPU             = 2
SWEP.ScopeDistanceMin_CPU         = 55
SWEP.ScopeDistanceRange_CPU       = 55

DEFINE_BASECLASS( SWEP.Base )

if TFA.Yankys_Custom_Weapon_Pack then

    SWEP.AmmoTypeStrings = {
	    sniperpenetratedround = ".338 Lapua Magnum API526"
    }

    function SWEP:OnCustomizationOpen()
	    self:EmitSound("TFA.Yankys_Custom_Weapon_Pack.Customization_Panel_Open")
    end

    function SWEP:OnCustomizationClose()
	    self:EmitSound("TFA.Yankys_Custom_Weapon_Pack.Customization_Panel_Close")
    end

end