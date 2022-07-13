SWEP.Base = "tfa_bo3_base"
SWEP.Category = "TFA Black Ops 3"
SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.7
SWEP.AdminSpawnable = true
SWEP.UseHands = true
--SWEP.Manufacturer = "NA"
SWEP.Purpose = "Fully-automatic shotgun. Fast fire rate with modest damage."
SWEP.Type_Displayed = "Shotgun"
SWEP.Author = "Olli, Fox"
SWEP.Slot = 3
SWEP.PrintName = "Haymaker 12"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = false

--[Model]--
SWEP.ViewModel			= "models/weapons/bo3/haymaker/base/c_bo3_haymaker.mdl"
SWEP.ViewModelFOV = 70
SWEP.WorldModel			= "models/weapons/bo3/haymaker/base/w_bo3_haymaker.mdl"
SWEP.HoldType = "ar2"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.MuzzleAttachment = "1"
SWEP.MuzzleAttachmentSilenced = "3"
SWEP.VMPos = Vector(0, -6, -1.5)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = true

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -0,
        Right = 1,
        Forward = 3.5,
        },
        Ang = {
		Up = -90,
        Right = 180,
        Forward = 10
        },
		Scale = 1
}

--[Gun Related]--
SWEP.Primary.Sound = "weapon_bo3_haymaker.fire"
SWEP.Primary.SilencedSound = "weapon_bo3_gator.fire_supp"
SWEP.Primary.SoundEchoTable = {
	[0] = Sound("weapon_bo3_shotgun.TailInside"),
	[256] = Sound("weapon_bo3_shotgun.TailOutside")
}
SWEP.Primary.Sound_DryFire = "weapon_bo3_dryfire.shotgun"
SWEP.Primary.Sound_Blocked = "weapon_bo3_dryfire.shotgun"
SWEP.Primary.Ammo = "buckshot"
SWEP.Primary.Automatic = true
SWEP.Primary.RPM = 300
SWEP.Primary.RPM_Semi = nil
SWEP.Primary.RPM_Burst = nil
SWEP.Primary.RPM_rapidfire = 319
SWEP.Primary.Damage = 25
SWEP.Primary.NumShots = 8
SWEP.Primary.AmmoConsumption = 1
SWEP.Primary.ClipSize = 12
SWEP.Primary.ClipSize_Ext = 17
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 5
SWEP.Primary.DryFireDelay = 0.35
SWEP.DisableChambering = false
SWEP.FiresUnderwater = true

--[Firemode]--
SWEP.Primary.BurstDelay = nil
SWEP.DisableBurstFire = true
SWEP.SelectiveFire = false
SWEP.OnlyBurstFire = false
SWEP.BurstFireCount = nil
SWEP.DefaultFireMode = nil
SWEP.FireModeName = nil

--[Range]--
SWEP.Primary.DisplayFalloff = true
SWEP.Primary.RangeFalloffLUT = {
	bezier = false, -- Whenever to use Bezier or not to interpolate points?
	-- you probably always want it to be set to true
	range_func = "linear", -- function to spline range
	-- "linear" for linear splining.
	-- Possible values are "quintic", "cubic", "cosine", "sinusine", "linear" or your own function
	units = "meters", -- possible values are "inches", "inch", "hammer", "hu" (are all equal)
	-- everything else is considered to be meters
	lut = { -- providing zero point is not required
		-- without zero point it is considered to be as {range = 0, damage = 1}
		{range = 10, damage = 1.0},
		{range = 15, damage = 0.7},
		{range = 25, damage = 0.7},
		{range = 30, damage = 0.4},
	}
}

--[Recoil]--
SWEP.ViewModelPunchPitchMultiplier = 0.5 --0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights = 0.09 --.09

SWEP.ViewModelPunch_MaxVertialOffset				= 2 --3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights		= 1.95 --1.95
SWEP.ViewModelPunch_VertialMultiplier				= 1 --1
SWEP.ViewModelPunch_VertialMultiplier_IronSights	= 0.25 --0.25

