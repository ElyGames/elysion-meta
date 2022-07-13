
-- TFA Base Template by TFA Base Devs

-- To the extent possible under law, the person who associated CC0 with
-- TFA Base Template has waived all copyright and related or neighboring rights
-- to TFA Base Template.

-- You should have received a copy of the CC0 legalcode along with this
-- work.  If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

-- M9K compatible version is dated as 0 (and 0 is also fallback if TFADataVersion not present)
-- as well as everything made for TFA Base before 4.7

----------------- Basic Garry's Mod SWEP structure stats / TFA Base properties
SWEP.Base                       = "tfa_gun_base"
SWEP.Category                   = "TFA Insurgency" -- The category.
-- Please, just choose something generic or something I've already done if you plan on only doing like one (or two or three) swep(s).
SWEP.Manufacturer               = nil -- Gun Manufactrer (e.g. Hoeckler and Koch)
SWEP.Author                     = "" -- Author Tooltip
SWEP.Contact                    = "" -- Contact Info Tooltip
SWEP.Purpose                    = "" -- Purpose Tooltip
SWEP.Instructions               = "" -- Instructions Tooltip
SWEP.Spawnable                  = true -- Can you, as a normal user, spawn this?
SWEP.AdminSpawnable             = false -- Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair              = true      -- Draw the crosshair?

-- AKA DrawCrosshairIS
SWEP.DrawCrosshairIronSights    = false -- Draw the crosshair in ironsights?
SWEP.PrintName                  = "SVG-100"       -- Weapon name (Shown on HUD)
SWEP.Slot                       = 2             -- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos                    = 73            -- Position in the slot
SWEP.AutoSwitchTo               = true      -- Auto switch to if we pick it up
SWEP.AutoSwitchFrom             = true      -- Auto switch from if you pick up a better weapon
SWEP.Weight                     = 30            -- This controls how "good" the weapon is for autopickup.

----------------- The Most basic weapon stats
SWEP.Primary.RPM                = 55 -- This is in Rounds Per Minute / RPM
SWEP.Primary.NumShots           = 1 -- The number of shots the weapon fires
SWEP.Primary.HullSize           = 1.5 -- Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.Automatic          = false -- Automatic/Semi Auto

-- If your gun is bullet based
SWEP.Primary.Damage             = 1600 -- Damage, in standard damage points.


----------------- TFA Base Basic sound handling
SWEP.Primary.Sound              = Sound("SVG100.Fire") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound      = Sound("SVG100.FireS") -- This is the sound of the weapon, when silenced.


----------------- Selective Fire Stuff
SWEP.SelectiveFire                = false -- Allow selecting your firemode?
SWEP.DisableBurstFire             = false -- Only auto/single?
SWEP.OnlyBurstFire                = false -- No auto, only burst/single?
SWEP.BurstFireCount               = nil -- Burst fire count override (autocalculated by the clip size if nil)
SWEP.DefaultFireMode              = "" -- Default to auto or whatev
SWEP.FireModeName                 = nil -- Change to a text value to override it
SWEP.FireSoundAffectedByClipSize  = true -- Whenever adjuct pitch (and proably other properties) of fire sound based on current clip / maxclip
-- This is always false when either:
-- Weapon has no primary clip
-- Weapon's clip is smaller than 4 rounds
-- Weapon is a shotgun

----------------- Ammo Related
SWEP.Primary.ClipSize           = 6 -- This is the size of a clip

SWEP.Primary.DefaultClip        = 6*8 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo               = "SniperPenetratedRound"-- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
-- Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.Primary.AmmoConsumption    = 1 -- Ammo consumed per shot

-- AKA DisableChambering
SWEP.Primary.DisableChambering  = true -- Disable round-in-the-chamber

-- Recoil Related
SWEP.Primary.KickUp             = 2.5 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown           = 1.5 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal     = 1.5 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.5 -- Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

-- Firing Cone Related
SWEP.Primary.Spread             = 4 -- This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy       = .0001 -- Ironsight accuracy, should be the same for shotguns

SWEP.CrouchAccuracyMultiplier   = 0.8

----------------- ViewModel related
SWEP.ViewModel          = "models/v_models/v_sniper_svg100.mdl" -- Viewmodel path
SWEP.ViewModelFOV       = 70       -- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip      = false     -- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands           = true -- Use gmod c_arms system.

