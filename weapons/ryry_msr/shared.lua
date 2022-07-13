-- Variables that are used on both client and server
SWEP.Gun = ("ryry_msr") -- must be the name of your swep but NO CAPITALS!	
SWEP.Category				= "Ryry's Sniper Rifles"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment		= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "MW3 MSR"		-- Weapon name (Shown on HUD)	
SWEP.Slot					= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 3			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- Set false if you want no crosshair from hip
SWEP.XHair				= false		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.Weight					= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.BoltAction				= true		-- Is this a bolt action rifle?
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 69
SWEP.ViewModelFlip			= true
SWEP.ViewModel				= "models/weapons/v_ryry_mwmsr.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_smg1.mdl"	-- Weapon world model
SWEP.ShowWorldModel 			= false
SWEP.Base 				= "ryry_scoped_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("ryrymw3msr33.Single")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 40		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 8		-- Size of a clip
SWEP.Primary.DefaultClip		= 80	-- Bullets you start with
SWEP.Primary.KickUp				= 0.8			-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.8			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.7		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.ScopeZoom		= 8	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= true	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	
SWEP.Secondary.UseAimpoint		= false
SWEP.Secondary.UseMatador		= false

SWEP.data 				= {}
SWEP.data.ironsights		= 1
SWEP.ScopeScale 			= 0.7
SWEP.ReticleScale 			= 0.6

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 200	--base damage per bullet
SWEP.Primary.Spread		= .1	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- ironsight accuracy, should be the same for shotguns

-- enter iron sight info and bone mod info below

SWEP.SightsPos = Vector(3.48, -2.984, 0.671)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(-4.465, -10.393, -0.999)
SWEP.RunSightsAng = Vector(0, -70, 0)

SWEP.WElements = {
	["mw3msrw"] = { type = "Model", model = "models/weapons/w_ryry_mwmsr.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-3.247, -0.886, 3.394), angle = Angle(-13.429, -18.424, -176.719), size = Vector(1.271, 1.271, 1.271), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}