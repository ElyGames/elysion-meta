SWEP.Base = "tfa_gun_base"

SWEP.Spawnable = (TFA and TFA.INS2) and true or false -- INSTALL SHARED PARTS
SWEP.Slot = 4
SWEP.SlotPos = 5
SWEP.Weight = 60

SWEP.PrintName = "Stoner LMG A1"
SWEP.Manufacturer = "Knight's Armament Company"
SWEP.Category = "TFA Insurgency"
SWEP.Author = "YuRaNnNzZZ"

SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIS = false

SWEP.Primary.Sound = Sound("TFA_INS2.WF_MG25.1")

SWEP.Primary.Damage = 88
SWEP.Primary.Knockback = 0
SWEP.Primary.NumShots = 1
SWEP.Primary.Automatic = true
SWEP.Primary.RPM = 630
SWEP.Primary.Velocity = 922 -- m/s

SWEP.DisableChambering = true
SWEP.FiresUnderwater = false

SWEP.IronInSound = Sound("TFA_INS2.IronIn")
SWEP.IronOutSound = Sound("TFA_INS2.IronOut")

SWEP.Primary.ClipSize = 180
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 4
SWEP.Primary.Ammo = "ar2"

SWEP.Primary.KickUp = 0.375
SWEP.Primary.KickDown = 0.35
SWEP.Primary.KickHorizontal = 0.12
SWEP.Primary.StaticRecoilFactor = 0.55

SWEP.Primary.Spread = 5 / 180 -- 5°
SWEP.Primary.IronAccuracy = 4 / 180 -- 4°
SWEP.Primary.SpreadMultiplierMax = 2.1 -- 10.5°
SWEP.Primary.SpreadIncrement = 0.4 -- 2°
SWEP.Primary.SpreadRecovery = 1.4 -- 7°/s

SWEP.Primary.Range = 0.015 * (3280.84 * 16) -- 15m
SWEP.Primary.RangeFalloff = 1

SWEP.IronRecoilMultiplier = 1
SWEP.CrouchAccuracyMultiplier = 0.88

SWEP.MoveSpeed = 0.65
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.85

SWEP.ViewModel = "models/weapons/tfa_ins2/c_wf_mg25.mdl"
SWEP.ViewModelFOV = 65
SWEP.ViewModelFlip = false
SWEP.UseHands = true

SWEP.VMPos = Vector(-0.1, -0.65, -0.5) * 1.3
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = false

SWEP.WorldModel = "models/weapons/tfa_ins2/w_wf_mg25.mdl"
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

SWEP.IronSightsPos = Vector(-3.975, -4, 0.52)
SWEP.IronSightsAng = Vector(0.1, 0, 0)
SWEP.Secondary.IronFOV = 80

SWEP.IronSightsPos_Kobra = Vector(-3.976, -4, -0.468)
SWEP.IronSightsAng_Kobra = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_Kobra = 60

SWEP.IronSightsPos_EOTech = Vector(-3.976, -4, -0.456)
SWEP.IronSightsAng_EOTech = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_EOTech = 60

SWEP.IronSightsPos_RDS = Vector(-3.975, -4, -0.458)
SWEP.IronSightsAng_RDS = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_RDS = 60

SWEP.IronSightsPos_2XRDS = Vector(-3.973, -4, -0.46)
SWEP.IronSightsAng_2XRDS = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_2XRDS = 60

SWEP.IronSightsPos_C79 = Vector(-3.975, -4, -0.589)
SWEP.IronSightsAng_C79 = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_C79 = 65

SWEP.IronSightsPos_PO4X = Vector(-3.911, -4, -0.122)
SWEP.IronSightsAng_PO4X = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_PO4X = 65

SWEP.InspectPos = Vector(10, -6, -3.5)
SWEP.InspectAng = Vector(20, 40, 10)