SWEP.ViewModelPunchYawMultiplier = 0.6 --0.6
SWEP.ViewModelPunchYawMultiplier_IronSights = 0.25 --0.25

SWEP.ChangeStateRecoilMultiplier = 1.3 --1.3
SWEP.CrouchRecoilMultiplier = 0.65 --0.65
SWEP.JumpRecoilMultiplier = 1.3 --1.3
SWEP.WallRecoilMultiplier = 1.1 --1.1

--[Spread Related]--
SWEP.Primary.Spread		  = .08
SWEP.Primary.IronAccuracy = .08
SWEP.IronRecoilMultiplier = 0.75

SWEP.Primary.KickUp				= 0.8
SWEP.Primary.KickDown 			= 0.6
SWEP.Primary.KickHorizontal		= 0.4
SWEP.Primary.StaticRecoilFactor = 0.6

SWEP.Primary.SpreadMultiplierMax = 3
SWEP.Primary.SpreadIncrement = 1
SWEP.Primary.SpreadRecovery = 4

SWEP.ChangeStateAccuracyMultiplier = 1.0 --1.5
SWEP.CrouchAccuracyMultiplier = 1.0 --0.5
SWEP.JumpAccuracyMultiplier = 2.0 --2
SWEP.WalkAccuracyMultiplier = 1.35 --1.35

--[Bash]--
SWEP.Secondary.CanBash = true
SWEP.Secondary.BashDamage = 35
SWEP.Secondary.BashSound = Sound("weapon_bo3_melee.whoosh")
SWEP.Secondary.BashHitSound = Sound("weapon_bo3_melee.hit")
SWEP.Secondary.BashHitSound_Flesh = Sound("weapon_bo3_melee.hit")
SWEP.Secondary.BashLength = 45
SWEP.Secondary.BashDelay = 0.1
SWEP.Secondary.BashDamageType = DMG_CLUB
SWEP.Secondary.BashInterrupt = true

--[Iron Sights]--
SWEP.IronBobMult 	 = 0.065
SWEP.IronBobMultWalk = 0.065
SWEP.data = {}
SWEP.data.ironsights = 1
SWEP.IronInSound = "weapon_bo3_gear.rattle"
SWEP.IronOutSound = "weapon_bo3_gear.rattle"
SWEP.Secondary.IronFOV = 70
SWEP.IronSightsPos = Vector(-3.475, -1.5, 0.45)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.IronSightsPos_ELO = Vector(-3.475, -1.5, 0.41)
SWEP.IronSightsAng_ELO = Vector(0, 0, 0)
SWEP.IronSightsPos_REFLEX = Vector(-3.48, -1.5, 0.4065)
SWEP.IronSightsAng_REFLEX = Vector(0, 0, 0)
SWEP.IronSightsPos_BOA3 = Vector(-3.48, -1.5, 0.49)
SWEP.IronSightsAng_BOA3 = Vector(0, 0, 0)
SWEP.IronSightTime = 0.3

--[Shells]--
SWEP.LuaShellEject = true
SWEP.LuaShellEffect = "ShellEject"
--SWEP.LuaShellModel = "models/entities/tfa_codww2/shells/fx_9mm.mdl"
SWEP.LuaShellSound = "weapon_bo3_shells.shotgun"
SWEP.LuaShellScale = 0.4
SWEP.LuaShellEjectDelay = 0
SWEP.ShellAttachment = "2"
SWEP.EjectionSmokeEnabled = true

--[Jamming]-- Shotgun
SWEP.CanJam = true
SWEP.JamChance = 0.04
SWEP.JamFactor = 0.055

--[Misc]--
SWEP.AmmoTypeStrings = {buckshot = "12 Gauge"}
SWEP.FireModeSound = "weapon_bo3_misc.switch"
SWEP.PickupSound = "weapon_bo3_pickup.ammo"
SWEP.InspectPos = Vector(11, -2, -3)
SWEP.InspectAng = Vector(24, 42, 16)
SWEP.MoveSpeed = 0.95
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.8
SWEP.SafetyPos = Vector(-1, -2, -0.5)
SWEP.SafetyAng = Vector(-15, 25, -20)
SWEP.TracerCount = 1

