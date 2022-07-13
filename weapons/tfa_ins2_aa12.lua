SWEP.Base = "tfa_gun_base"

SWEP.Spawnable = (TFA and TFA.INS2) and true or false -- INSTALL SHARED PARTS
SWEP.Slot = 3
SWEP.SlotPos = 5
SWEP.Weight = 60

SWEP.PrintName = "AA-12"
SWEP.Manufacturer = "Maxwell Atchisson"
SWEP.Category = "TFA Insurgency"
SWEP.Author = "YuRaNnNzZZ"
SWEP.Type = "Shotgun"

SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIS = false

SWEP.Primary.Sound = Sound("TFA_INS2.WF_SHG21.1")
SWEP.Primary.SilencedSound = Sound("TFA_INS2.WF_SHG21.2")

SWEP.Primary.Damage = 11.5
SWEP.Primary.Knockback = 0
SWEP.Primary.NumShots = 10
SWEP.Primary.Automatic = true
SWEP.Primary.RPM = 270
SWEP.Primary.Velocity = 350 -- m/s

SWEP.DisableChambering = true
SWEP.FiresUnderwater = false

SWEP.IronInSound = Sound("TFA_INS2.IronIn")
SWEP.IronOutSound = Sound("TFA_INS2.IronOut")

SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 4
SWEP.Primary.Ammo = "buckshot"

SWEP.Primary.KickUp = 1.15
SWEP.Primary.KickDown = 1.1
SWEP.Primary.KickHorizontal = 0.24
SWEP.Primary.StaticRecoilFactor = 0.55

SWEP.Primary.Spread = 10.5 / 180
SWEP.Primary.IronAccuracy = 10.5 / 180
SWEP.Primary.SpreadMultiplierMax = 2.35
SWEP.Primary.SpreadIncrement = .18
SWEP.Primary.SpreadRecovery = .55

SWEP.Primary.Range = 0.02 * (3280.84 * 16)
SWEP.Primary.RangeFalloff = .6

SWEP.IronRecoilMultiplier = 1
SWEP.CrouchAccuracyMultiplier = 0.88

SWEP.MoveSpeed = 0.9
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.8

SWEP.ViewModel = "models/weapons/tfa_ins2/c_aa12.mdl"
SWEP.ViewModelFOV = 65
SWEP.ViewModelFlip = false
SWEP.UseHands = true

SWEP.VMPos = Vector(0, 0, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = false

SWEP.WorldModel = "models/weapons/tfa_ins2/w_aa12.mdl"
SWEP.HoldType = "ar2"

SWEP.Offset = {
	Pos = {
		Up = -1,
		Right = 0.964,
		Forward = 4
	},
	Ang = {
		Up = 0,
		Right = -8,
		Forward = 180
	},
	Scale = 1
}

SWEP.RunSightsPos = Vector(2.4, -1.6, -0.8)
SWEP.RunSightsAng = Vector(-24, 32, -32)

SWEP.data = {}
SWEP.data.ironsights = 1

SWEP.IronSightsPos = Vector(-3.42, -4, -0.08)
SWEP.IronSightsAng = Vector(0.14, 0, 0)
SWEP.Secondary.IronFOV = 90 * .7

SWEP.InspectPos = Vector(10, -6, -3.5)
SWEP.InspectAng = Vector(20, 40, 10)

SWEP.StatusLengthOverride = {
	["base_reload"] = 118 / 30,
	["base_reloadempty"] = 118 / 30,
	["foregrip_reload"] = 118 / 30,
	["foregrip_reload_empty"] = 118 / 30,
}

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI
SWEP.SprintBobMult = 0

SWEP.IronAnimation = {
	["shoot"] = {
		["type"] = TFA.Enum.ANIMATION_ACT,
		["value"] = ACT_VM_PRIMARYATTACK_1,
		["value_empty"] = ACT_VM_PRIMARYATTACK_3
	}
}

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "base_sprint",
		["is_idle"] = true
	}
}

SWEP.MuzzleAttachment = "muzzle"
SWEP.ShellAttachment = "shell"
SWEP.MuzzleFlashEffect = "tfa_muzzleflash_shotgun"

SWEP.LuaShellEject = true
SWEP.LuaShellEffect = "RifleShellEject"