-- The viewmodel positional offset, constantly.
-- Subtract this from any other modifications to viewmodel position.
-- AKA VMPos (SWEP Construction Kit naming, VMPos is always checked for presence and it always override ViewModelPosition if present)
SWEP.VMPos  = Vector(0.5, 4.46, -2.585)

-- AKA VMAng (SWEP Construction Kit naming)
-- The viewmodel angular offset, constantly.
-- Subtract this from any other modifications to viewmodel angle.
SWEP.VMAng     = Vector(0, 0, 0)

SWEP.VElements = {
	["scope_mx4"] = { type = "Model", model = "models/v_models/a_optic_codol_mssr.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(3.9, -6.11, -16.1), angle = Angle(93, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {},active = false },
	["suppressor"] = { type = "Model", model = "models/v_models/v_sniper_svg100_silencer.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(21.5, -2.375, 45.118), angle = Angle(180, 0, -89.542), size = Vector(1.241, 1.241, 1.241), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },

	["sights_folded"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_standard_ksg.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(2.451, -5.8, -13.007), angle = Angle(90, 0, -90), size = Vector(0.768, 0.768, 0.768), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = true },

	["scope_mosin"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_mosin_l.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(0.024, -4.56, 0.004), angle = Angle(91.4, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	
	["scope_po4x"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_po4x24_l.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(0.024, -4.56, 0.004), angle = Angle(91.4, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },

	["scope_c79"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_elcan_l.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(0.024, -4.56, 0.004), angle = Angle(91.4, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },

	["scope_2xrds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimp2x_l.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(0.024, -4.52, 0.004), angle = Angle(91.4, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },

	["sight_rds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimpoint_l.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(0.024, -4.52, 0.004), angle = Angle(91.4, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["sight_rds_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_rds") or nil,
	
	["sight_eotech"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_eotech_l.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(0.024, -4.52, 0.004), angle = Angle(91.4, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["sight_eotech_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_eotech") or nil,

	["sight_kobra"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_kobra_l.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(0.024, -4.45, 0.004), angle = Angle(91.4, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["sight_kobra_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_kobra") or nil,

	["laser"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_laser_band.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(0.49, -1.8, 24.454), angle = Angle(88.485, 90, -90), size = Vector(1.4, 1.4, 1.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["laser_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "ValveBiped.weapon_bone", rel = "", pos = Vector(3.5, -2.2, 25.232), angle = Angle(91, 0, 0), size = Vector(1.5, 1.5, 1.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false }


}


SWEP.Attachments = {
	[1] = { offset = { 0, 0 }, atts = { "ins2_br_supp" }, order = 1 },
	[2] = { offset = { 0, 0 }, atts = { "am_match", "am_magnum", "am_gib" }, order = 5 },
	[7] = { offset = { 0, 0 }, atts = { "ins2_si_kobra", "ins2_si_eotech", "ins2_si_rds", "ins2_si_2xrds", "ins2_si_c79", "ins2_si_po4x", "ins2_si_mosin", "ins2_si_mx4" }, sel = 8, order = 2 },
	[9] = { offset = { 0, 0 }, atts = { "ins2_ub_laser" }, order = 3 }
}

SWEP.IronSightsPos_MX4 = Vector(-5.8326, -1, -0.2385)
SWEP.IronSightsAng_MX4 = Vector(-3, -1, 0)
SWEP.Secondary.IronFOV_MX4 = 35

SWEP.IronSightsPos_Mosin = Vector(-5.80, -1.3, -0.02)
SWEP.IronSightsAng_Mosin = Vector(-1.43, -1.07, 0)
SWEP.Secondary.IronFOV_Mosin = 45

SWEP.IronSightsPos_PO4X = Vector(-5.7345, -1.3, -0.323)
SWEP.IronSightsAng_PO4X = Vector(-1.43, -1.07, 0)
SWEP.Secondary.IronFOV_PO4X = 37

SWEP.IronSightsPos_C79 = Vector(-5.825, -1.3, -0.984)
SWEP.IronSightsAng_C79 = Vector(-1.43, -1.07, 0)
SWEP.Secondary.IronFOV_C79 = 45

SWEP.IronSightsPos_2XRDS = Vector(-5.82, -1.3, -0.518)
SWEP.IronSightsAng_2XRDS = Vector(-1.43, -1.07, 0)
SWEP.Secondary.IronFOV_2XRDS = 45

SWEP.IronSightsPos_RDS = Vector(-5.796, -3.5, -0.566)
SWEP.IronSightsAng_RDS = Vector(-1.43, -1.07, 0)

SWEP.IronSightsPos_EOTech = Vector(-5.8, -3.5, -0.478)
SWEP.IronSightsAng_EOTech = Vector(-1.43, -1.07, 0)

SWEP.IronSightsPos_Kobra = Vector(-5.8, -3.5, -0.18)
SWEP.IronSightsAng_Kobra = Vector(-1.3, -1.07, 0)

----------------- Iron sights related
-- AKA data.ironsights

-- Default FoV of Garry's Mod is 75, most of players prefer 90
-- Lesser FoV value means stronger "zoom"
-- Good value to begin experimenting with is 70
-- AKA Secondary.IronFOV

-- AKA IronViewModelFOV
SWEP.IronSightsPos = Vector(-5.7, -6, -0.1)
SWEP.IronSightsAng = Vector(0.08, -1, 0)
SWEP.Secondary.IronFOV = 65 -- Defaults to 65. Target viewmodel FOV when aiming down the sights.
SWEP.IronSightTime = 0.43

----------------- Worldmodel related
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = false

SWEP.WElements = {
	["sniper"] = { type = "Model", model = "models/w_models/svg100/w_sniper_military.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.621, 0.996, 0), angle = Angle(-18.541, 0, 180), size = Vector(0.874, 0.874, 0.874), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}


SWEP.WorldModelBodygroups       = nil -- {
-- [0] = 1,
-- [1] = 4,
-- [2] = etc.
-- }

SWEP.HoldType = "ar2" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

-- Holdtypes overrides
-- Holdtype override when iron sighting
SWEP.IronSightHoldTypeOverride  = nil -- Defaults to nothing (disabled)
-- This variable overrides the sprint holdtype
SWEP.SprintHoldTypeOverride     = nil -- Defaults to nothing (disabled)

-- Procedural world model offset
-- Value below is good enough for Counter-Strike: Source worldmodels
--[[
-- AKA Offset
SWEP.WorldModelOffset = {
	Pos = {
		Up = 0,
		Right = 0,
		Forward = 0
	},

	Ang = {
		Up = -1,
		Right = -2,
		Forward = 178
	},

	Scale = 1
}
]]


-- Export from SWEP Creation Kit.
-- For each item that can/will be toggled, set active = false in its individual table
-- AKA WElements (if it is being utilized to create gun)
SWEP.WorldModelElements = nil
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_R_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_R_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 180) }
	
}

----------------- Scopes related
SWEP.IronSightsSensitivity = 1 -- Useful for a RT scope.  Change this to 0.25 for 25% sensitivity.  This is if normal FOV compenstaion isn't your thing for whatever reason, so don't change it for normal scopes.
SWEP.BoltAction = false -- Unscope/sight after you shoot?
SWEP.Scoped = false -- Draw a scope overlay?
SWEP.ScopeOverlayThreshold = 0.875 -- Percentage you have to be sighted in to see the scope.
SWEP.BoltTimerOffset = 0.25 -- How long you stay sighted in after shooting, with a bolt action.
SWEP.ScopeScale = 0.5 -- Scale of the scope overlay
SWEP.ReticleScale = 0.7 -- Scale of the reticle overlay

-- GDCW Overlay Options.  Only choose one.
SWEP.Secondary.UseACOG = false -- Overlay option
SWEP.Secondary.UseMilDot = false -- Overlay option
SWEP.Secondary.UseSVD = false -- Overlay option
SWEP.Secondary.UseParabolic = false -- Overlay option
SWEP.Secondary.UseElcan = false -- Overlay option
SWEP.Secondary.UseGreenDuplex = false -- Overlay option

-- Clientside only
-- Defines custom scope overlay
if CLIENT then
	SWEP.Secondary.ScopeTable = nil --[[
	{
		ScopeBorder = Color(0, 0, 0, 255),
		ScopeMaterial = Material("scope/gdcw_closedsight"),
		ScopeOverlay = Material("effects/combine_binocoverlay"),
		ScopeCrosshair = { -- can also be just a Material() value
			r = 0, g = 0, b = 0, a = 255, -- color
			scale = 1, -- scale or crosshair line width if no material specified
			Material = Material("scope/gdcw_acogcross"), -- material, OPTIONAL!
		}
	}
	]]
end

----------------- Looped reload related

-- AKA Shotgun
SWEP.LoopedReload = false -- Enable looped / shotgun style / one round at time reloading.

SWEP.ShotgunEmptyAnim = false -- Enable emtpy reloads on shotguns?
SWEP.ShotgunEmptyAnim_Shell = true -- Enable insertion of a shell directly into the chamber on empty reload?
SWEP.ShotgunStartAnimShell = false -- shotgun start anim inserts shell

-- For looped reloads, how long it take to insert extra round into weapon
-- Adjuct to match visual representation when it actually insert round
-- AKA ShellTime
SWEP.LoopedReloadInsertTime = 0.35

----------------- Animation stuff / procedural ones (Lua animated)

-- ViewModel custom blowback
SWEP.BlowbackEnabled        = true -- Enable Blowback?
SWEP.BlowbackVector         = Vector(0, -3, 0) -- Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackAngle          = nil -- Angle(0, 0, 0)
SWEP.BlowbackCurrentRoot    = 0 -- Amount of blowback currently, for root
SWEP.BlowbackCurrent        = 0 -- Amount of blowback currently, for bones
SWEP.BlowbackBoneMods       = nil -- Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron     = true -- Only do blowback on ironsights
SWEP.Blowback_PistolMode    = false -- Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true -- Shoot shells through blowback animations
SWEP.Blowback_Shell_Effect  = "ShellEject" -- Which shell effect to use
SWEP.BlowbackAllowAnimation = true -- Allow playing shoot animation with blowback?

-- Lua animated reload animation
-- Animate first person reload using Lua?
-- When reloading weapon will be offset to holster position (TODO: Add separate property for that)
-- AKA DoProceduralReload
SWEP.IsProceduralReloadBased    = false
SWEP.ProceduralReloadTime       = 1 -- Procedural reload time in seconds

-- Animation / sequence control
SWEP.StatusLengthOverride       = {} -- Changes the status delay of a given animation; only used on reloads.  Otherwise, use SequenceLengthOverride or one of the others
SWEP.SequenceLengthOverride     = {} -- Changes both the status delay and the nextprimaryfire of a given animation
SWEP.SequenceTimeOverride       = {} -- Like above but changes animation length to a target
SWEP.SequenceRateOverride       = {} -- Like above but scales animation length rather than being absolute

SWEP.ProceduralHolsterEnabled   = nil -- Defaults to autodetection (if weapon has no ACT_VM_HOLSTER animation this is enabled if not specified)
SWEP.ProceduralHolsterTime      = 0.3
-- AKA ProceduralHolsterPos
SWEP.ProceduralHolsterPosition  = Vector(3, 0, -5)
-- AKA ProceduralHolsterAng
SWEP.ProceduralHolsterAngle     = Vector(-40, -30, 10)

----------------- Basic animation related

-- TFA.Enum.IDLE_DISABLED = No idle
-- TFA.Enum.IDLE_LUA = Lua animated idle
-- TFA.Enum.IDLE_ANI = Model's animated idle
-- TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Mode                  = TFA.Enum.IDLE_BOTH
SWEP.Idle_Blend                 = 0.25 -- Start an idle this far early into the end of a transition
SWEP.Idle_Smooth                = 0.05 -- Start an idle this far early into the end of another animation
-- Model based animations Below

-- TFA.Enum.LOCOMOTION_ANI = Model's animation
-- TFA.Enum.LOCOMOTION_LUA = Lua only
-- TFA.Enum.LOCOMOTION_HYBRID = TFA.Enum.LOCOMOTION_ANI + TFA.Enum.LOCOMOTION_LUA
-- Keep in mind that HYBRID sometimes produce very weird results, especially if
-- model's animation is "out of sync" with Lua's one
SWEP.Sights_Mode                = TFA.Enum.LOCOMOTION_LUA
--[[
SWEP.IronAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Idle_To_Iron", -- Number for act, String/Number for sequence
		["value_empty"] = "Idle_To_Iron_Dry",
		["transition"] = true
	}, -- Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Idle_Iron", -- Number for act, String/Number for sequence
		["value_empty"] = "Idle_Iron_Dry"
	}, -- Looping Animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Iron_To_Idle", -- Number for act, String/Number for sequence
		["value_empty"] = "Iron_To_Idle_Dry",
		["transition"] = true
	}, -- Outward transition
	["shoot"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Fire_Iron", -- Number for act, String/Number for sequence
		["value_last"] = "Fire_Iron_Last",
		["value_empty"] = "Fire_Iron_Dry"
	} -- What do you think
}
]]

-- TFA.Enum.LOCOMOTION_ANI = Model's animation
-- TFA.Enum.LOCOMOTION_LUA = Lua only
-- TFA.Enum.LOCOMOTION_HYBRID = TFA.Enum.LOCOMOTION_ANI + TFA.Enum.LOCOMOTION_LUA
SWEP.Sprint_Mode                = TFA.Enum.LOCOMOTION_LUA
SWEP.RunSightsPos = Vector(3.16, -6, -7)	--These are for the angles your viewmodel will be when running
SWEP.RunSightsAng = Vector(-14.301, 46.4, -34.201)
--[[
SWEP.SprintAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Idle_to_Sprint", -- Number for act, String/Number for sequence
		["value_empty"] = "Idle_to_Sprint_Empty",
		["transition"] = true
	}, -- Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Sprint_", -- Number for act, String/Number for sequence
		["value_empty"] = "Sprint_Empty_",
		["is_idle"] = true
	}, -- looping animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Sprint_to_Idle", -- Number for act, String/Number for sequence
		["value_empty"] = "Sprint_to_Idle_Empty",
		["transition"] = true
	} -- Outward transition
}
]]

-- TFA.Enum.LOCOMOTION_ANI = Model's animation
-- TFA.Enum.LOCOMOTION_LUA = Lua only
-- TFA.Enum.LOCOMOTION_HYBRID = TFA.Enum.LOCOMOTION_ANI + TFA.Enum.LOCOMOTION_LUA
SWEP.Walk_Mode                  = TFA.Enum.LOCOMOTION_LUA
--[[
SWEP.WalkAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Idle_to_Walk", -- Number for act, String/Number for sequence
		["value_empty"] = "Idle_to_Walk_Empty",
		["transition"] = true
	}, -- Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Walk", -- Number for act, String/Number for sequence
		["value_empty"] = "Walk_Empty",
		["is_idle"] = true
	}, -- looping animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Walk_to_Idle", -- Number for act, String/Number for sequence
		["value_empty"] = "Walk_to_Idle_Empty",
		["transition"] = true
	} -- Outward transition
}
]]

--[[
-- Looping fire animation (full-auto only)
SWEP.ShootAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "ShootLoop_Start", -- Number for act, String/Number for sequence
		["value_is"] = "ShootLoop_Iron_Start", -- Number for act, String/Number for sequence
		["transition"] = true
	}, -- Looping Start, fallbacks to loop
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "ShootLoop", -- Number for act, String/Number for sequence,
		["value_is"] = "ShootLoop_Iron", -- Number for act, String/Number for sequence,
		["is_idle"] = true,
	}, -- Looping Animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "ShootLoop_End", -- Number for act, String/Number for sequence
		["value_is"] = "ShootLoop_Iron_End", -- Number for act, String/Number for sequence
		["transition"] = true
	}, -- Looping End
}
]]

