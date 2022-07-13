AddCSLuaFile()

SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = false
SWEP.Blowback_Shell_Effect = "nil"-- ShotgunShellEject shotgun or ShellEject for a SMG    
SWEP.MuzzleFlashEffect = nil
SWEP.TracerCount 		= 0 	--0 disables, otherwise, 1 in X chance
SWEP.Primary.Delay			= 0.35
 
SWEP.UseHands				= true
SWEP.Type					= "Wonder Weapon"
SWEP.Category				= "TFA Wonder Weapons"
SWEP.Author				= "Moon, Deika & Hidden"
SWEP.Contact				= ""
SWEP.Purpose				= "Microwave go MMMMMMMMMMMMMMMMMMMMMMMMMMM!"
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Zap Gun Dual Wield"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 4				-- Slot in the weapon selection menu
SWEP.SlotPos				= 20			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "duel"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Primary.HullSize = nil
SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= true
SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/wavegun/c_zapwave_gun.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/wavegun/w_zapguns.mdl"	-- Weapon world model
SWEP.WorldModelCombined = "models/weapons/wavegun/w_wavegun.mdl"
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false


SWEP.NZPaPName = "Porter's X2 Zap Gun Dual Wield"
SWEP.NZWonderWeapon = true

SWEP.Primary.Sound			= Sound("Weapon_Zapgun.Fire")			-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 300			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 16		-- Size of a clip
SWEP.Primary.DefaultClip		= 80		-- Bullets you start with
--Recoil Related
SWEP.Primary.KickUp			= 0.17				-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 0.13				-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.2					-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.3 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "tesla_bulbs"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 80		-- How much you 'zoom' in. Less is more! 	

SWEP.Secondary.Ammo			= "AR2AltFire"
SWEP.Secondary.DefaultClip	= 14
SWEP.Secondary.ClipSize		= 2

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= nil		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 115	-- Base damage per bullet
SWEP.Primary.Spread		= .007	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-2.8, -0.1, 0.38)
SWEP.IronSightsAng = Vector(0, -1.52, 0)
SWEP.RunSightsPos = Vector (0, 0, 0)
SWEP.RunSightsAng = Vector (0, 0, 0)
SWEP.InspectPos = Vector(-0.0, -0.0, -1.537)
SWEP.InspectAng = Vector(12.0, 0.0, 0.0)

SWEP.VMPos = Vector(0, 0, -0.3) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0, 0, 0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.


SWEP.CanDrawAnimate=true
SWEP.CanDrawAnimateEmpty=false
SWEP.CanDrawAnimateSilenced=true
SWEP.CanHolsterAnimate=true
SWEP.CanHolsterAnimateEmpty=false
SWEP.CanIdleAnimate=false
SWEP.CanIdleAnimateEmpty=false
SWEP.CanIdleAnimateSilenced=false
SWEP.CanShootAnimate=true
SWEP.CanShootAnimateSilenced=true
SWEP.CanReloadAnimate=true
SWEP.CanReloadAnimateEmpty=false
SWEP.CanReloadAnimateSilenced=true
SWEP.CanDryFireAnimate=false
SWEP.CanDryFireAnimateSilenced=false
SWEP.CanSilencerAttachAnimate=true
SWEP.CanSilencerDetachAnimate=true

SWEP.AllowSprintAttack = false

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_ANI --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["value_empty"] = "sprint",
		["is_idle"] = true
	},--looping animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint_out", --Number for act, String/Number for sequence
		["transition"] = true
	}
}

SWEP.SprintAnimationSilenced = {
    ["loop"] = {
        ["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
        ["value"] = ACT_VM_PULLBACK, --Number for act, String/Number for sequence
        ["is_idle"] = true
    },--looping animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_LOWERED_TO_IDLE, --Number for act, String/Number for sequence
		["transition"] = true
	}
}

SWEP.BaseAnimations = {
	["reload"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_RELOAD
	},
	["reload_left"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_HITLEFT
	},
	["reload_right"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_HITRIGHT
	},
	["reload_silenced"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_RELOAD_SILENCED
	},
	["holster"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_HOLSTER
	},
	["holster_silenced"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_IDLE_TO_LOWERED
	}
}