SWEP.StatusLengthOverride = {
	["base_reload"] = 234 / 31.5,
	["base_reload_empty"] = 298 / 31.5,
	["base_reload_half"] = 259 / 31.5,
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
SWEP.MuzzleFlashEffect = "tfa_muzzleflash_rifle"

SWEP.LuaShellEject = true
SWEP.LuaShellEffect = "RifleShellEject"

SWEP.TracerCount = 3

SWEP.ViewModelBoneMods = {}
SWEP.WorldModelBoneMods = {
	["ATTACH_Laser"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(180, 0, 0) },
}

SWEP.VElements = {
	["sight_kobra"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_kobra_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_kobra_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_kobra") or nil,
	["sight_eotech"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_eotech.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_eotech_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_eotech") or nil,
	["sight_rds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimpoint.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_rds_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_rds") or nil,
	["scope_2xrds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimp2x.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_c79"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_elcan_m.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_po4x"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_po4x24_m.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },

	["laser"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_laser_band.mdl", bone = "A_LaserFlashlight", rel = "", pos = Vector(-0.29, 0, 0), angle = Angle(0, 0, 180), size = Vector(0.76, 0.76, 0.76), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["laser_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "A_Beam", rel = "laser", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(2, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },

	["flashlight"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_flashlight_band.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = false },

	["sights_folded"] = { type = "Quad", bone = "", rel = "", pos = vector_origin, angle = angle_origin, size = 1, active = true},
}

SWEP.WElements = {
	["sight_kobra"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_kobra.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["sight_eotech"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_eotech.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["sight_rds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_aimpoint.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["scope_2xrds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_magaim.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["scope_c79"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_elcan.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["scope_po4x"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_po.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },

	["laser"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_laser_ins.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },

	["sights_folded"] = { type = "Quad", bone = "", rel = "", pos = vector_origin, angle = angle_origin, size = 1, active = true},
}

SWEP.Attachments = {
	[2] = { atts = { "ins2_si_kobra", "ins2_si_eotech", "ins2_si_rds", "ins2_si_2xrds", "ins2_si_c79", "ins2_si_po4x" } },
	[3] = { atts = { "ins2_ub_laser", "ins2_ub_flashlight" } },
	[4] = { atts = { "am_match", "am_magnum" } },
}

SWEP.LaserSightModAttachment = 1
SWEP.LaserSightModAttachmentWorld = 6
SWEP.LaserDotISMovement = true

DEFINE_BASECLASS(SWEP.Base)

local m_C = math.Clamp
SWEP.MaxBeltBG = 7

function SWEP:UpdateBeltBG(vm)
	local target = self:Clip1()

	if self:GetStatus() == TFA.Enum.STATUS_RELOADING then -- we predict next clip1 when reloading
		target = self:Clip1() + self:Ammo1()
	end

	if self.IsChambered then -- we draw (clip1 - 1) bullets if weapon is chambered
		target = target - 1
	end

	self.Bodygroups_V["Belt"] = m_C(target, 0, self.MaxBeltBG) -- assuming we have at least X meshes in Belt bodygroup (first one is blank or empty mag insides)
end

SWEP.EventTable = {
	["base_ready"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.Draw"), client = true, server = false},
		{time = 23 / 30, type = "sound", value = Sound("TFA_INS2.WF_MG25.Boltback")},
		{time = 33 / 30, type = "sound", value = Sound("TFA_INS2.WF_MG25.Boltrelease")},
		{time = 56 / 30, type = "sound", value = Sound("TFA_INS2.WF_MG25.Shoulder")},
	},
	["base_draw"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.Draw"), client = true, server = false},
	},
	["base_holster"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.Holster"), client = true, server = false},
	},
	["base_dryfire"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.WF_MG25.Empty")},
	},
	["base_reload"] = {
		{time = 2 / 31.5, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 31 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.CoverOpen")},
		{time = 80 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.MagoutFull")},
		{time = 100 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.ArmMovement_01"), client = true, server = false},
		{time = 120 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.FetchMag")},
		{time = 141 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.MagHit")},
		{time = 146 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.Magin")},
		{time = 176 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.BeltJingle")},
		{time = 186 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.BeltAlign")},
		{time = 205 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.ArmMovement_01"), client = true, server = false},
		{time = 215 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.CoverClose")},
		{time = 233 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.Boltrelease")},
		{time = 263 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.Shoulder"), client = true, server = false},

		{["time"] = 120 / 31.5, ["type"] = "lua", ["value"] = SWEP.UpdateBeltBG},
	},
	["base_reload_empty"] = {
		{time = 2 / 31.5, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 23 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.Boltback")},
		{time = 33 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.Boltrelease")},
		{time = 60 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.ArmMovement_01"), client = true, server = false},
		{time = 95 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.CoverOpen")},
		{time = 145 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.Magout")},
		{time = 165 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.ArmMovement_01"), client = true, server = false},
		{time = 183 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.FetchMag")},
		{time = 205 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.MagHit")},
		{time = 210 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.Magin")},
		{time = 236 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.BeltAlign")},
		{time = 253 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.BeltJingle")},
		{time = 268 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.ArmMovement_01"), client = true, server = false},
		{time = 279 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.CoverClose")},
		{time = 296 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.Boltrelease")},
		{time = 327 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.Shoulder"), client = true, server = false},

		{["time"] = 180 / 31.5, ["type"] = "lua", ["value"] = SWEP.UpdateBeltBG},
	},
	["base_reload_half"] = {
		{time = 2 / 31.5, type = "sound", value = Sound("TFA_INS2.LeanIn"), client = true, server = false},
		{time = 31 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.CoverOpen")},
		{time = 60 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.ThrowAway")},
		{time = 106 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.Magout")},
		{time = 120 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.ArmMovement_01"), client = true, server = false},
		{time = 150 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.FetchMag")},
		{time = 168 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.MagHit")},
		{time = 171 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.Magin")},
		{time = 198 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.BeltJingle")},
		{time = 212 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.BeltAlign")},
		{time = 225 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.ArmMovement_01"), client = true, server = false},
		{time = 241 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.CoverClose")},
		{time = 257 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.Boltrelease")},
		{time = 288 / 31.5, type = "sound", value = Sound("TFA_INS2.WF_MG25.Shoulder"), client = true, server = false},

		{["time"] = 145 / 31.5, ["type"] = "lua", ["value"] = SWEP.UpdateBeltBG},
	},

	["iron_dryfire"] = {
		{time = 0, type = "sound", value = Sound("TFA_INS2.WF_MG25.Empty")},
	},
}

function SWEP:Think2(...)
	-- update belt bg on think except when reloading
	if self:GetStatus() ~= TFA.Enum.STATUS_RELOADING then
		self:UpdateBeltBG()
	end

	-- update ironsights bodygroup from fake velement, using think2 for sights patchers
	self.Bodygroups_V["Ironsights"] = self:GetStat("VElements.sights_folded.active") and 0 or 1
	self.Bodygroups_W["Ironsights"] = self:GetStat("WElements.sights_folded.active") and 0 or 1

	return BaseClass.Think2(self, ...)
end

-- Feel free to reuse bodygroup belt/magazine code as long as me and TFA get proper credits for it ~ YuRaNnNzZZ

do -- LMG nearly-empty reload animation (belt drop)
	SWEP.Animations = {
		["reload_half"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ,
			["value"] = "base_reload_half"
		}
	}

	local typev, tanim

	function SWEP:ChooseReloadAnim()
		if not self:VMIV() then return false, 0 end

		if self:Clip1() == 0 or self:IsJammed() then
			typev, tanim = self:ChooseAnimation("reload_empty")
		elseif self:Clip1() <= self.MaxBeltBG then
			typev, tanim = self:ChooseAnimation("reload_half")
		else
			typev, tanim = self:ChooseAnimation("reload")
		end

		if typev ~= TFA.Enum.ANIMATION_SEQ then
			return self:SendViewModelAnim(tanim)
		else
			return self:SendViewModelSeq(tanim)
		end
	end
end
