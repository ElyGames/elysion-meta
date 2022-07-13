SWEP.Base = "tfa_melee_base"
SWEP.Category = "Nopeful's Randoms"
SWEP.PrintName = "Corvo Blade"

SWEP.ViewModel = "models/weapons/corvosword/c_corvo_blade.mdl"
SWEP.WorldModel = "models/weapons/corvosword/corvosword.mdl"
SWEP.ViewModelFlip = true
SWEP.ViewModelFOV = 80
SWEP.UseHands = true
SWEP.HoldType = "knife"

SWEP.Primary.Directional = false

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.DisableIdleAnimations = false

SWEP.ViewModelBoneMods = {
	["bone_CSOKATANA"] = { scale = Vector(.90, .90, .90), pos = Vector(.25, .25, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Hand"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger0"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger01"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger02"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger03"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger04"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger1"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger11"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger12"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger2"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger21"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger22"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger3"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger32"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger4"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Finger42"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_Ulna"] = { scale = Vector(0, 0, 0), pos = Vector(180, 0, 0), angle = Angle(0, 0, 0) },
-- ["ValveBiped.Bip01_R_UpperArm"] = { scale = Vector(0, 0, 0), pos = Vector(90, 0, 0), angle = Angle(180, 0, 0) },
	}

SWEP.Secondary.CanBash = false

SWEP.VMPos = Vector(0,0,0)
SWEP.VMAng = Vector(0, 0, 0)


SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -2,
        Right = 1,
        Forward = 2.6,
        },
        Ang = {
        Up = 90,
        Right = -10,
        Forward = 175
        },
		Scale = 0.75
}

sound.Add({
	['name'] = "NopeCorvoBlade.Draw",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/dishonored/corvo/draw.ogg" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "NopeCorvoBlade.Slash1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/dishonored/corvo/slash_1.ogg" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "NopeCorvoBlade.Slash2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/dishonored/corvo/slash_2.ogg" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "NopeCorvoBlade.Stab",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/dishonored/corvo/stab.ogg" },
	['pitch'] = {95,105}
})
sound.Add({
	['name'] = "NopeCorvoBlade.Hit",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/dishonored/corvo/hit_1.ogg", "weapons/dishonored/corvo/hit_2.ogg" },
	['pitch'] = {95,105}
})

sound.Add({
	['name'] = "NopeCorvoBlade.Retract",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/dishonored/corvo/retract.ogg" },
	['pitch'] = {95,105}
})
//sound.Add({
//	['name'] = "SerpentBlade.HitWorld",
//	['channel'] = CHAN_STATIC,
//	['sound'] = { "weapons/tfa_cso/beamsword/hit_wall_1.ogg", "weapons/tfa_cso/beamsword/hit_wall_2.ogg" },
//	['pitch'] = {95,105}
//})
sound.Add({
	['name'] = "TFABaseMelee.Null",
	['channel'] = CHAN_STATIC,
	['sound'] = { "common/null.ogg" },
	['pitch'] = {95,105}
})

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 8*8, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(0,0,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 55, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.18, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.15,
		["viewpunch"] = Angle(0,3,-2), --viewpunch angle
		['end'] = 0.4, --time before next attack
		['hull'] = 24, --Hullsize
		['direction'] = "W", --Swing dir,
		['hitflesh'] = "SerpentBlade.Hit",
		['hitworld'] = "Weapon_Knife.HitWall"
	},
	{
		['act'] = ACT_VM_SECONDARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 8*8, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(0,0,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 75, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.15, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.15,
		["viewpunch"] = Angle(0,-3,2), --viewpunch angle
		['end'] = 0.4, --time before next attack
		['hull'] = 24, --Hullsize
		['direction'] = "W", --Swing dir,
		['hitflesh'] = "SerpentBlade.Hit",
		['hitworld'] = "Weapon_Knife.HitWall"
	}
}

SWEP.Secondary.Attacks = {
	{
		['act'] = ACT_VM_RELOAD, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 8*8, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-15,20,30), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 120, --This isn't overpowered enough, I swear!!
		['dmgtype'] = bit.bor(DMG_SLASH,DMG_ALWAYSGIB), --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.5, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.5,
		["viewpunch"] = Angle(0,10,5), --viewpunch angle
		['end'] = 1.2, --time before next attack
		['hull'] = 24, --Hullsize
		['direction'] = "S", --Swing dir,
		['hitflesh'] = "SerpentBlade.Hit",
		['hitworld'] = "Weapon_Knife.HitWall"
	}
}