DEFINE_BASECLASS( SWEP.Base )

function SWEP:SetupDataTables()
	BaseClass.SetupDataTables(self)
	--self:NetworkVarTFA("Bool", "DualWielding")
	self:NetworkVarTFA("Bool", "Changing")
	self:NetworkVarTFA("Int", "ShotsLeft")
	self:NetworkVarTFA("Int", "ShotsRight")
end

function SWEP:CanPrimaryAttack()
	if !self.AllowSprintAttack and self:GetSprinting() then return end

	if ( self:Clip1() <= 0 and !self:GetSilenced() ) or ( self:Clip2() <= 0 and self:GetSilenced() ) then

		self:EmitSound( "Weapon_Pistol.Empty" )
		self:SetNextPrimaryFire( CurTime() + 0.2 )
		self:Reload()
		return false

	end

	return true

end

function SWEP:PrimaryAttack()
	if self:CanPrimaryAttack() then
		self:FireRocket()
		self:SetNextPrimaryFire(CurTime()+1/(self.Primary.RPM/60))
	end
end

function SWEP:SecondaryAttack()
	if self:CanPrimaryAttack() then
		self:FireRocket2()
		self:SetNextSecondaryFire(CurTime()+1/(self.Primary.RPM/60))
	end

end

SWEP.OldClip1 = 16
function SWEP:FireRocket()
	local vm = self.Owner:GetViewModel()
	local own = self.Owner
	
	local ShotsLeft = self:GetShotsLeft()
	
	if !self:GetSilenced() then
		if self:Ammo1() == 0 then
			self.ReserveEmpty = true
		end
		if self:Clip1() == 1 and self.ReserveEmpty then
			self.PrimaryEmpty = true
		end
		self.OldClip1 = self:Clip1() - 1
	end
	if SERVER then
		if self:GetSilenced() then
			if self:Clip2() == 0 then timer.Simple(0.2, function() self:Reload() end) return end
			local ang = own:EyeAngles()
			local pos = own:GetShootPos() + own:GetUp()* -8 + own:GetRight()*8
			if self:GetIronSights() == false then
				pos = own:GetShootPos() + own:GetUp()* -8 + own:GetRight()*8
			else
				pos = own:GetShootPos() + own:GetUp()* -8
			end
			local orb1 = ents.Create("obj_wgun_proj2")
			own:EmitSound( "Weapon_Wavegun.Fire" )
			self:TakeSecondaryAmmo(1)
			own:ViewPunch( Angle( math.Rand(-0.5,-0.4)*12, math.Rand(-1,1), 0 ) )
			if self.Ispackapunched then
				ParticleEffectAttach("wgun_muzzle_pap", PATTACH_POINT_FOLLOW, own:GetViewModel(), 2)
			else
				ParticleEffectAttach("wgun_muzzle", PATTACH_POINT_FOLLOW, own:GetViewModel(), 2)
			end
			--orb1.Trail = util.SpriteTrail(orb1,1,Color(255,50,255,255),false,32,0,0.75,0.118,"effects/laser_citadel1.vmt")
			orb1:SetPos(pos)
			orb1:SetAngles(ang)
			orb1.Owner = own
			orb1:SetUpgraded(self.Ispackapunched)
			orb1:Spawn()
			orb1:Activate()
			local phys = orb1:GetPhysicsObject()
			if IsValid(phys) then
				phys:SetMass( 1 )
				phys:EnableGravity( false )
				phys:EnableDrag( false )
				phys:Wake()
				phys:ApplyForceCenter(own:GetAimVector()*3000)
			else
				orb1:Remove()
			end
			self:SendWeaponAnim( ACT_VM_PRIMARYATTACK_SILENCED )
			own:SetAnimation( PLAYER_ATTACK1 )
			own:MuzzleFlash()
		else
			if ShotsLeft == self.Primary.ClipSize * 0.5 then self:EmitSound("Weapon_IRifle.Empty") return end
			
			own:EmitSound(self.Primary.Sound)
			local pos = own:GetShootPos() + own:GetForward()*4 + own:GetUp()* -2 + own:GetRight()*-8
			local orb1 = ents.Create("obj_wgun_proj")
			own:ViewPunch( Angle( math.Rand(-0.5,-0.4), 0, 0 ) )
			self:TakePrimaryAmmo(1)
			self:SetShotsLeft(self:GetShotsLeft() + 1)
			orb1:SetPos(pos)
			orb1.Owner = own
			orb1:SetUpgraded(self.Ispackapunched)
			orb1:Spawn()
			orb1:Activate()
			local phys = orb1:GetPhysicsObject()
			if IsValid(phys) then
				phys:SetMass( 1 )
				phys:EnableGravity( false )
				phys:EnableDrag( false )
				phys:Wake()
				phys:ApplyForceCenter(own:GetAimVector()*3000)
			else
				orb1:Remove()
			end
			if self:GetIronSights() then
				self:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
			else
				self:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
			end
			own:SetAnimation( PLAYER_ATTACK1 )
			own:MuzzleFlash()
			ParticleEffectAttach( "mwave_muzzleflash_l", PATTACH_POINT_FOLLOW, vm, 2 )
			--ParticleEffectAttach( "mwave_muzzleflash_l", PATTACH_POINT_FOLLOW, self, 2 )
		end
	end