--[DInventory2]--
SWEP.DInv2_GridSizeX = 2
SWEP.DInv2_GridSizeY = 3
SWEP.DInv2_Volume = nil
SWEP.DInv2_Mass = 4

--[NZombies]--
SWEP.NZPaPName = "Shoeshining 100"
SWEP.Primary.MaxAmmo = 64

function SWEP:NZMaxAmmo()

    local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self:SetClip1( self.Primary.ClipSize )
    end
end

SWEP.Ispackapunched = false
function SWEP:OnPaP()
self.Ispackapunched = true
self.Primary.Damage = 600
self.Primary.Knockback = 15
self.Primary.ClipSize = 25
self.Primary.MaxAmmo = 125
self.MoveSpeed = 1
self.Attachments = {
[1] = {atts = {"bo3_long_barrel"}, order = 1},
[2] = {atts = {"bo3_suppressor"}, order = 2},
[3] = {atts = {"bo3_si_elo","bo3_si_reflex","bo3_si_boa3"}, order = 3},
[5] = {atts = {"bo3_ext_mag"}, order = 5, sel = 1},
[6] = {atts = {"bo3_fast_mag"}, order = 6},
[7] = {atts = {"bo3_ub_laser"}, order = 7},
[9] = {atts = {"bo3_quickdraw"}, order = 9},
[11] = {atts = {"bo3_stock"}, order = 11},
[12] = {atts = {"bo3_rapidfire"}, order = 12},
}
self:ClearStatCache()
return true
end

--[Animations]--
SWEP.Animations = {
}

--[Tables]--
SWEP.StatusLengthOverride = {
	[ACT_VM_RELOAD] = 55 / 35,
	[ACT_VM_RELOAD_EMPTY] = 55 / 35,
	["reload_extmag"] = 55 / 35,
	["reload_empty_extmag"] = 55 / 35,
	["reload_fast"] = 30 / 45,
	["reload_empty_fast"] = 30 / 45,
	["reload_fast_extmag"] = 30 / 45,
	["reload_empty_fast_extmag"] = 30 / 45,
}
SWEP.SequenceRateOverride = {
	["bash"] = 40 / 30,
}
SWEP.SequenceLengthOverride = {
}

SWEP.SprintAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint_in", --Number for act, String/Number for sequence
	},
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint_loop", --Number for act, String/Number for sequence
		["is_idle"] = true
	},
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint_out", --Number for act, String/Number for sequence
	}
}

