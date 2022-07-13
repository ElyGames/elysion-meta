SWEP.Base				= "tfa_gun_base"
SWEP.Category				= "TFA Insurgency" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer = "" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= "YuRaNnNzZZ" --Author Tooltip
SWEP.Contact				= "" --Contact Info Tooltip
SWEP.Purpose				= "" --Purpose Tooltip
SWEP.Instructions				= "" --Instructions Tooltip
SWEP.Spawnable				= (TFA and TFA.INS2) and true or false -- INSTALL SHARED PARTS
SWEP.AdminSpawnable			= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair			= true		-- Draw the crosshair?
SWEP.DrawCrosshairIS = false --Draw the crosshair in ironsights?
SWEP.PrintName				= "Lynx CQ300"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 2			-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 73			-- Position in the slot
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.Weight				= 30			-- This controls how "good" the weapon is for autopickup.

if TFA then
	local path = "weapons/tfa_ins2/cq300/"
	local pref = "TFA_INS2.CQ300."

	-- TFA.AddFireSound(pref .. "1", {path .. "wpn_h1_lynx_shot_01.ogg", path .. "wpn_h1_lynx_shot_02.ogg", path .. "wpn_h1_lynx_shot_03.ogg", path .. "wpn_h1_lynx_shot_04.ogg"}, true, ")")
	-- TFA.AddFireSound(pref .. "2", {path .. "h1_wpn_supp_semi_01.ogg", path .. "h1_wpn_supp_semi_02.ogg", path .. "h1_wpn_supp_semi_03.ogg", path .. "h1_wpn_supp_semi_04.ogg"}, true, ")")

	TFA.AddSound(pref .. "Loop", CHAN_WEAPON, 1, 140, 100, path .. "m4_3_loop.ogg", ")")
	TFA.AddSound(pref .. "LoopTail", CHAN_STATIC, 1, 140, 100, path .. "m4_3_loop_tail.ogg", ")")
	TFA.AddSound(pref .. "Loop_Sil", CHAN_WEAPON, 1, 95, 100, path .. "m4_3_loop_silenced.ogg", ")")
	TFA.AddSound(pref .. "LoopTail_Sil", CHAN_STATIC, 1, 95, 100, path .. "m4_3_loop_silenced_tail.ogg", ")")

	TFA.AddSound(pref .. "1", CHAN_WEAPON, 1, 140, 100, { path .. "m4_single1.ogg", path .. "m4_single2.ogg", path .. "m4_single3.ogg", path .. "m4_single4.ogg" }, ")")
	TFA.AddSound(pref .. "2", CHAN_WEAPON, 1, 140, 100, { path .. "m4_single_sil1.ogg", path .. "m4_single_sil2.ogg", path .. "m4_single_sil3.ogg", path .. "m4_single_sil4.ogg" }, ")")

	TFA.AddWeaponSound(pref .. "Empty", path .. "handling/mk18_empty.ogg")
	TFA.AddWeaponSound(pref .. "Boltback", path .. "handling/mk18_boltback.ogg")
	TFA.AddWeaponSound(pref .. "Boltrelease", path .. "handling/mk18_boltrelease.ogg")
	TFA.AddWeaponSound(pref .. "Magrelease", path .. "handling/mk18_magrelease.ogg")
	TFA.AddWeaponSound(pref .. "Magout", path .. "handling/mk18_magout.ogg")
	TFA.AddWeaponSound(pref .. "Magin", path .. "handling/mk18_magin.ogg")
	TFA.AddWeaponSound(pref .. "Hit", path .. "handling/mk18_hit.ogg")
	TFA.AddWeaponSound(pref .. "ROF", path .. "handling/mk18_fireselect.ogg")
end

if killicon and killicon.Add then
	killicon.Add("tfa_ins2_cq300", "vgui/killicons/tfa_ins2_cq300", Color(255, 80, 0, 191))
end

--[[WEAPON HANDLING]]--
SWEP.Primary.Sound = Sound("TFA_INS2.CQ300.1") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound = Sound("TFA_INS2.CQ300.2") -- This is the sound of the weapon, when silenced.

SWEP.Primary.LoopSound = Sound("TFA_INS2.CQ300.Loop")
SWEP.Primary.LoopSoundSilenced = Sound("TFA_INS2.CQ300.Loop_Sil")
SWEP.Primary.LoopSoundTail = Sound("TFA_INS2.CQ300.LoopTail")
SWEP.Primary.LoopSoundTailSilenced = Sound("TFA_INS2.CQ300.LoopTail_Sil")
SWEP.Primary.LoopSoundAutoOnly = true