end

function SWEP:FireRocket2()
	local ShotsRight = self:GetShotsRight()
	if ShotsRight == self.Primary.ClipSize * 0.5 then self:EmitSound("Weapon_IRifle.Empty") return end
	local own = self.Owner
	local vm = own:GetViewModel()
	local pos = own:GetShootPos() + own:GetForward()*4 + own:GetUp()* -2 + own:GetRight()* 8
	local ply = player
	if !self:GetSilenced() then
		if self:Ammo1() == 0 then
			self.ReserveEmpty = true
		end
		if self:Clip1() == 1 and self.ReserveEmpty then
			self.PrimaryEmpty = true
		end
		self.OldClip1 = self:Clip1() - 1
		
		if SERVER then
			local orb1 = ents.Create("obj_wgun_proj")
			orb1:SetPos(pos)
			orb1.Owner = own
			orb1:SetUpgraded(self.Ispackapunched)
			orb1:Spawn()
			orb1:Activate()
			local phys = orb1:GetPhysicsObject()
			if IsValid(phys) then
				phys:SetMass( 1 )
				phys:EnableGravity( false )
				phys:EnableDrag( false )
				phys:Wake()
				phys:ApplyForceCenter(own:GetAimVector()*3000)
			else
				orb1:Remove()
			end
		end
		self:EmitSound(self.Primary.Sound)
		self:TakePrimaryAmmo(1)
		self:SetShotsRight(self:GetShotsRight() + 1)
		own:ViewPunch( Angle( math.Rand(-0.5,-0.4), 0, 0 ) )
		self:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
		own:SetAnimation( PLAYER_ATTACK1 )
		ParticleEffectAttach( "mwave_muzzleflash_r", PATTACH_POINT_FOLLOW, vm, 1 )
		--ParticleEffectAttach( "mwave_muzzleflash_r", PATTACH_POINT_FOLLOW, self, 1 )		
	end
end

local tldata

