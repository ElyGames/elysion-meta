
SWEP.Category				= "TFA Shotguns"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Double Barrel Shotgun"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 21			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "shotgun"	-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/tfa_v_doublebarrl.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/tfa_w_double_barrel_shotgun.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("Double_Barrel.Single")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 1200		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 2			-- Size of a clip
SWEP.Primary.DefaultClip		= 6	-- Default number of bullets in a clip
SWEP.Primary.KickUp				= 4				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 4	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "buckshot"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 0		-- How much you 'zoom' in. Less is more! 

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.ShellTime			= .5

SWEP.Primary.NumShots	= 12		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= 7.5	-- Base damage per bullet
SWEP.Primary.Spread		= .1	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .1	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(0, 0, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(0, 0, 0)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(11.475, -7.705, -2.787)
SWEP.RunSightsAng = Vector(0.574, 51.638, 5.737)

SWEP.Secondary.Sound = Sound("dbarrel_dblast")

SWEP.FireModeName = "Break-Action"

SWEP.Primary.SpreadMultiplierMax=1.5


function SWEP:SecondaryAttack()
	if !self.Owner:IsSprinting() then
		if self:Clip1()>1 then
			self.Primary.NumShots = 24
			self.Primary.Damage = 7.5
			self.Primary.Sound = "dbarrel_dblast"
		else
			self.Primary.NumShots = 12
			self.Primary.Damage = 7.5	
			self.Primary.Sound = Sound("Double_Barrel.Single")
		end
		self:PrimaryAttack()
		self:SetClip1(0)
		self.Primary.Sound = Sound("Double_Barrel.Single")
	end
end