-- TFA.Enum.LOCOMOTION_ANI = Model's animation
-- TFA.Enum.LOCOMOTION_LUA = Lua only
-- TFA.Enum.LOCOMOTION_HYBRID = TFA.Enum.LOCOMOTION_ANI + TFA.Enum.LOCOMOTION_LUA
SWEP.Customize_Mode             = TFA.Enum.LOCOMOTION_LUA
--[[
SWEP.CustomizeAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "customization_in", -- Number for act, String/Number for sequence
		["transition"] = true
	},
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "customization_idle", -- Number for act, String/Number for sequence
		["is_idle"] = true
	},
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "customization_out", -- Number for act, String/Number for sequence
		["transition"] = true
	}
}
]]

--[[
SWEP.PumpAction = { -- Pump/bolt animations
	["type"] = TFA.Enum.ANIMATION_ACT, -- Sequence or act
	["value"] = ACT_VM_PULLBACK_HIGH, -- Number for act, String/Number for sequence
	["value_empty"] = ACT_VM_PULLBACK, -- Last shot pump
	["value_is"] = ACT_VM_PULLBACK_LOW, -- ADS pump
}
]] --

----------------- Effects related

-- Attachments
SWEP.MuzzleAttachment           = "1" -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment            = "2" -- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleFlashEnabled         = true -- Enable muzzle flash
SWEP.MuzzleAttachmentRaw        = nil -- This will override whatever string you gave. This is the raw attachment NUMBER. This is overridden or created when a gun makes a muzzle event.
SWEP.AutoDetectMuzzleAttachment = false -- For multi-barrel weapons, detect the proper attachment?
SWEP.MuzzleFlashEffect          = nil -- Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.
SWEP.SmokeParticle              = nil -- Smoke particle (ID within the PCF), defaults to something else based on holdtype; "" to disable
SWEP.EjectionSmokeEnabled       = true -- Disable automatic ejection smoke

