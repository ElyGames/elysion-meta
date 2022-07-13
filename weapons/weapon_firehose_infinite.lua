SWEP.PrintName = "vFire Hose Inf."
SWEP.Author = "Milk"
SWEP.Category = "VFire - Milk's Weapons"
SWEP.Contact = "https://steamcommunity.com/profiles/76561198066661394/"
SWEP.Purpose = "To extinguish fire!"
SWEP.Instructions = "Shoot into a fire, to extinguish it."
SWEP.AdminOnly = true
SWEP.Base = "weapon_firehose"

SWEP.SlotPos = 36
SWEP.IsInfinite = true
SWEP.Spawnable = true

SWEP.Primary.Ammo = "none"

function SWEP:Ammo1()
	return 500
end

if ( SERVER ) then return end

SWEP.WepSelectIcon = Material( "icons/inf.png" )

function SWEP:CustomAmmoDisplay()
	return { Draw = false }
end
