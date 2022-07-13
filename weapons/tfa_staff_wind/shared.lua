AddCSLuaFile()

SWEP.Firstdraw = 1
SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = false
SWEP.Blowback_Shell_Effect = "nil"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.MuzzleFlashEffect = "raygun_sparks"
SWEP.TracerCount 		= 0 	--0 disables, otherwise, 1 in X chance
SWEP.Primary.Delay			= 1.2
 
SWEP.UseHands				= true
SWEP.DisableChambering		= true
SWEP.Type					= "Wonder Weapon"
SWEP.Category				= "TFA Wonder Weapons"
SWEP.Author				= "Deika & Hidden"
SWEP.Contact				= ""
SWEP.Purpose				= "The power of wind is yours."
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Staff of Wind"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 20			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "shotgun"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Primary.HullSize = nil
SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel          = "models/weapons/originstaffs/c_staffofwind.mdl"
SWEP.WorldModel         = "models/weapons/originstaffs/w_staffofwind.mdl"
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound             = Sound("weapon_shrink.shoot")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 80			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 3		-- Size of a clip
SWEP.Primary.DefaultClip		= 33		-- Bullets you start with

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Borea's Fury"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 30
-- Max Ammo function

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        own:SetAmmo( self.Primary.MaxAmmo, ammo_type )
    end
end

SWEP.Ispackapunched = 0
function SWEP:PreDrawViewModel( vm )
/*
	if self.Ispackapunched == 1 then
		vm:SetSubMaterial(0, "models/weapons/common/bo1_pap_camo_large_c.vmt")
	else
		vm:SetSubMaterial(0, nil)
	end
*/
end

-- PaP Function
function SWEP:OnPaP()
	self.Ispackapunched = 1
	self.Primary.ClipSize = 8
	self.Primary.MaxAmmo = 40
	--self.Primary.Sound = Sound("weapon_shrink.shootpap")
	self:ClearStatCache()
	return true
end

--Recoil Related
SWEP.Primary.KickUp			= 0.1			-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 0.06				-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0					-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.3 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "Thumper"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 80		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0
SWEP.FireModes = {
	"Semi-Auto"
}
SWEP.Primary.NumShots	= nil		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 115	-- Base damage per bullet
SWEP.Primary.Spread		= .018	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-3.15, -8.1, -0.4)
SWEP.IronSightsAng = Vector(-0.84, -0.0135, 0)
SWEP.RunSightsPos = Vector (0, 0, 0)
SWEP.RunSightsAng = Vector (0, 0, 0)
SWEP.InspectPos = Vector(5.92, 0, -1.441)
SWEP.InspectAng = Vector(13.199, 26.6, 10)

SWEP.VMPos = Vector(0, 0, 0) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0, 0, 0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.


SWEP.CanDrawAnimate=true
SWEP.CanDrawAnimateEmpty=false
SWEP.CanDrawAnimateSilenced=false
SWEP.CanHolsterAnimate=true
SWEP.CanHolsterAnimateEmpty=false
SWEP.CanIdleAnimate=true
SWEP.CanIdleAnimateEmpty=false
SWEP.CanIdleAnimateSilenced=false
SWEP.CanShootAnimate=true
SWEP.CanShootAnimateSilenced=false
SWEP.CanReloadAnimate=true
SWEP.CanReloadAnimateEmpty=false
SWEP.CanReloadAnimateSilenced=false
SWEP.CanDryFireAnimate=false
SWEP.CanDryFireAnimateSilenced=false
SWEP.CanSilencerAttachAnimate=false
SWEP.CanSilencerDetachAnimate=false

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation

SWEP.IronAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_IDLE, --Number for act, String/Number for sequence
		["value_empty"] = ACT_VM_IDLE
	}, --Looping Animation
	["shoot"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "Fire_Iron", --Number for act, String/Number for sequence
		["value_last"] = "Fire_Iron_Last",
		["value_empty"] = "Fire_Iron_Dry"
	} --What do you think
}

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["value_empty"] = "sprint",
		["is_idle"] = true
	}--looping animation
}

DEFINE_BASECLASS( SWEP.Base )

function SWEP:PrimaryAttack(old)
	local own = self:GetOwner()
    local pos = own:GetShootPos() 
	local ppos = pos + (own:GetForward() * 250)
	local own = own
	if !self:CanPrimaryAttack() then
		--self:Reload()
		return
	end
	self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	self:EmitSound("weapons/originstaffs/air/shot/air_staff_shot.ogg", 75, 100, 1.0, CHAN_ITEM)
	ParticleEffect("originstaff_wind_muzzle",own:GetShootPos() + own:GetForward() * 60 + own:GetUp() * -8 + own:GetRight() * 8,own:GetAngles(),own)
	
	local pos = own:GetShootPos() 
	local ppos = pos + (own:GetForward() * 200)
	self:DoShot(ppos)
	own:SetAnimation( PLAYER_ATTACK1 )
	self:TakePrimaryAmmo(1)
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	local rec = self.Primary.Recoil
	own:ViewPunch( Angle( -5, 0, 0 ))
	--timer.Simple(0.5, function() BaseClass.PrimaryAttack( self, old ) end)
end

local isnzombies = gamemode.Get("nzombies")

function SWEP:DoShot(ppos)
	local own = self:GetOwner()
if SERVER then
	local dummy = ents.Create("obj_windstaff_proj")
	dummy:SetPos(own:GetShootPos())
	dummy:SetAngles(own:EyeAngles())
	dummy:SetOwner(own)
	dummy:Spawn()
	dummy:Activate()
	for k,v in pairs(ents.FindInSphere(ppos,200)) do
		if v == own then continue end
		--if gamemode.Get("nzombies") and v == own or v:IsPlayer() then continue end
		if isnzombies and v:IsPlayer() and hook.Run("PlayerShouldTakeDamage",v,own) then 
		   return 
		end
		if !isnzombies and v:IsPlayer() or v:IsNPC() then
			local dmginfo = DamageInfo()
			dmginfo:SetDamage( 1270 ) -- Zombie health at round 12 using original CoD:Z formula
			dmginfo:SetDamageType( DMG_GENERIC ) 
			dmginfo:SetAttacker( own ) 
			dmginfo:SetDamageForce( (own:GetForward() * 300000) + (own:GetUp() * 300000) ) 
			v:TakeDamageInfo( dmginfo ) 
		elseif v:IsNextBot() then
			local dmginfo2 = DamageInfo()
			dmginfo2:SetDamage( 220 ) -- Zombie health at round 12 using Zet's formula
			dmginfo2:SetDamageType( DMG_GENERIC ) 
			dmginfo2:SetAttacker( own ) 
			dmginfo2:SetDamageForce( (own:GetForward() * 30000) + (own:GetUp() * 30000) ) 
			v:TakeDamageInfo( dmginfo2 ) 
		end
	end
end
end