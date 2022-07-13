SWEP.Base = "yurie_eft_melee_base"
SWEP.Author = "YuRaNnNzZZ"
SWEP.Category = "TFA Escape From Tarkov"
SWEP.PrintName = "SP-8 Survival Machete"
SWEP.ViewModel = "models/yurie/eft/weapons/ontario_sp-8.mdl"
SWEP.ViewModelFOV = 65
SWEP.UseHands = true
SWEP.WorldModel = "models/yurie/eft/weapons/world/ontario_sp-8.mdl"
SWEP.HoldType = "melee"

SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.5
SWEP.AdminOnly = false

SWEP.Primary.Damage = 28
SWEP.Secondary.Damage = 37
include("weapons/yurie_eft_melee_base/pre.lua")

SWEP.Primary.Attacks = {
	{
		["act"] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 52.5, -- Trace distance
		["dir"] = Vector(-15, 52.5, -5), -- Trace arc cast
		["dmg"] = SWEP.Primary.Damage, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["force"] = 12,
		["delay"] = 0.22535693528128, --Delay
		["spr"] = false, --Allow attack while sprinting?
		["snd"] = "YURIE_EFT.Knife_Bayonet.Swing", -- Sound ID
		["snd_delay"] = 0.2,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.7333336, --time before next attack
		["hull"] = 10, --Hullsize
		["direction"] = "L", --Swing dir,
		["hitflesh"] = "YURIE_EFT.Knife_Bayonet.Hit",
		["hitworld"] = "YURIE_EFT.Knife_Bayonet.HitWall",
	}
}
SWEP.Secondary.Attacks = {
	{
		["act"] = ACT_VM_SECONDARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 63, -- Trace distance
		["dir"] = Vector(-5, 63, 5), -- Trace arc cast
		["dmg"] = SWEP.Secondary.Damage, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["force"] = 16,
		["delay"] = 0.2720403, --Delay
		["spr"] = false, --Allow attack while sprinting?
		["snd"] = "YURIE_EFT.Knife_Bayonet.Swing", -- Sound ID
		["snd_delay"] = 0.2565,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 1, --time before next attack
		["hull"] = 10, --Hullsize
		["direction"] = "F", --Swing dir,
		["hitflesh"] = "YURIE_EFT.Knife_Bayonet.Hit",
		["hitworld"] = "YURIE_EFT.Knife_Bayonet.HitWall",
	}
}

SWEP.InspectPos = Vector(10, -8, 12)
SWEP.InspectAng = Vector(28, 50, 50)

if surface and surface.GetTextureID then
	SWEP.WepSelectIcon = surface.GetTextureID("yurie/eft/icons/hud/weapon_ontario_sp-8")
end
if killicon and killicon.Add then
	killicon.Add("yurie_eft_ontario_sp-8", "yurie/eft/icons/death/weapon_ontario_sp-8", Color(255, 80, 0, 255))
end

include("weapons/yurie_eft_melee_base/post.lua")