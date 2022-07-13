-- Variables that are used on both client and server
SWEP.Gun = ("tfa_zenith10mm") -- must be the name of your swep but NO CAPITALS!

SWEP.Category				= "TFA Deus Ex"
SWEP.Author				= "Haz_Mat_Wolf"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Zenith"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 1			-- Slot in the weapon selection menu
SWEP.SlotPos				= 70			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 35			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "pistol"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/tfa_haz_mat_wolf/c_zenith.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/tfa_haz_mat_wolf/pistol.mdl"	-- Weapon world model
SWEP.UseHands               = true
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("TFA_ZENITH10MM1")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 350			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 10		-- Size of a clip
SWEP.Primary.DefaultClip		= 40		-- Bullets you start with
SWEP.Primary.KickUp				= 0.6		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.0		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false	    -- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "pistol"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.SelectiveFire		= false

SWEP.Secondary.IronFOV			= 70		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 40	-- Base damage per bullet
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

SWEP.InspectPos = Vector(6.853, -20, -1.417) --Replace with a vector, in style of ironsights position, to be used for inspection
SWEP.InspectAng = Vector(70, 37.41, 45.169) --Replace with a vector, in style of ironsights angle, to be used for inspection

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-2.76, 0, 1.679)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(-1.24, 0, 2.3)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector (1.519, 0, 2.88)
SWEP.RunSightsAng = Vector (-17.948, 7.697, 0)
SWEP.InspectPos = Vector(1.373, -9.987, -6.91) --Replace with a vector, in style of ironsights position, to be used for inspection
SWEP.InspectAng = Vector(42.536, 18.676, 0) --Replace with a vector, in style of ironsights angle, to be used for inspection
SWEP.VMPos = Vector(-1.52, 0, -0.721) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position. 
SWEP.VMAng = Vector(0,0,0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle. 

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -1.5,
        Right = 1.5,
        Forward = 6,
        },
        Ang = {
        Up = 0,
        Right = 3,
        Forward = 178
        },
		Scale = 1
}

if GetConVar("sv_tfa_default_clip") == nil then
	print("sv_tfa_default_clip is missing!  You might've hit the lua limit.  Contact the SWEP author(s).")
else
	if GetConVar("sv_tfa_default_clip"):GetInt() != -1 then
		SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * GetConVar("sv_tfa_default_clip"):GetInt()
	end
end

if GetConVar("sv_tfa_unique_slots") != nil then
	if not (GetConVar("sv_tfa_unique_slots"):GetBool()) then 
		SWEP.SlotPos = 2
	end
end
