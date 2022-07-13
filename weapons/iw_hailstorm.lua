SWEP.Base					= "tfa_bash_base"
SWEP.Category				= "Defy's COD Guns" --Category where you will find your weapons
SWEP.Author					= "DefyTheRush"
SWEP.Contact				= "Comments on Steam Page"
SWEP.Purpose				= "Hailstorm from Infinite Warfare made into c_hands!"
SWEP.Instructions			= "Fire and Shoot"
SWEP.PrintName				= "Hailstorm"		-- Weapon name (Shown on HUD)	
SWEP.Manufacturer			= "Kendall Ballistics"
SWEP.Slot					= 1			-- Slot in the weapon selection menu
SWEP.SlotPos				= 3			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false		-- Should the weapon icon bounce?
SWEP.Weight					= 75		-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.Spawnable				= (TFA) and true or false -- INSTALL SHARED PARTS
SWEP.AdminSpawnable			= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair			= true		-- Draw the crosshair?
SWEP.DrawCrosshairIS 		= false --Draw the crosshair in ironsights?
SWEP.Type					= "Revolver"


--[[WEAPON HANDLING]]--
SWEP.Primary.Sound = Sound("weapons/hailstorm_rev/fire.ogg") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.Sound_SIL = Sound("weapons/hailstorm_rev/fire_sil.ogg")
SWEP.Primary.PenetrationMultiplier = 1 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = 25 -- Damage, in standard damage points.
SWEP.Primary.DamageTypeHandled = true --true will handle damagetype in base
SWEP.Primary.DamageType = nil --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.Force = nil --Force value, leave nil to autocalc
SWEP.Primary.Knockback = 0 --Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = true -- Automatic/Semi Auto
SWEP.Primary.RPM_Burst = 950 -- This is in Rounds Per Minute / RPM
SWEP.Primary.RPM = 600
SWEP.Primary.DryFireDelay = nil --How long you have to wait after firing your last shot before a dryfire animation can play.  Leave nil for full empty attack length.  Can also use SWEP.StatusLength[ ACT_VM_BLABLA ]
SWEP.Primary.BurstDelay = nil -- Delay between bursts, leave nil to autocalculate
SWEP.FiresUnderwater = true

SWEP.RTScopeAttachment = 1
SWEP.ScopeAngleTransforms = {}
SWEP.ScopeOverlayTransformMultiplier = 1
SWEP.ScopeOverlayTransforms = {0, 0}

SWEP.RTMaterialOverride 			= -1 											-- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.
SWEP.RTOpaque 						= true 											-- Do you want your render target to be opaque?
SWEP.RTCode							= nil

--Miscelaneous Sounds
SWEP.IronInSound = Sound("") --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = Sound("") --Sound to play when ironsighting out?  nil for default

--Silencing
SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?

-- Selective Fire Stuff
SWEP.SelectiveFire = true --Allow selecting your firemode?
SWEP.DisableBurstFire = false --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?
SWEP.DefaultFireMode = "3Burst" --Default to auto or whatev
SWEP.FireModeName = nil --Change to a text value to override it

SWEP.FireModes = {
	"3Burst",
	"Single"
}

--Ammo Related
SWEP.Primary.ClipSize = 15 -- This is the size of a clip
SWEP.Primary.DefaultClip = 90 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "357" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DisableChambering = true --Disable round-in-the-chamber

--Recoil Related
SWEP.Primary.KickUp = 0.2 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.175 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.175 -- This is the maximum sideways recoil (no real term)

--Firing Cone Related
SWEP.Primary.Spread = .025 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .0001 -- Ironsight accuracy, should be the same for shotguns

--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = nil--How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = nil --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = nil --How much the spread recovers, per second. Example val: 3

--Range Related
--SWEP.Primary.Range = 11750 * 4 / 3 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.Range = 3000 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = nil -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

--Penetration Related
SWEP.MaxPenetrationCounter = 4 --The maximum number of ricochets.  To prevent stack overflows.

--Misc
SWEP.IronRecoilMultiplier = 0.5 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.5 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate

--Movespeed
SWEP.MoveSpeed = 0.9 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = 0.75 --Multiply the player's movespeed by this when sighting.

--[[VIEWMODEL]]--
SWEP.ViewModel				= "models/weapons/hailstorm_rev/v_iw_hailstorm.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 70		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= false		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = true 		--Use gmod c_arms system.
SWEP.VMPos = Vector(0,0,0) 	--The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0,0,0) 	--The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false --Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse


SWEP.CanJam = false

--[[WORLDMODEL]]--
SWEP.WorldModel			= "models/weapons/hailstorm_rev/w_iw_hailstorm.mdl" -- Weapon world model path
SWEP.HoldType = "pistol" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Offset = {
    Pos = {
        Up = -4,
        Right = 1.5,
        Forward = 10.9,
    },
    Ang = {
        Up = 90,
        Right = 0,
        Forward = 189,
    },
} --Procedural world model animation, defaulted for CS:S purposes.
SWEP.ThirdPersonReloadDisable = false --Disable third person reload?  True disables.