SWEP.Primary.Damage = 24 -- Damage, in standard damage points.
SWEP.Primary.DamageTypeHandled = true --true will handle damagetype in base
SWEP.Primary.DamageType = nil --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.Force = nil --Force value, leave nil to autocalc
SWEP.Primary.Knockback = nil --Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = true -- Automatic/Semi Auto
SWEP.Primary.RPM = 800 -- This is in Rounds Per Minute / RPM
SWEP.FiresUnderwater = false
--Miscelaneous Sounds
SWEP.IronInSound = Sound("TFA_INS2.IronIn") --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = Sound("TFA_INS2.IronOut") --Sound to play when ironsighting out?  nil for default
-- Selective Fire Stuff
SWEP.SelectiveFire = true --Allow selecting your firemode?
SWEP.DisableBurstFire = true --Only auto/single?
--Ammo Related
SWEP.Primary.ClipSize = 30 -- This is the size of a clip
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 4 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "ar2" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
--Recoil Related
SWEP.Primary.KickUp = 0.3 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.3 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.15 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.5 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
--Firing Cone Related
SWEP.Primary.Spread = .02 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .005 -- Ironsight accuracy, should be the same for shotguns
--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 4--How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = 0.5 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 4--How much the spread recovers, per second. Example val: 3
--Range Related
SWEP.Primary.Range = 550 * 48 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 0.5 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
--Misc
SWEP.IronRecoilMultiplier = 0.6 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.5 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
--Movespeed
SWEP.MoveSpeed = 0.9 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed  * 0.8 --Multiply the player's movespeed by this when sighting.
--[[VIEWMODEL]]--
SWEP.ViewModel			= "models/weapons/tfa_ins2/c_cq300.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 70		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= false		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = true --Use gmod c_arms system.

SWEP.VMPos = Vector(0.5, -0.5, -1.8)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = false --Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse

--[[WORLDMODEL]]--
SWEP.WorldModel			= "models/weapons/tfa_ins2/w_cq300.mdl" -- Weapon world model path
SWEP.HoldType = "ar2" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Offset = {
	Pos = {
		Up = -1.25,
		Right = 1,
		Forward = 4.796
	},
	Ang = {
		Up = 0,
		Right = -8,
		Forward = 180
	},
	Scale = 0.95
} --Procedural world model animation, defaulted for CS:S purposes.

--[[SPRINTING]]--
SWEP.RunSightsPos = Vector(5, -7.325, -3.25)
SWEP.RunSightsAng = Vector(-28, 55, -30)
--[[IRONSIGHTS]]--
SWEP.data = {}
SWEP.data.ironsights = 1 --Enable Ironsights
SWEP.Secondary.IronFOV = 80 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(-3.375, -6, -0.535)
SWEP.IronSightsAng = Vector(-0.485, 0.006, 0)

SWEP.IronSightsPos_Kobra = Vector(-3.375, -4, -0.629)
SWEP.IronSightsAng_Kobra = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_Kobra = 65

SWEP.IronSightsPos_EOTech = Vector(-3.375, -6, -0.618)
SWEP.IronSightsAng_EOTech = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_EOTech = 76

SWEP.IronSightsPos_RDS = Vector(-3.375, -6, -0.618)
SWEP.IronSightsAng_RDS = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_RDS = 58

SWEP.IronSightsPos_2XRDS = Vector(-3.372, -6, -0.62)
SWEP.IronSightsAng_2XRDS = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_2XRDS = 59

SWEP.IronSightsPos_C79 = Vector(-3.374, -5, -1.037)
SWEP.IronSightsAng_C79 = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_C79 = 70

--[[INSPECTION]]--
SWEP.InspectPos = Vector(5, -5.619, -2.787)
SWEP.InspectAng = Vector(22.386, 34.417, 5)