-- Shell eject override
SWEP.LuaShellEject      = false -- Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 -- The delay to actually eject things
SWEP.LuaShellModel      = nil -- The model to use for ejected shells
SWEP.LuaShellScale      = nil -- The model scale to use for ejected shells
SWEP.LuaShellYaw        = nil -- The model yaw rotation ( relative ) to use for ejected shells

-- Tracer Stuff
SWEP.TracerName         = nil   -- Change to a string of your tracer name.  Can be custom. There is a nice example at https://github.com/garrynewman/garrysmod/blob/master/garrysmod/gamemodes/base/entities/effects/tooltracer.lua
SWEP.TracerCount        = 3     -- 0 disables, otherwise, 1 in X chance

-- Impact Effects
SWEP.ImpactEffect       = nil -- Impact Effect
SWEP.ImpactDecal        = nil -- Impact Decal

----------------- Event table
-- Utilized for firing custom events (including running Lua code) when an action is played.
-- This can even do stuff like playing a pump animation after shooting, discarding clip when reloading
-- playing sounds and so much more!
SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		{time = 1 / 30, type = "sound", value = Sound("SVG100.Deploy")},
		{time = 14 / 30, type = "sound", value = Sound("SVG100.BoltForward")},
		{time = 18 / 30, type = "sound", value = Sound("SVG100.ClipLocked")}
	},
	[ACT_VM_PRIMARYATTACK] = {
		{time = 5 / 30, type = "sound", value = Sound("SVG100.BoltBack")},
		{time = 17 / 30, type = "sound", value = Sound("SVG100.BoltForward")}
	},
	[ACT_VM_RELOAD] = {
		{time = 2 / 30, type = "sound", value = Sound("SVG100.BoltBack")},
		{ ["time"] = 12 / 30, ["type"] = "lua", ["value"] = function(wep,ply)
			ply = wep:GetOwner()
			ply:ViewPunch( Angle( -0.5, 0.25, 0.5 ) )
		end, ["client"] = true, ["server"] = true },
		{time = 25 / 30, type = "sound", value = Sound("SVG100.ClipOut")},
		{ ["time"] = 25 / 30, ["type"] = "lua", ["value"] = function(wep,ply)
			ply = wep:GetOwner()
			ply:ViewPunch( Angle( 2, 1, 0 ) )
		end, ["client"] = true, ["server"] = true },
		
		{time = 65 / 30, type = "sound", value = Sound("SVG100.ClipIn")},
		{ ["time"] = 65 / 30, ["type"] = "lua", ["value"] = function(wep,ply)
			ply = wep:GetOwner()
			ply:ViewPunch( Angle( -2, 1, 2 ) )
		end, ["client"] = true, ["server"] = true },
		{time = 72 / 30, type = "sound", value = Sound("SVG100.ClipLocked")},
		{time = 85 / 30, type = "sound", value = Sound("SVG100.BoltFoward")},
		{time = 65 / 30, type = "sound", value = Sound("SVG100.ClipIn")},
	},
}