SWEP.TracerCount = 3

SWEP.ViewModelBoneMods = {
	["A_Foregrip"] = { scale = Vector(.5, .5, .5), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
}
SWEP.WorldModelBoneMods = {
	["ATTACH_Laser"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(180, 0, 0) },
}

SWEP.VElements = {
	["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_suppressor_12ga.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = false },
	["foregrip"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_foregrip_sec2.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = false },

	["laser"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_laser_band.mdl", bone = "A_LaserFlashlight", rel = "", pos = Vector(-0.29, 0, 0), angle = Angle(0, 0, 180), size = Vector(0.76, 0.76, 0.76), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["laser_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "A_Beam", rel = "laser", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(2, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },

	["flashlight"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_flashlight_band.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = false },
}

SWEP.WElements = {
	["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_sil_sec1.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = false },
	["foregrip"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_foregrip_sec2.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = false },

	["laser"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_laser_ins.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
}

SWEP.Attachments = {
	[1] = { atts = { "ins2_br_supp" } },
	[2] = { atts = { "ins2_fg_grip" } },
	[3] = { atts = { "ins2_ub_laser", "ins2_ub_flashlight" } },
	[4] = { atts = { "sg_frag", "sg_slug" } },
}

SWEP.LaserSightModAttachment = 1
SWEP.LaserSightModAttachmentWorld = 5
SWEP.LaserDotISMovement = true

SWEP.EventTable = {
	["base_ready"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.Draw"), client = true, server = false},
		{time = 30 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.BoltBack")},
		{time = 44 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.BoltForward")},
		{time = 48 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 60 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
	},
	["base_draw"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.Draw"), client = true, server = false},
	},
	["base_dryfire"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.WF_SHG21.Empty")},
	},
	["base_holster"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.Holster"), client = true, server = false},
	},
	["base_reload"] = {
		{time = 12 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 30 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.WpnUp")},
		{time = 37 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.ClipOut")},
		{time = 40 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 66 / 30, type = "sound", value = Sound("TFA_INS2.Holster"), client = true, server = false},
		{time = 80 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 114 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.ClipIn")},
		{time = 118 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.ClipLock")},
		{time = 141 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
	},
	["base_reloadempty"] = {
		{time = 6 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 12 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 38 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.WpnUp")},
		{time = 50 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.ClipOut")},
		{time = 68 / 30, type = "sound", value = Sound("TFA_INS2.Holster"), client = true, server = false},
		{time = 102 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 112 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.ClipIn")},
		{time = 117 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.ClipLock")},
		{time = 126 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 142 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 143 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.BoltBack")},
		{time = 155 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.BoltForward")},
		{time = 157 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 167 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
	},
	["iron_dryfire"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.WF_SHG21.Empty")},
	},

	["foregrip_ready"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.Draw"), client = true, server = false},
		{time = 30 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.BoltBack")},
		{time = 44 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.BoltForward")},
		{time = 48 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 60 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
	},
	["foregrip_draw"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.Draw"), client = true, server = false},
	},
	["foregrip_dryfire"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.WF_SHG21.Empty")},
	},
	["foregrip_holster"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.Holster"), client = true, server = false},
	},
	["foregrip_reload"] = {
		{time = 12 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 30 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.WpnUp")},
		{time = 37 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.ClipOut")},
		{time = 40 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 66 / 30, type = "sound", value = Sound("TFA_INS2.Holster"), client = true, server = false},
		{time = 80 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 114 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.ClipIn")},
		{time = 118 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.ClipLock")},
		{time = 141 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
	},
	["foregrip_reload_empty"] = {
		{time = 6 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 12 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 38 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.WpnUp")},
		{time = 50 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.ClipOut")},
		{time = 68 / 30, type = "sound", value = Sound("TFA_INS2.Holster"), client = true, server = false},
		{time = 102 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 112 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.ClipIn")},
		{time = 117 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.ClipLock")},
		{time = 126 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 142 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 143 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.BoltBack")},
		{time = 155 / 30, type = "sound", value = Sound("TFA_INS2.WF_SHG21.BoltForward")},
		{time = 157 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 167 / 30, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
	},
	["foregrip_iron_dryfire"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.WF_SHG21.Empty")},
	},
}
