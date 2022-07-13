-- Variables that are used on both client and server
SWEP.Gun = ("gauss_rifle") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "Crysis Weapons" --Category where you will find your weapons
SWEP.Author				= "Ballsek"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.PrintName				= "Gauss Rifle"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 4			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- Set false if you want no crosshair from hip
SWEP.Weight				= 30			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= false		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.BoltAction				= false		-- Is this a bolt action rifle?
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_gaussrif.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_gaussrif.mdl"	-- Weapon world model
SWEP.ShowWorldModel			= false
SWEP.Base 				= "snipgauss_scoped_base" --the Base this weapon will work on. PLEASE RENAME THE BASE!
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("gauss_fire")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 60		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 10		-- Size of a clip
SWEP.Primary.DefaultClip			= 40	-- Bullets you start with
SWEP.Primary.KickUp			= .10				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= .1			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= .1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "ar2"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.ScopeZoom			= 6
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= true	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	

SWEP.data 				= {}
SWEP.data.ironsights			= 1 
SWEP.ScopeScale 			= 0.5
SWEP.ReticleScale 				= 0.6

SWEP.Primary.Damage		= 300	--base damage per bullet
SWEP.Primary.Spread		= .025	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .00001 -- ironsight accuracy, should be the same for shotguns

-- enter iron sight info and bone mod info below

SWEP.IronSightsPos = Vector (0, 0, 0)
SWEP.IronSightsAng = Vector (0, 0, 0)
SWEP.RunSightsPos = Vector(2.119, -1.609, -4.281)
SWEP.RunSightsAng = Vector(0, 52.763, -23.921)

SWEP.WElements = {
	["gauss_rifle"] = { type = "Model", model = "models/weapons/w_gaussrif.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.046, 1.046, 0), angle = Angle(-4.706, 2.352, 180), size = Vector(0.89, 0.89, 0.89), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}