function SWEP:Locomote(flipis, is, flipsp, spr, flipwalk, walk)
	if not (flipis or flipsp or flipwalk) then return end
	if not (self:GetStatus() == TFA.Enum.STATUS_IDLE or (self:GetStatus() == TFA.Enum.STATUS_SHOOTING and self:CanInterruptShooting())) then return end
	tldata = nil

	if flipis then
		if is and self:GetStat("IronAnimation.in") then
			tldata = self:GetStat("IronAnimation.in") or tldata
		elseif self:GetStat("IronAnimation.out") and not flipsp then
			tldata = self:GetStat("IronAnimation.out") or tldata
		end
	end

	if flipsp then
		if spr and self:GetStat("SprintAnimation.in") and not self:GetSilenced() then
			tldata = self:GetStat("SprintAnimation.in") or tldata
		elseif spr and self:GetStat("SprintAnimationSilenced.in") and self:GetSilenced() then
			tldata = self:GetStat("SprintAnimationSilenced.in") or tldata
		elseif self:GetStat("SprintAnimation.out") and not flipis and not spr and not self:GetSilenced() then
			tldata = self:GetStat("SprintAnimation.out") or tldata
		elseif self:GetStat("SprintAnimationSilenced.out") and not flipis and not spr and self:GetSilenced() then
			tldata = self:GetStat("SprintAnimationSilenced.out") or tldata
		end
	end

	if flipwalk then
		if walk and self:GetStat("WalkAnimation.in") then
			tldata = self:GetStat("WalkAnimation.in") or tldata
		elseif self:GetStat("WalkAnimation.out") and (not flipis and not flipsp) and not walk then
			tldata = self:GetStat("WalkAnimation.out") or tldata
		end
	end

	--self.Idle_WithHeld = true
	if tldata then return self:PlayAnimation(tldata) end
	--self:SetNextIdleAnim(-1)

	return false, -1
end


function SWEP:ChooseHolsterAnim()
	if not self:VMIV() then return end

	if self:GetActivityEnabled(ACT_VM_IDLE_TO_LOWERED) and self:GetSilenced() then
		typev, tanim = self:ChooseAnimation("holster_silenced")
	elseif self:GetActivityEnabled(ACT_VM_HOLSTER) then
		typev, tanim = self:ChooseAnimation("holster")
	else
		local _
		_, tanim = self:ChooseIdleAnim()

		return false, tanim
	end

	if typev ~= TFA.Enum.ANIMATION_SEQ then
		return self:SendViewModelAnim(tanim)
	else
		return self:SendViewModelSeq(tanim)
	end
end

function SWEP:ChooseSprintAnim()
	if not self:VMIV() then return end
	
    if self:GetSilenced() then
		return self:PlayAnimation(self:GetStat("SprintAnimationSilenced.loop"))
    else
        return self:PlayAnimation(self:GetStat("SprintAnimation.loop"))
    end
end

function SWEP:ChooseReloadAnim()
	if not self:VMIV() then return false, 0 end
	if self.ProceduralReloadEnabled then return false, 0 end
	
	local ShotsLeft = self:GetShotsLeft()
	local ShotsRight = self:GetShotsRight()

	if self:GetActivityEnabled(ACT_VM_RELOAD_SILENCED) and self:GetSilenced() then
		typev, tanim = self:ChooseAnimation("reload_silenced")
	elseif self:GetActivityEnabled(ACT_VM_RELOAD_EMPTY) and (self:Clip1() == 0 or self:IsJammed())and not self.Shotgun then
		typev, tanim = self:ChooseAnimation("reload_empty")
	elseif self:GetActivityEnabled(ACT_VM_HITLEFT) and ShotsLeft > 0 and ShotsRight == 0 and not self.Shotgun then
		typev, tanim = self:ChooseAnimation("reload_left")
	elseif self:GetActivityEnabled(ACT_VM_HITRIGHT) and ShotsLeft == 0 and ShotsRight > 0 and not self.Shotgun then
		typev, tanim = self:ChooseAnimation("reload_right")
	else
		typev, tanim = self:ChooseAnimation("reload")
	end

	local fac = 1

	if self.Shotgun and self.ShellTime then
		fac = self.ShellTime
	end

	self.AnimCycle = 0

	if SERVER and game.SinglePlayer() then
		self.SetNW2Int = self.SetNW2Int or self.SetNWInt
		self:SetNW2Int("AnimCycle", self.AnimCycle)
	end

	if typev ~= TFA.Enum.ANIMATION_SEQ then
		return self:SendViewModelAnim(tanim, fac, fac ~= 1)
	else
		return self:SendViewModelSeq(tanim, fac, fac ~= 1)
	end
end