SWEP.EventTable = {
[ACT_VM_DRAW] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("weapon_bo3_cloth.med") },
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("weapon_bo3_gear.rattle") },
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("weapon_bo3_cloth.med") },
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("weapon_bo3_gear.rattle") },
},
[ACT_VM_DRAW_DEPLOYED] = {
{ ["time"] = 20 / 30, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.button") },
{ ["time"] = 20 / 30, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.bolt_forward") },
},
[ACT_VM_RELOAD] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("weapon_bo3_gear.rattle") },
{ ["time"] = 30 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_out") },
{ ["time"] = 45 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_in") },
},
[ACT_VM_RELOAD_EMPTY] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("weapon_bo3_gear.rattle") },
{ ["time"] = 30 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_out") },
{ ["time"] = 45 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_in") },
{ ["time"] = 80 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.bolt_back") },
{ ["time"] = 85 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.bolt_forward") },
},
--[Extmag]--
["reload_extmag"] = {
{ ["time"] = 1 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_gear.rattle") },
{ ["time"] = 15 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_out") },
{ ["time"] = 35 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_gear.rattle") },
{ ["time"] = 45 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_in") },
},
["reload_empty_extmag"] = {
{ ["time"] = 1 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_gear.rattle") },
{ ["time"] = 15 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_out") },
{ ["time"] = 35 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_gear.rattle") },
{ ["time"] = 45 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_in") },
{ ["time"] = 80 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.bolt_back") },
{ ["time"] = 85 / 35, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.bolt_forward") },
},
--[Fastmag]--
["reload_fast"] = {
{ ["time"] = 1 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_gear.rattle") },
{ ["time"] = 5 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_out") },
{ ["time"] = 20 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_in") },
},
["reload_empty_fast"] = {
{ ["time"] = 1 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_gear.rattle") },
{ ["time"] = 5 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_out") },
{ ["time"] = 20 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_in") },
{ ["time"] = 40 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.bolt_forward") },
},
--[FastExtMag]--
["reload_fast_extmag"] = {
{ ["time"] = 1 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_gear.rattle") },
{ ["time"] = 5 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_out") },
{ ["time"] = 20 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_in") },
},
["reload_empty_fast_extmag"] = {
{ ["time"] = 1 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_gear.rattle") },
{ ["time"] = 5 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_out") },
{ ["time"] = 20 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.mag_in") },
{ ["time"] = 40 / 45, ["type"] = "sound", ["value"] = Sound("weapon_bo3_haymaker.bolt_forward") },
},
}

--[Shit]--
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation
SWEP.SprintBobMult = 0

--[Attachments]--
SWEP.LaserSightModAttachment = 4
SWEP.LaserSightModAttachmentWorld = 4

SWEP.ViewModelBoneMods = {
["tag_flash"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
}

SWEP.WorldModelBoneMods = {
["tag_flash"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
}

SWEP.VElements = {
["default_barrel"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_barrel.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
["default_fastmag"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_fastmag.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["default_bolt"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_bolt.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
["default_grip"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_grip.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
["default_clip"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_mag.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
["sights_folded"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_sights.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
["rail_sights"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_sights_folded.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["default_stock"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_stock.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
-- attachments
--sights
["sight_elo"] = { type = "Model", model = "models/weapons/bo3/shared/attach/c_bo3_elo.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, translucent = true, active = false, bodygroup = {} },
["sight_elo_lens"] = (TFA.BO3 and TFA.BO3.GetHoloSightReticle) and TFA.BO3.GetHoloSightReticle("sight_elo") or nil,
["sight_reflex"] = { type = "Model", model = "models/weapons/bo3/shared/attach/c_bo3_reflex.mdl", bone = "tag_weapon_right", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, translucent = true, active = false, bodygroup = {} },
["sight_reflex_lens"] = (TFA.BO3 and TFA.BO3.GetHoloSightReticle) and TFA.BO3.GetHoloSightReticle("sight_reflex") or nil,
["sight_boa3"] = { type = "Model", model = "models/weapons/bo3/shared/attach/c_bo3_boa3.mdl", bone = "tag_weapon_right", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, translucent = true, active = false, bodygroup = {} },
["sight_boa3_lens"] = (TFA.BO3 and TFA.BO3.GetHoloSightReticle) and TFA.BO3.GetHoloSightReticle("sight_boa3") or nil,
--other
["long_barrel"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_barrel.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["laser"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_dbal.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["laser_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "tag_laser1", rel = "", pos = Vector(0, 0.5, 0), angle = Angle(0, 0, 0), size = Vector(2, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, translucent = true, active = false },
["ext_clip"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_extmag.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["fast_mag"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_fastmag.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["grip"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_grip.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["rapidfire"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_bolt.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["stock"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_stock.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["suppressor"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_suppressor.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
}
SWEP.WElements = {
["default_barrel"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_barrel.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
["default_fastmag"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_fastmag.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["default_bolt"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_bolt.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
["default_grip"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_grip.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
["default_clip"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/w_bo3_haymaker_mag.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
["sights_folded"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_sights.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
["rail_sights"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_sights_folded.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["default_stock"] = { type = "Model", model = "models/weapons/bo3/haymaker/base/c_bo3_haymaker_stock.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
-- attachments
--sights
["sight_elo"] = { type = "Model", model = "models/weapons/bo3/shared/attach/c_bo3_elo.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["sight_reflex"] = { type = "Model", model = "models/weapons/bo3/shared/attach/c_bo3_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["sight_boa3"] = { type = "Model", model = "models/weapons/bo3/shared/attach/c_bo3_boa3.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["scope_recon"] = { type = "Model", model = "models/weapons/bo3/shared/attach/c_bo3_recon.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["scope_varix"] = { type = "Model", model = "models/weapons/bo3/shared/attach/c_bo3_varix_3.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["scope_thermal"] = { type = "Model", model = "models/weapons/bo3/shared/attach/c_bo3_thermal_scope.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
--other
["long_barrel"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_barrel.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["laser"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_dbal.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["ext_clip"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_extmag.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["fast_mag"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_fastmag.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["grip"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_grip.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["rapidfire"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_bolt.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["stock"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_stock.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
["suppressor"] = { type = "Model", model = "models/weapons/bo3/haymaker/attach/c_bo3_haymaker_suppressor.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
}

SWEP.Attachments = {
[1] = {atts = {"bo3_long_barrel"}, order = 1},
[2] = {atts = {"bo3_suppressor"}, order = 2},
[3] = {atts = {"bo3_si_elo","bo3_si_reflex","bo3_si_boa3"}, order = 3},
[5] = {atts = {"bo3_ext_mag"}, order = 5},
[6] = {atts = {"bo3_fast_mag"}, order = 6},
[7] = {atts = {"bo3_ub_laser"}, order = 7},
[9] = {atts = {"bo3_quickdraw"}, order = 9},
[11] = {atts = {"bo3_stock"}, order = 11},
[12] = {atts = {"bo3_rapidfire"}, order = 12},
}

SWEP.AttachmentDependencies     = {}
SWEP.AttachmentExclusions		= {}
SWEP.AttachmentTableOverride	= {
	["bo3_fast_mag"] = {
		["LuaShellModel"] = "models/weapons/bo3/spartan/base/p7_fxp_spartan_shell.mdl",
		["LuaShellScale"] = 1.0,
		["VElements"] = {
			["default_fastmag"] = {
				["active"] = false
			},
		},
		["WElements"] = {
			["default_fastmag"] = {
				["active"] = false
			},
		},
	},
	["bo3_long_barrel"] = {
		["ViewModelBoneMods"] = {
			["tag_flash"] = { scale = Vector(1, 1, 1), pos = Vector(1, 0, 0), angle = Angle(0, 0, 0) },
		},
		["WorldModelBoneMods"] = {
			["tag_flash"] = { scale = Vector(1, 1, 1), pos = Vector(1, 0, 0), angle = Angle(0, 0, 0) },
		},
		["Primary"] = {
			["RangeFalloffLUT"] = {
				bezier = false,
				range_func = "linear",
				units = "meters",
				lut = {
					{range = 20, damage = 1.0},
					{range = 30, damage = 0.7},
					{range = 50, damage = 0.7},
					{range = 60, damage = 0.4},
				}
			},
		},
	},
}
SWEP.AttachmentIconOverride     = {
	["bo3_long_barrel"] = Material("attachments/haymaker/t7_icon_attach_shotgun_fullauto_extbarrel_01_rwd.png", "smooth"),
	["bo3_suppressor"] = Material("attachments/haymaker/t7_icon_attach_shotgun_fullauto_suppressor_01_rwd.png", "smooth"),
	["bo3_ext_mag"] = Material("attachments/haymaker/t7_icon_attach_shotgun_fullauto_extmag_01_rwd.png", "smooth"),
	["bo3_fast_mag"] = Material("attachments/haymaker/t7_icon_attach_shotgun_fullauto_fastmag_01_rwd.png", "smooth"),
	["bo3_ub_laser"] = Material("attachments/haymaker/t7_icon_attach_shotgun_fullauto_laser_01_rwd.png", "smooth"),
	["bo3_quickdraw"] = Material("attachments/haymaker/t7_icon_attach_shotgun_fullauto_quickdraw_01_rwd.png", "smooth"),
	["bo3_stock"] = Material("attachments/haymaker/t7_icon_attach_shotgun_fullauto_extstock_01_rwd.png", "smooth"),
	["bo3_rapidfire"] = Material("attachments/haymaker/t7_icon_attach_shotgun_fullauto_rapidfire_01_rwd.png", "smooth"),
}