--[[HOLDTYPES]]--

--[[SCOPES]]--
SWEP.IronSightsSensitivity = 1 --Useful for a RT scope.  Change this to 0.25 for 25% sensitivity.  This is if normal FOV compenstaion isn't your thing for whatever reason, so don't change it for normal scopes.
SWEP.BoltAction = false --Unscope/sight after you shoot?
SWEP.Scoped = false --Draw a scope overlay?
SWEP.ScopeOverlayThreshold = 0.875 --Percentage you have to be sighted in to see the scope.
SWEP.BoltTimerOffset = 0.25 --How long you stay sighted in after shooting, with a bolt action.
SWEP.ScopeScale = 0.5 --Scale of the scope overlay
SWEP.ReticleScale = 0.7 --Scale of the reticle overlay

--[[SHOTGUN CODE]]--
SWEP.Shotgun = false --Enable shotgun style reloading.
SWEP.ShotgunEmptyAnim = false --Enable emtpy reloads on shotguns?
SWEP.ShotgunEmptyAnim_Shell = false --Enable insertion of a shell directly into the chamber on empty reload?
SWEP.ShellTime = .35 -- For shotguns, how long it takes to insert a shell.

--[[IRONSIGHTS]]--
SWEP.data = {}
SWEP.data.ironsights = 1 --Enable Ironsights
SWEP.IronSightTime 	 = 0.3

SWEP.IronSightsPos = Vector(-6.345, -1.63, 2.148)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.IronSightsPos_ELO = Vector(-6.345, -1.63, 0.839)
SWEP.IronSightsAng_ELO = Vector(0, 0, 0)
SWEP.IronSightsPos_RFX = Vector(-6.345, -1.63, 1.5)
SWEP.IronSightsAng_RFX = Vector(0, 0, 0)
SWEP.IronSightsPos_REMS = Vector(-6.341, -1.63, 1.299)
SWEP.IronSightsAng_REMS = Vector(0, 0, 0)
SWEP.IronSightsPos_UDS = Vector(-6.342, -1.63, 1.37)
SWEP.IronSightsAng_UDS = Vector(0, 0, 0)
SWEP.IronSightsPos_RVS = Vector(-6.341, -1.63, 1.33)
SWEP.IronSightsAng_RVS = Vector(0, 0, 0)






SWEP.Secondary.IronFOV = 70 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.Secondary.ScopeZoom = 10 --IMPORTANT BIT

--[[SPRINTING]]--

SWEP.RunSprintPos = Vector(2.95, -3.057, -4.119)
SWEP.RunSprintAng = Vector(-13.131, 33.537, -29.906)

--[[INSPECTION]]--

SWEP.InspectPos = Vector(4.221, -7.035, 1.003)
SWEP.InspectAng = Vector(24.884, 36.583, 25.326)
--Replace with a vector, in style of ironsights angle, to be used for inspection

--[[VIEWMODEL ANIMATION HANDLING]]--
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.

--[[VIEWMODEL BLOWBACK]]--

SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0, -2.5, 0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = false --Shoot shells through blowback animations
SWEP.Blowback_Shell_Effect = "RifleShellEject"--Which shell effect to use

--[[ANIMATION]]--
 --Changes the status delay of a given animation; only used on reloads.  Otherwise, use SequenceLengthOverride or one of the others
SWEP.SequenceLengthOverride = {} --Changes both the status delay and the nextprimaryfire of a given animation
SWEP.SequenceRateOverride = {} --Like above but changes animation length to a target
SWEP.SequenceRateOverrideScaled = {} --Like above but scales animation length rather than being absolute

SWEP.ProceduralHoslterEnabled = nil
SWEP.ProceduralHolsterTime = 0.3
SWEP.ProceduralHolsterPos = Vector(3, 0, -5)
SWEP.ProceduralHolsterAng = Vector(-40, -30, 10)

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.005 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation
--MDL Animations Below
SWEP.SprintAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "base_sprint_in", --Number for act, String/Number for sequence
		["is_idle"] = true,
		["transition"] = true
	},
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "base_sprint_loop", --Number for act, String/Number for sequence
		["transition"] = true
	},
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "base_sprint_out", --Number for act, String/Number for sequence
		["transition"] = true
	}
}
--[[EFFECTS]]--

--Attachments
SWEP.MuzzleAttachment			= 1 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= 2 		-- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleFlashEnabled = true --Enable muzzle flash
SWEP.MuzzleAttachmentRaw = nil --This will override whatever string you gave.  This is the raw attachment number.  This is overridden or created when a gun makes a muzzle event.
SWEP.MuzzleFlashEffect = "tfa_muzzleflash_pistol"
SWEP.AutoDetectMuzzleAttachment = false --For multi-barrel weapons, detect the proper attachment?
SWEP.SmokeParticle = nil --Smoke particle (ID within the PCF), defaults to something else based on holdtype; "" to disable
SWEP.EjectionSmokeEnabled = false --Disable automatic ejection smoke