function SWEP:Reload(released)
	local ct = CurTime()
	self:PreReload(released)
	if hook.Run("TFA_PreReload",self,released) then return end

	if self.Owner:IsNPC() then
		return
	end

	if not self:VMIV() then return end

	if not self:IsJammed() then
		if self:Ammo1() <= 0 then return end
		if self:GetStat("Primary.ClipSize") < 0 then return end
	end

	if ( not released ) and ( not self:GetLegacyReloads() ) then return end
	if self:GetLegacyReloads() and not self:GetOwner():KeyDown(IN_RELOAD) then return end

	if self:GetChanging() then return end
	if self:GetStatus() == TFA.Enum.STATUS_RELOADING then return end
	if !self:GetSilenced() and (self:Clip1() == self.Primary.ClipSize) then return end
	if self:GetSilenced() and (self:Clip2() == self.Secondary.ClipSize) then return end
	
	local vm = self.Owner:GetViewModel()
	if !self:GetSilenced() and (self:Clip1() < self.Primary.ClipSize) then
		if (self.Owner:GetAmmoCount( self.Primary.Ammo ) == 0) then return end
		--self:SetNWBool("isreloading", true)
		
		local _, tanim = self:ChooseReloadAnim()
		self:SetStatus(TFA.Enum.STATUS_RELOADING)
		self:SetStatusEnd(ct + self:GetActivityLength( tanim, true ) )
		self:SetNextPrimaryFire(ct + self:GetActivityLength( tanim, false ) )
		self:SetNextSecondaryFire(ct + self:GetActivityLength( tanim, false ) )
		
		--timer.Create("reload",self:GetActivityLength( tanim, false ),1,function() self:SetNWBool("isreloading", false) end)
	elseif self:GetSilenced() and (self:Clip2() < self.Secondary.ClipSize) then
		if (self.Owner:GetAmmoCount( self.Secondary.Ammo ) == 0) then return end
		--self:SetNWBool("isreloading", true)
		
		local _, tanim = self:ChooseReloadAnim()
		self:SetStatus(TFA.Enum.STATUS_RELOADING)
		self:DefaultReload(ACT_VM_RELOAD_SILENCED)
		self:SetStatusEnd(ct + self:GetActivityLength( tanim, true ) )
		self:SetNextPrimaryFire(ct + self:GetActivityLength( tanim, false ) )
		
		/*timer.Create("reload",self:GetActivityLength( tanim, false ),1,function() 
			self:SetNWBool("isreloading", false)
			--local amm = math.Clamp(self.Owner:GetAmmoCount( self.Secondary.Ammo ) - self:Clip2(), 0, self.Secondary.ClipSize )
			--self:SetClip2(self:Clip2()+amm)
			--self.Owner:SetAmmo(self.Owner:GetAmmoCount( self.Secondary.Ammo ) - amm, self.Secondary.Ammo)
		end)*/
	end
	self:PostReload(released)
	hook.Run("TFA_PostReload",self)
	
	self:SetShotsLeft(0)
	self:SetShotsRight(0)

	--return BaseClass.Reload(self)
end

