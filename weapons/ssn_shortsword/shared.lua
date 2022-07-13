SWEP.Base = "tfa_melee_base"
SWEP.Category = "Nopeful's Randoms"
SWEP.PrintName = "Short Sword"
SWEP.ViewModel = "models/weapons/ssn/c_shortsword_ssn.mdl"
SWEP.ViewModelFOV = 45
SWEP.VMPos = Vector(0, 0, 0)
SWEP.UseHands = true
SWEP.CameraOffset = Angle(0, 0, 0)
SWEP.InspectPos = Vector(0, 0, 0)
SWEP.InspectAng = Vector(0, 0, 0)
SWEP.WorldModel = "models/weapons/ssn/Sword_short.mdl"
SWEP.HoldType = "melee2"
SWEP.Primary.Directional = true
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.DisableIdleAnimations = false
SWEP.Secondary.Automatic = false

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = 1,
        Right = 1,
        Forward = 2,
        },
        Ang = {
        Up = 180,
        Right = -90,
        Forward = 178
        },
		Scale = 1
}

SWEP.Primary.Attacks = {
	{
		["act"] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 10 * 5.5, -- Trace distance
		["dir"] = Vector(90, 0, 0), -- Trace arc cast
		["dmg"] = 70, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.1, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "NOPE_SSN.Swing", -- Sound ID
		["snd_delay"] = 0,
		["viewpunch"] = Angle(1, -5, 0), --viewpunch angle
		["end"] = 0.8, --time before next attack
		["hull"] = 8, --Hullsize
		["direction"] = "R", --Swing dir,
		["hitflesh"] = "NOPE_SSN.HitFlesh",
		["hitworld"] = "NOPE_SSN.HitWorld"
	}
}

SWEP.Secondary.Attacks = {
	{
		["act"] = ACT_VM_SECONDARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 10 * 5.5, -- Trace distance
		["dir"] = Vector(-90, 0, 0), -- Trace arc cast
		["dmg"] = 65, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.1, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "NOPE_SSN.Swing", -- Sound ID
		["snd_delay"] = 0.1,
		["viewpunch"] = Angle(1, 5, 0), --viewpunch angle
		["end"] = 0.8, --time before next attack
		["hull"] = 4, --Hullsize
		["direction"] = "L", --Swing dir,
		["hitflesh"] = "NOPE_SSN.HitFlesh",
		["hitworld"] = "NOPE_SSN.HitWorld"
	}
}

SWEP.AllowSprintAttack = false

SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_HYBRID-- ANI = mdl, Hybrid = ani + lua, Lua = lua only
SWEP.SprintAnimation = {	
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint_loop", --Number for act, String/Number for sequence
		["is_idle"] = true
	},--looping animation
	
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint_out", --Number for act, String/Number for sequence
		["transition"] = true
	} --Outward transition
}
SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(0, 0, 0)


SWEP.CanBlock = true
SWEP.BlockAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_DEPLOY, --Number for act, String/Number for sequence
		["transition"] = true
	}, --Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_IDLE_DEPLOYED, --Number for act, String/Number for sequence
		["is_idle"] = true
	},--looping animation
	["hit"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_RELOAD_DEPLOYED, --Number for act, String/Number for sequence
		["is_idle"] = true
	},--when you get hit and block it
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_UNDEPLOY, --Number for act, String/Number for sequence
		["transition"] = true
	} --Outward transition
}
SWEP.BlockCone = 135 --Think of the player's view direction as being the middle of a sector, with the sector's angle being this
SWEP.BlockDamageMaximum = 0.0 --Multiply damage by this for a maximumly effective block
SWEP.BlockDamageMinimum = 0.3 --Multiply damage by this for a minimumly effective block
SWEP.BlockTimeWindow = 100 --Time to absorb maximum damage
SWEP.BlockTimeFade = 0.5 --Time for blocking to do minimum damage.  Does not include block window
SWEP.BlockSound = "NOPE_SSN.Block"
SWEP.BlockDamageCap = 100
SWEP.BlockDamageTypes = {
	DMG_SLASH,DMG_CLUB,DMG_BULLET
}

SWEP.Secondary.CanBash = false
SWEP.Secondary.BashDamage = 60
SWEP.Secondary.BashDelay = 0.25
SWEP.Secondary.BashLength = 16 * 5.5

SWEP.SequenceLengthOverride = {
	[ACT_VM_HITCENTER] = 0.8
}

-- SWEP.ViewModelBoneMods = {
	-- ["RightHandIndex1_1stP"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(1.802, -9.856, 0) },
	-- ["RightHandIndex1_1stP"] = {
		-- scale = Vector(1, 1, 1),
		-- pos = Vector(0, 0, 0),
		-- angle = Angle(1.802, 0.856, 0)
	-- },
	-- ["RightHandIndex2_1stP"] = {
		-- scale = Vector(1, 1, 1),
		-- pos = Vector(0, 0, 0),
		-- angle = Angle(0, -3, 0)
	-- },
	-- ["RW_Weapon"] = {
		-- scale = Vector(1, 1, 1),
		-- pos = Vector(0, 0, 0),
		-- angle = Angle(0, 0, 1.5)
	-- },
	-- ["RightHandMiddle1_1stP"] = {
		-- scale = Vector(1, 1, 1),
		-- pos = Vector(0, 0, 0),
		-- angle = Angle(0, -10.386, 0)
	-- }
-- }

-- SWEP.InspectionActions = {ACT_VM_RECOIL1, ACT_VM_RECOIL2, ACT_VM_RECOIL3}