--Shell eject override
--SWEP.ShellModel = "models/shell/50beowulf_shell.mdl" --In case you want custom shell models
SWEP.LuaShellEject = false --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "RifleShellEject" --The effect used for shell ejection; Defaults to that used for blowback
SWEP.ShellScale = nil

--Tracer Stuff
SWEP.TracerName 		= nil 	--Change to a string of your tracer name.  Can be custom. There is a nice example at https://github.com/garrynewman/garrysmod/blob/master/garrysmod/gamemodes/base/entities/effects/tooltracer.lua
SWEP.TracerCount 		= 3 	--0 disables, otherwise, 1 in X chance

--Impact Effects
SWEP.ImpactEffect = nil--Impact Effect
SWEP.ImpactDecal = nil--Impact Decal

--[[RENDER TARGET]]--

--[[AKIMBO]]--

SWEP.Akimbo = false --Akimbo gun?  Alternates between primary and secondary attacks.
SWEP.AnimCycle = 0 -- Start on the right

SWEP.Primary.MaxAmmo = 90
-- Max Ammo function
function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
    end
end
-- PaP Function
SWEP.NZPaPName                = "Tropical Thunder"
function SWEP:OnPaP()
self.Ispackapunched = 1
self.Primary.Damage = self.Primary.Damage*2
self.Primary.ClipSize = 28
self.Primary.MaxAmmo = 308
self:ClearStatCache()
return true
end

SWEP.Attachments = {
	[2] = {
		header = "Attachments",
		offset = {0, 0},
		atts = {"iw_rvs", "iw_reflex", "iw_uds", "iw_rems", "iw_elo"}
	},
	[3] = {
		header = "Bullet Mods",
		offset = {0, 0},
		atts = {"iw_fmj", "iw_particleamp", "iw_hollowpoint"}
	},
	[4] = {
		header = "Gun Mods",
		offset = {0, 0},
		atts = {"iw_rapidfire", "iw_longbarrel", "iw_suppressor"}
	},
	[5] = {
		header = "Handling",
		offset = {0, 0},
		atts = {"iw_quickdraw", "iw_lightweight", "iw_stock"}
	},
	[6] = {
		header = "Variants",
		offset = {0, 0},
		atts = {"iw_hailstorm_void", "iw_hailstorm_tracer", "iw_hailstorm_vertex", "iw_hailstorm_culling", "iw_hailstorm_malevolent", "iw_hailstorm_ordnance", "iw_hailstorm_thunder"}
	}
}

SWEP.VElements = {
	["iw_elo"] = { type = "Model", model = "models/attachments/elo/iw_elo_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(-4.676, 0, 3.599), angle = Angle(0, 0, 0), size = Vector(1.299, 1.299, 1.299), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["iw_reflex"] = { type = "Model", model = "models/attachments/iw_reflex/v_iw_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(-4.676, 0, 3.599), angle = Angle(0, 0, 0), size = Vector(1.299, 1.299, 1.299), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["iw_rems"] = { type = "Model", model = "models/attachments/rems/raijin_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(-4.676, 0, 3.599), angle = Angle(0, 0, 0), size = Vector(1.399, 1.399, 1.399), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["iw_uds"] = { type = "Model", model = "models/attachments/uds/udm_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(-4.677, 0, 4.13), angle = Angle(0, 0, 0), size = Vector(1.299, 1.299, 1.299), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["iw_rvs"] = { type = "Model", model = "models/attachments/rvs/rvn_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(-4.676, 0, 4.84), angle = Angle(0, 0, 0), size = Vector(1.399, 1.399, 1.399), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["iw_sup"] = { type = "Model", model = "models/attachments/suppressor/iw_suppressor.mdl", bone = "tag_weapon", rel = "", pos = Vector(6.599, 0, 1), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
}

SWEP.CanJam = false
SWEP.JamFactor = 0
SWEP.JamChance = 0

--[[MISC INFO FOR MODELERS]]--
--[[

Used Animations (for modelers):

ACT_VM_DRAW - Draw
ACT_VM_DRAW_EMPTY - Draw empty
ACT_VM_DRAW_SILENCED - Draw silenced, overrides empty

ACT_VM_IDLE - Idle
ACT_VM_IDLE_SILENCED - Idle empty, overwritten by silenced
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
basica

ACT_VM_HOLSTER - Holster
ACT_VM_HOLSTER_SILENCED - Holster empty, overwritten by silenced
ACT_VM_HOLSTER_SILENCED - Holster silenced

]]--
DEFINE_BASECLASS( SWEP.Base )