----------------- Render target related
SWEP.RTMaterialOverride         = nil -- Take the material you want out of PrintTable(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.
SWEP.RTOpaque                   = false -- Do you want your render target to be opaque?
SWEP.RTCode                     = nil -- function(self) return end -- This is the function to draw onto your rendertarget
SWEP.RTBGBlur                   = true -- Draw background blur when 3D scope is active?

----------------- Akimbo related
-- AKA Akimbo
SWEP.IsAkimbo                   = false -- Akimbo gun?  Alternates between primary and secondary attacks.
-- AKA AkimboHUD
SWEP.EnableAkimboHUD            = true -- Draw holographic HUD for both weapons?
TFA.Enum.IDLE_LUA = 1

----------------- Attachments

SWEP.AttachmentDependencies     = {} -- {["si_acog"] = {"bg_rail", ["type"] = "OR"}} -- type could also be AND to require multiple
SWEP.AttachmentExclusions       = {} -- { ["si_iron"] = { [1] = "bg_heatshield"} }
SWEP.AttachmentTableOverride    = {} --[[{ -- overrides WeaponTable for attachments
	["ins2_ub_laser"] = { -- attachment id, root of WeaponTable override
		["ViewModelElements"] = {
			["laser_rail"] = {
				["active"] = true
			},
		},
	}
}]]
SWEP.AttachmentIconOverride     = {} --[[{ -- overrides icons for attachments
	["am_magnum"] = Material("entities/ammo_357.png", "smooth")
}]]

SWEP.DInv2_GridSizeX = nil -- DInventory/2 Specific. Determines weapon's width in grid. This is not TFA Base specific and can be specified to any Scripted SWEP.
SWEP.DInv2_GridSizeY = nil -- DInventory/2 Specific. Determines weapon's height in grid. This is not TFA Base specific and can be specified to any Scripted SWEP.
SWEP.DInv2_Volume = nil -- DInventory/2 Specific. Determines weapon's volume in liters. This is not TFA Base specific and can be specified to any Scripted SWEP.
SWEP.DInv2_Mass = nil -- DInventory/2 Specific. Determines weapon's mass in kilograms. This is not TFA Base specific and can be specified to any Scripted SWEP.

-- Stencil Sights.
SWEP.StencilSight = nil -- Enables stencil sight drawing
SWEP.StencilSight_MinPercent = nil -- Mimimum aim progress percentage to draw; 0.05 by default; set to 0 to always draw
SWEP.StencilSight_VElement = nil -- "scope_p90_fn_ring_sight_std" -- Name of VElement to draw sight on; must be active to work
SWEP.StencilSight_UseMask = nil -- Use the .mask value of VElement's table as stencil mask model (model must be bonemergeable on the sights VElement!)

-- Sight Type: Flat
-- SWEP.StencilSight_ReticleType = TFA.Enum.RETICLE_FLAT
-- SWEP.StencilSight_ReticleMaterial = "models/weapons/yurie_bcry2/scope_assault/reddot" -- Reticle material, accepts either string or Material() object; must be a square texture!
-- SWEP.StencilSight_ReticleSize = 256 -- Reticle size; scales with screen height using HL2 scale formula (size * (screen height / 480))
-- SWEP.StencilSight_ScaleReticleByProgress = nil -- Scale reticle with aim progress for smoother fade-in; true by default
-- SWEP.StencilSight_FollowRecoil = nil -- If enabled, reticle follows crosshair recoil instead of being locked in center; true by default; affected by crosshair settings
-- SWEP.StencilSight_ReticleTint = nil -- Reticle color; Color(255, 255, 255) by default
-- SWEP.StencilSight_ReticleTintBySightColor = nil -- Use the "Reticule Color" value from base settings instead of StencilSight_ReticleTint? false by default
-- SWEP.StencilSight_FadeReticleByProgress = nil -- Fade-in reticle alpha with aim progress; false by default
-- // Sight Type: Flat

-- Sight Type: Model; requires .reticle value of VElement's table (same deal as UseMask)
-- SWEP.StencilSight_ReticleType = TFA.Enum.RETICLE_MODEL
-- SWEP.StencilSight_FadeReticleByProgress = nil -- Fade-in reticle alpha with aim progress; false by default
-- SWEP.StencilSight_EnableQuad = nil -- Enables drawing Quad type reticles (example below) over model ones
-- // Sight Type: Model

-- Sight Type: Quad (aka the old way from TFA INS2)
-- SWEP.StencilSight_ReticleType = TFA.Enum.RETICLE_QUAD
-- SWEP.StencilSight_ReticleMaterial = "models/weapons/yurie_eft/parts/scopes/scope_p90_fn_ring_sight_std_LOD0_marks" -- Reticle material, accepts either string or Material() object; must be a square texture!
-- SWEP.StencilSight_ReticleSize = 1 -- Reticle quad size
-- SWEP.StencilSight_ScaleReticleByProgress = nil -- Scale reticle with aim progress for smoother fade-in; true by default
-- SWEP.StencilSight_ReticleTint = nil -- Reticle color; Color(255, 255, 255) by default
-- SWEP.StencilSight_ReticleTintBySightColor = nil -- Use the "Reticule Color" value from base settings instead of StencilSight_ReticleTint? false by default
-- SWEP.StencilSight_FadeReticleByProgress = nil -- Fade-in reticle alpha with aim progress; false by default

-- Quad Reticle Position Lookup

-- Lookup Type: Attachment
-- SWEP.StencilSight_PositionType = TFA.Enum.SIGHTSPOS_ATTACH -- Enabled by default
-- SWEP.StencilSight_ReticleAttachment = "tag_reticle" -- Name or index of target $attachment

-- Lookup Type: Bone
-- SWEP.StencilSight_PositionType = TFA.Enum.SIGHTSPOS_BONE
-- SWEP.StencilSight_ReticleBone = "tag_reticle" -- Name or index of target bone

-- SWEP.StencilSight_ReticleOffsetPos = nil -- Vector(0, 0, 0)
-- SWEP.StencilSight_ReticleOffsetAng = nil -- Angle(0, 0, 0)
-- // Sight Type: Quad

-- [[ BASH BASE PARAMETERS ]] --
-- If you're using "tfa_bash_base" or something that's derived from it





-- [[MISC INFO FOR MODELERS]] --
--[[

Utilized animations (for modelers):

ACT_VM_DRAW - Draw
ACT_VM_DRAW_EMPTY - Draw empty
ACT_VM_DRAW_SILENCED - Draw silenced, overrides empty

ACT_VM_IDLE - Idle
ACT_VM_IDLE_EMPTY - Idle empty, overwritten by silenced
ACT_VM_IDLE_SILENCED - Idle silenced

ACT_VM_PRIMARYATTACK - Shoot
ACT_VM_PRIMARYATTACK_EMPTY - Shoot last chambered bullet
ACT_VM_PRIMARYATTACK_SILENCED - Shoot silenced, overrides empty
ACT_VM_PRIMARYATTACK_1 - Shoot ironsights, overriden by everything besides normal shooting
ACT_VM_DRYFIRE - Dryfire

ACT_VM_RELOAD - Reload / Tactical Reload / Insert Shotgun Shell
ACT_SHOTGUN_RELOAD_START - Start shotgun reload, unless ACT_VM_RELOAD_EMPTY is there.
ACT_SHOTGUN_RELOAD_FINISH - End shotgun reload.
ACT_VM_RELOAD_EMPTY - Empty mag reload, chambers the new round.  Works for shotguns too, where applicable.
ACT_VM_RELOAD_SILENCED - Silenced reload, overwrites all

ACT_VM_FIREMODE - Firemode switch
ACT_VM_IFIREMODE - ADS firemode switch

ACT_VM_FIDGET - Inspect/fidget animation (hold Reload key to play)
ACT_CROSSBOW_FIDGET_UNLOADED - Inspect empty
ACT_RPG_FIDGET_UNLOADED - Inspect silenced

ACT_VM_HOLSTER - Holster
ACT_VM_HOLSTER_SILENCED - Holster empty, overwritten by silenced
ACT_VM_HOLSTER_SILENCED - Holster silenced

ACT_VM_HITCENTER - Melee bash
ACT_VM_HITCENTER2 - Melee bash silenced (why would you use that)
ACT_VM_MISSCENTER - Melee bash empty
ACT_VM_MISSCENTER2 - Melee bash empty and silenced (...)

-- For more verbose list check lua/weapons/tfa_gun_base/common/anims.lua

]] --

-- Define local BaseClass to be SWEP.Base table
-- Example usage (AND PROPER ONE!):
--[[
function SWEP:Think2(...) -- We're overriding Think2 without touching the main think function, which is called from there anyway
    BaseClass.Think2(self, ...) -- THE MOST IMPORTANT LINE! It calls the Think2 function of the parent class, which is the base ifself

    -- Your code here.
end
]]
-- Write any code involving `BaseClass` indexing (like above) STRICTLY below DEFINE_BASECLASS(SWEP.Base), otherwise it won't work!
-- You can do the same with ANY function defined in TFA Base itself, as long as you call BaseClass function
DEFINE_BASECLASS(SWEP.Base)