SWEP.CanChangeStates = true
function SWEP:ToggleDWCombine()
	local vm = self.Owner:GetViewModel()
	if self.CanChangeStates then
		if self:GetStatus() == TFA.Enum.STATUS_RELOADING then return end
		self:SetChanging(true)
		--self:SetIronSights( false )
		if !self:GetSilenced() then --combine weps
			
			if game.SinglePlayer() then
				self:SendWeaponAnim(ACT_VM_DETACH_SILENCER)
			else
				self:SendWeaponAnim(ACT_VM_ATTACH_SILENCER)
			end
			
			self:SetNextPrimaryFire(CurTime()+1.95)
			self:SetNextSecondaryFire(CurTime()+1.95)
			--self:SetDualWielding(false)
			self:SetSilenced(true)
			timer.Simple(1.8,function()
				self:ClearStatCache("data.ironsights")
				self:ClearStatCache("InspectAng")
				self:ClearStatCache("InspectPos")
				self.data.ironsights			= 1
				self.InspectPos = Vector(4.0, -0.0, 0.0)
				self.InspectAng = Vector(8.0, 32.0, -2.0)
			end)
			self:ClearStatCache("HoldType")
			self:SetHoldType("ar2")
			self.WorldModel = "models/weapons/wavegun/w_wavegun.mdl"
			--self:SetModel("models/weapons/wavegun/w_wavegun.mdl")
			if !self.Ispackapunched then
				self.PrintName = "Wave Gun"
			else
				self.PrintName = "Max Wave Gun"
				self.NZPaPName = "Max Wave Gun"
			end
		else --detach weps
			self.WorldModel = "models/weapons/wavegun/w_zapguns.mdl"
			--self:SetModel("models/weapons/wavegun/w_zapguns.mdl")
			self:PreDrawViewModel()
			
			self:ClearStatCache("data.ironsights")
			self:ClearStatCache("InspectAng")
			self:ClearStatCache("InspectPos")
			--self:SetDualWielding(true)
			self:ClearStatCache("HoldType")
			self:SetSilenced(false)
			self:SetHoldType("duel")
			self.data.ironsights	= 0
			self.InspectPos = Vector(-0.0, -0.0, -1.537)
			self.InspectAng = Vector(12.0, 0.0, 0.0)
			
			if game.SinglePlayer() then
				self:SendWeaponAnim(ACT_VM_ATTACH_SILENCER)
			else
				self:SendWeaponAnim(ACT_VM_DETACH_SILENCER)
			end
			
			if !self.Ispackapunched then
				self.PrintName = "Zap Gun Dual Wield"
			else
				self.PrintName = "Porter's X2 Zap Gun Dual Wield"
				self.NZPaPName = "Porter's X2 Zap Gun Dual Wield"
			end
			
		end
		self.CanChangeStates = false
		timer.Simple(1.82,function() self.CanChangeStates = true self:SetChanging(false) end)
	end
end


function SWEP:Think2()
	BaseClass.Think2(self)
	if (self.Owner:KeyDown(IN_USE) and self.Owner:KeyDown(IN_RELOAD)) then 
		self:ToggleDWCombine()
	end
	
	if self:GetSilenced() then
		self:SetHoldType("ar2")
	else
		self:SetHoldType("duel")
	end
	
	if self.PrimaryEmpty then
		if self:GetSilenced() then
			self:SetClip1( 1 )
		else
			self:SetClip1( 0 )
		end
	end
	if self.ReserveEmpty then
		if self:GetSilenced() and self:Ammo2() > 0 then
			self.Owner:SetAmmo( 1, "tesla_bulbs" )
			if !self.PrimaryEmpty then
				self:SetClip1( self.OldClip1 )
			end
		else
			self.Owner:SetAmmo( 0, "tesla_bulbs" )
		end
	end
end

-- Nzombies stuff

SWEP.DisableChambering = true
SWEP.Primary.MaxAmmo = 64
SWEP.Secondary.MaxAmmo = 12

-- Max Ammo function

function SWEP:NZMaxAmmo()
	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo
	local ammo_type2 = self:GetSecondaryAmmoType() or self.Secondary.Ammo
	
	if SERVER then
		self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
		self.Owner:SetAmmo( self.Secondary.MaxAmmo, ammo_type2 )
	end
	self.PrimaryEmpty = false
	self.ReserveEmpty = false
end

function SWEP:PreDrawViewModel( vm )
	if self.Ispackapunched then
		vm:SetSubMaterial(0, "models/weapons/common/bo1_pap_camo_large_c.vmt")
		vm:SetSubMaterial(2, "models/weapons/common/bo1_pap_camo_large_c.vmt")
	end
end

SWEP.Ispackapunched = false
-- PaP Function
function SWEP:OnPaP()
	self.Ispackapunched = true
	self:ClearStatCache()
	self.Primary.ClipSize = 24
	self.Primary.DefaultClip = 124
	self.Primary.MaxAmmo = 100
	self.Secondary.ClipSize = 4
	self.Secondary.DefaultClip = 28
	self.Secondary.MaxAmmo = 24
	self.OldClip1 = 24
	self:SetClip2(4)
	return true
end