--[[ANIMATION]]--
SWEP.StatusLengthOverride = {
	["base_reload"] = 66 / 30,
	["base_reload_empty"] = 72 / 30,
	["foregrip_reload"] = 66 / 30,
	["foregrip_reload_empty"] = 72 / 30,
} --Changes the status delay of a given animation; only used on reloads.  Otherwise, use SequenceLengthOverride or one of the others
SWEP.SequenceRateOverride = {
	["base_ready"] = 1.2,
	["base_reload"] = 1.2,
	["base_reload_empty"] = 1.35,
	["foregrip_ready"] = 1.2,
	["foregrip_reload"] = 1.2,
	["foregrip_reload_empty"] = 1.35,
}

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.SprintBobMult = 0
--MDL Animations Below
SWEP.IronAnimation = {
	["shoot"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_PRIMARYATTACK_1, --Number for act, String/Number for sequence
		["value_empty"] = ACT_VM_PRIMARYATTACK_3
	} --What do you think
}

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "base_sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}
--[[EFFECTS]]--
--Attachments
SWEP.MuzzleAttachment			= "muzzle" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "shell" 		-- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleFlashEnabled = true --Enable muzzle flash
SWEP.MuzzleAttachmentRaw = nil --This will override whatever string you gave.  This is the raw attachment number.  This is overridden or created when a gun makes a muzzle event.
SWEP.AutoDetectMuzzleAttachment = false --For multi-barrel weapons, detect the proper attachment?
SWEP.MuzzleFlashEffect = nil --Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.
SWEP.SmokeParticle = nil --Smoke particle (ID within the PCF), defaults to something else based on holdtype; "" to disable
SWEP.EjectionSmokeEnabled = false --Disable automatic ejection smoke
--Shell eject override
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "RifleShellEject" --The effect used for shell ejection; Defaults to that used for blowback
--Tracer Stuff
SWEP.TracerName 		= nil 	--Change to a string of your tracer name.  Can be custom. There is a nice example at https://github.com/garrynewman/garrysmod/blob/master/garrysmod/gamemodes/base/entities/effects/tooltracer.lua
SWEP.TracerCount 		= 3 	--0 disables, otherwise, 1 in X chance

--[[ATTACHMENTS]]--

SWEP.ViewModelBoneMods = {
	["A_Optic"] = { scale = Vector(1, 1, 1), pos = Vector(-0.07, -1, 0), angle = Angle(0, 0, 0) },
	["A_Foregrip"] = { scale = Vector(0.5, 0.5, 0.5), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
}

SWEP.VElements = {
	["sights_folded"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_cq300_sights_up.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = true },
	["rail_sights"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_cq300_sights_down.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },

	["standard_barrel"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_cq300_muzzle.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = true },
	["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_cq300_silencer.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = false },

	["laser"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_cq300_laser.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["laser_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "Laser", rel = "laser", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(2, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },

	["sight_kobra"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_kobra_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_kobra_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_kobra") or nil,
	["sight_eotech"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_eotech.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_eotech_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_eotech") or nil,
	["sight_rds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimpoint.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_rds_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_rds") or nil,
	["scope_2xrds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimp2x.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_c79"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_elcan.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },

	["foregrip"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_foregrip_sec2.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
}

SWEP.WElements = {
	["sights_folded"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_cq300_sights_up.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = true },
	["rail_sights"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_cq300_sights_down.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },

	["standard_barrel"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_cq300_muzzle.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = true },
	["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_cq300_silencer.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = false },

	["laser"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_cq300_laser.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },

	["sight_kobra"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_kobra.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["sight_eotech"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_eotech.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["sight_rds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_aimpoint.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["scope_2xrds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_magaim.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["scope_c79"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_elcan.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },

	["foregrip"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_foregrip_sec1.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
}

SWEP.Attachments = {
	[1] = { atts = { "ins2_br_supp" }, order = 1 },
	[2] = { atts = { "am_match", "am_magnum" }, order = 5 },
	[7] = { atts = { "ins2_si_kobra", "ins2_si_eotech", "ins2_si_rds", "ins2_si_2xrds", "ins2_si_c79" }, order = 2 },
	[8] = { atts = { "ins2_fg_grip" }, order = 3 },
	[9] = { atts = { "ins2_ub_laser", "ins2_ub_flashlight" }, order = 4 }
}
SWEP.AttachmentExclusions = {
	["ins2_br_supp"] = {"ins2_fg_grip", "ins2_ub_laser", "ins2_ub_flashlight"}
}

SWEP.MuzzleAttachmentSilenced = 2

SWEP.LaserSightModAttachment = 1
SWEP.LaserSightModAttachmentWorld = 8
SWEP.LaserDotISMovement = true

SWEP.AttachmentTableOverride = {
	["ins2_ub_flashlight"] = {
		["VElements"] = {
			["laser"] = {
				["active"] = true
			}
		},
		["WElements"] = {
			["laser"] = {
				["active"] = true
			}
		},
		["FlashlightAttachmentName"] = "Flashlight",
		["Flashlight_VElement"] = "laser",
	}
}
