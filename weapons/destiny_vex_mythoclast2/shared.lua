SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= ""
SWEP.Author							= "Delta"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "Vex Mythoclast"
SWEP.Type							= "…a causal loop within the weapon's mechanism, suggesting that the firing process somehow binds space and time into…"
SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 60
SWEP.Slot							= 2
SWEP.SlotPos						= 100

SWEP.Rarity = "Exotic"
SWEP.FiresUnderwater 				= true
SWEP.DisableLUT = true

SWEP.IronInSound 					= Sound ("TFA_VEXMYTHOCLAST_IRONIN.1")
SWEP.IronOutSound 					= nil
SWEP.CanBeSilenced					= false
SWEP.Silenced 						= false
SWEP.SelectiveFire					= true
SWEP.DisableBurstFire				= false
SWEP.OnlyBurstFire					= nil
SWEP.DefaultFireMode 				= ""
SWEP.FireModeName 					= nil
SWEP.DisableChambering 				= true

//SWEP.ViewModelPunchPitchMultiplier = 0 -- Default value is 0.5



SWEP.Primary.ClipSize				= 32
SWEP.Primary.DefaultClip			= 32*10
SWEP.Primary.RPM					= 360
SWEP.Primary.Ammo					= "ar2"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.Range 					= 40000
SWEP.Primary.RangeFalloff 			= -1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= true
SWEP.Primary.Delay				    = 0
SWEP.Primary.Sound 					= Sound ("TFA_VEXMYTHOCLAST_FIRE.1")
SWEP.Primary.SwitchSound			= Sound ("TFA_VEXMYTHOCLAST_SWITCH.1")
SWEP.Primary.ChargeSound 			= Sound ("TFA_VEXMYTHOCLAST_CHARGE.1")
SWEP.Primary.ChargeFireSound 		= Sound ("TFA_VEXMYTHOCLAST_CHARGEFIRE.1")
SWEP.Primary.ReloadSound 			= Sound ("TFA_VEXMYTHOCLAST_RELOAD.1")
SWEP.Primary.PenetrationMultiplier 	= .8
SWEP.Primary.Damage					= 34
SWEP.Primary.HullSize 				= 2
SWEP.DamageType 					= DMG_BULLET

SWEP.DoMuzzleFlash 					= true
SWEP.MuzzleFlashEffect 				= "tfa_muzzleflash_rifle"


SWEP.IronRecoilMultiplier			= 0.5
SWEP.CrouchRecoilMultiplier			= 0.85
SWEP.JumpRecoilMultiplier			= 2
SWEP.WallRecoilMultiplier			= 1.1
SWEP.ChangeStateRecoilMultiplier	= 1.2
SWEP.CrouchAccuracyMultiplier		= 0.8
SWEP.ChangeStateAccuracyMultiplier	= 1
SWEP.JumpAccuracyMultiplier			= 10
SWEP.WalkAccuracyMultiplier			= 1.8
SWEP.NearWallTime 					= 0.5
SWEP.ToCrouchTime 					= 0.25
SWEP.WeaponLength 					= 35
SWEP.SprintFOVOffset 				= 2
SWEP.ProjectileVelocity 			= 9

SWEP.ProjectileEntity 				= nil
SWEP.ProjectileModel 				= nil

SWEP.ViewModel						= "models/weapons/VexMythoclast/c_vex_mythoclast.mdl"
SWEP.WorldModel						= nil
SWEP.ViewModelFOV					= 58
SWEP.MaterialTable 					= nil
SWEP.UseHands 						= true
SWEP.HoldType 						= "ar2"

SWEP.ShowWorldModel = false

SWEP.BlowbackEnabled 				= true
SWEP.BlowbackVector 				= Vector(0, -1, 0)
SWEP.BlowbackCurrentRoot			= 0
SWEP.BlowbackCurrent 				= 0
SWEP.BlowbackBoneMods 				= nil
SWEP.Blowback_Only_Iron 			= true
SWEP.Blowback_PistolMode 			= false
SWEP.Blowback_Shell_Enabled 		= false
SWEP.Blowback_Shell_Effect 			= "None"
SWEP.BlowbackAllowAnimation = false -- Allow playing shoot animation with blowback?

SWEP.Tracer							= 0
SWEP.TracerName 					= "VexMythoTracer"
SWEP.TracerCount 					= 1
SWEP.TracerLua 						= false
SWEP.TracerDelay					= 0
SWEP.ImpactEffect 					= "impact"

SWEP.IronSightTime 					= 0.4
SWEP.Primary.KickUp					= 0.2
SWEP.Primary.KickDown				= 0.2
SWEP.Primary.KickHorizontal			= 0.1
SWEP.Primary.StaticRecoilFactor 	= 0.53
SWEP.Primary.Spread					= 0.08
SWEP.Primary.IronAccuracy 			= 0.006
SWEP.Primary.SpreadMultiplierMax 	= 1.5
SWEP.Primary.SpreadIncrement 		= 0.35
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= 1
SWEP.IronSightsMoveSpeed 			= 0.75

SWEP.IronSightsPos = Vector(-6.451, -9, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(5.226, -6, 0)
SWEP.RunSightsAng = Vector(-18, 36, -13.5)
SWEP.InspectPos = Vector(8, -4.8, -3)
SWEP.InspectAng = Vector(11.199, 38, 0)	

SWEP.VMPos = Vector(-1, -5.3, 0) -- The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(.5, .2, 0) -- The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false -- Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse

SWEP.CrouchPos = Vector(-1, -5.3, 0)
SWEP.CrouchAng = Vector(.5, .2, 0)

SWEP.MuzzleAttachment           = "muzzle"       -- Should be "1" for CSS models or "muzzle" for hl2 models       -- Should be "2" for CSS models or "shell" for hl2 models

SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH -- TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.5 -- Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.1 -- Start an idle this far early into the end of another animation


SWEP.Attachments = {
	[1] = { offset = { 0, 0 }, atts = { "vexmythochrome", }, order = 1 },
}

SWEP.ViewModelBoneMods = {
	//["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(-4.631, 0.185, 2.5), angle = Angle(0, -1.111, 0) }
}

SWEP.VElements = {
	["scope"] = { type = "Model", model = "models/rtcircle.mdl", bone = "ScopeBone", rel = "", pos = Vector(0, -1, 0), angle = Angle(0, -90, 180), size = Vector(.5, .5, .5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {} },
	//["reticle"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ScopeBone", rel = "", pos = Vector(0, -10, 0), angle = Angle(0, 0, 90), size = Vector(.01, .01, 0), color = Color(255, 255, 255, 255), surpresslightning = false, material = "reticle/destiny2_reddot", skin = 0, bodygroup = {}, active = true }
}

SWEP.WElements = {
	["world"] = { type = "Model", model = SWEP.ViewModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-13.5, 7, -5), angle = Angle(-12.5, 1, 180), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = { [1] = 0 } }
}
--[[
SWEP.Offset = {
	Pos = {
		Up = 100,
		Right = 100,
		Forward = 100
	},
	Ang = {
		Up = 10,
		Right = 90,
		Forward = 40
	},
	Scale = 1
} -- Procedural world model animation, defaulted for CS:S purposes.]]

SWEP.ViewModelPunchPitchMultiplier = .2 -- Default value is 0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights = nil -- Default value is 0.09

SWEP.ViewModelPunch_MaxVertialOffset = 1 -- Default value is 3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights = 1 -- Default value is 1.95
SWEP.ViewModelPunch_VertialMultiplier = .7 -- Default value is 1
SWEP.ViewModelPunch_VertialMultiplier_IronSights = nil -- Default value is 0.25

SWEP.ViewModelPunchYawMultiplier = .4 -- Default value is 0.6
SWEP.ViewModelPunchYawMultiplier_IronSights = nil -- Default value is 0.25

SWEP.EventTable = {
	
	[ACT_VM_DRAW] = {															
		{ ["time"] = 0, ["type"] = "sound", ["value"] = Sound("TFA_VEXMYTHOCLAST_DRAW.1") }
	}
}

SWEP.SequenceRateOverride= { 
	[ACT_VM_RELOAD] = 1,
	[ACT_VM_PRIMARYATTACK] = 1,
	[ACT_VM_DRAW] = 1.5,
	[ACT_VM_HOLSTER] = 1,
	[ACT_VM_PULLBACK_HIGH] = 1.35,
}

SWEP.StatCache_Blacklist = {
	["Primary.Damage"] = true,
	["Primary.Spread"] = true,
	["Primary.KickUp"] = true,
	["Primary.KickDown"] = true,
	["Primary.PenetrationMultiplier"] = true
}

SWEP.MythoAnimations = {
	["switch"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "switch",
		["enabled"] = true --Manually force a sequence to be enabled
	},
	["charge"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "charge",
		["enabled"] = true --Manually force a sequence to be enabled
	},
	["chargefire"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "chargefire",
		["enabled"] = true --Manually force a sequence to be enabled
	}
}

SWEP.MythoEmit1 = Material("models/VexMythoclast/VexMythoclastEmit")
SWEP.MythoEmit2 = Material("models/VexMythoclast/VexMythoclastFX")
SWEP.MythoEmit3 = Material("models/VexMythoclast/VexMythoclastMuzzleEmit")
SWEP.MythoRet2 = Material("models/VexMythoclast/VexMythoclastReticle2")

---------------------------------

SWEP.BodyFX = Material("models/VexMythoclast/VexMythoclastBody")
SWEP.BodyFX2 = Material("models/VexMythoclast/VexMythoclastBodyGold")
SWEP.ScopeFX = Material("models/VexMythoclast/VexMythoclastScope")
SWEP.ScopeFX2 = Material("models/VexMythoclast/VexMythoclastScopeGold")

---------------------------------



-- [[RENDER TARGET]] --
SWEP.RTDrawEnabled = true
SWEP.RTReticleMaterial = Material("models/VexMythoclast/VexMythoclastReticle2")
SWEP.RTDot = Material("reticle/destiny2_reddot")
SWEP.RTReticleScale = .99
SWEP.RTDotScale = .1
SWEP.RTShadowScale = 2
SWEP.RTMaterialOverride = -1 -- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.
SWEP.RTOpaque = true -- Do you want your render target to be opaque?
SWEP.RTScopeFOV = 90 / 2.5 / 2 -- Default FOV / Scope Zoom / screenscale
SWEP.RTBGBlur = false -- Draw background blur when 3D scope is active?


local cd = {}

local fallbackReticle = Material("scope/gdcw_scopesightonly")
local fallbackShadow = Material("vgui/scope_shadowmask_test")

local flipcv = GetConVar("cl_tfa_viewmodel_flip")

SWEP.RTCode = function(self, rt, scrw, scrh)
	if not self.OwnerIsValid or not self:VMIV() then return end

	local rtw, rth = rt:Width(), rt:Height()
	-- clearing view
	render.OverrideAlphaWriteEnable(true, true)
	surface.SetDrawColor(color_white)
	surface.DrawRect(-rtw, -rth, rtw * 2, rth * 2)


	local vm = self.OwnerViewModel

	local ang = vm:GetAngles()
	ang:RotateAroundAxis(ang:Forward(), -self:GetStat("IronSightsAng").z)

	local scopeAtt = self:GetStat("RTScopeAttachment", -1)

	if scopeAtt > 0 then
		local AngPos = vm:GetAttachment(scopeAtt)

		if AngPos then
			ang = AngPos.Ang

			if flipcv:GetBool() then
				ang.y = -ang.y
			end
		end
	end

	cd.angles = ang
	cd.origin = self:GetOwner():GetShootPos()
	cd.x = 0
	cd.y = 0
	cd.w = rtw
	cd.h = rth
	cd.fov = self:GetStat("RTScopeFOV", 90 / self:GetStat("ScopeZoom", 1) / 2)
	cd.drawviewmodel = false
	cd.drawhud = false

	-- main RT render view
	render.Clear(0, 0, 0, 255, true, true)
	render.SetScissorRect(0, 0, rtw, rth, true)

	if self:GetIronSightsProgress() > .75 then
		
		render.RenderView(cd)

	end

	render.SetScissorRect(0, 0, rtw, rth, false)
	render.OverrideAlphaWriteEnable(false, true)

	cam.Start2D()

	-- ADS transition darkening
	draw.NoTexture()
	surface.SetDrawColor(ColorAlpha(color_black, 255 * (1 - self:GetIronSightsProgress())))
	surface.DrawRect(0, 0, rtw, rth)

	//self.RTReticleGlass:SetVector("$envmapmultiplier", Vector(1.5, 0, 0))

	surface.SetMaterial(self:GetStat("RTReticleMaterial", fallbackReticle))
	surface.SetDrawColor(self:GetStat("RTReticleColor", color_white))
	local retScale = self:GetStat("RTReticleScale", 1)
	surface.DrawTexturedRect(rtw / 2 - rtw * retScale / 2, rth / 2 - rth * retScale / 2, rtw * retScale, rth * retScale)

	surface.SetMaterial(self:GetStat("RTShadowMaterial", fallbackShadow))
	surface.SetDrawColor(self:GetStat("RTShadowColor", color_white))
	local shadScale = self:GetStat("RTShadowScale", 2)
	surface.DrawTexturedRect(rtw / 2 - rtw * shadScale / 2, rth / 2 - rth * shadScale / 2, rtw * shadScale, rth * shadScale)


	cam.End2D()
end


DEFINE_BASECLASS( SWEP.Base )

TFA.AddStatus("d2mytho_switch")
TFA.AddStatus("d2mytho_charge")
TFA.AddStatus("d2mytho_chargefire")

local CurrentTimer = 0

function SWEP:Initialize(...)
	table.insert(TFA.Enum.IronStatus, TFA.Enum.STATUS_D2MYTHO_SWITCH, true)
	table.insert(TFA.Enum.IronStatus, TFA.Enum.STATUS_D2MYTHO_CHARGEFIRE, true)
	table.insert(TFA.Enum.IronStatus, TFA.Enum.STATUS_D2MYTHO_CHARGE, true)
	self:SetNWBool("mytho_linear", false)
	self:SetNW2Float("mytho_charge_timer", 0)
	return BaseClass.Initialize(self, ...)
end

function SWEP:Switch()
	self:PlayAnimation(self.MythoAnimations.switch)
end

function SWEP:Think2(...)

	if self:GetIronSights() then
		self.MythoAnimations["charge"].value = "chargeads"
		self.MythoAnimations["chargefire"].value = "chargefireads"
	else
		self.MythoAnimations["charge"].value = "charge"
		self.MythoAnimations["chargefire"].value = "chargefire"
	end


	//if SERVER then
	if self:GetOwner():KeyDown(IN_RELOAD) and self:GetStatus() == TFA.Enum.STATUS_IDLE then
		self:SetNW2Float("mytho_charge_timer", self:GetNW2Float("mytho_charge_timer") + 1) 
		if self:GetNW2Float("mytho_charge_timer") == 25 then
			if SERVER then
				self:SetStatus(TFA.Enum.STATUS_D2MYTHO_SWITCH)
				self:SetStatusEnd(CurTime() + self:SequenceDuration(self:SelectWeightedSequence( ACT_VM_PULLBACK_HIGH )))
				self:Switch()
				if self:GetNWBool("mytho_linear") == false then
					self:SetNWBool("mytho_linear", true)
				else
					self:SetNWBool("mytho_linear", false)
				end
			end
			if SERVER or IsFirstTimePredicted() then
				self:EmitSound(self:GetStat("Primary.SwitchSound"))
			end
		end
	end

	if not self:GetOwner():KeyDown(IN_RELOAD) then
		self:SetNW2Float("mytho_charge_timer", 0)
	end
	if CLIENT then
		self.MythoEmit1:SetVector("$color2", Vector(2, 2, 2))
		self.MythoEmit2:SetVector("$color2", Vector(2, 2, 2))
	end
	
	if self:GetStatus() == TFA.Enum.STATUS_D2MYTHO_CHARGE and self:GetOwner():KeyDown(IN_ATTACK) then
		if CLIENT then
			local lerp = LerpVector(self:GetStatusProgress(), Vector(0, 0, 0), Vector(2, .5, .5))
			self.MythoEmit3:SetVector("$color2", lerp)
			local lerp2 = LerpVector(self:GetStatusProgress(),self.MythoEmit2:GetVector("$color2"), Vector(5, 0, 0))
			self.MythoEmit2:SetVector("$color2", lerp2)
			self.MythoEmit1:SetVector("$color2", lerp2)
			self.MythoRet2:SetVector("$color2", lerp2)
		end
	end

	if self:GetNWBool("mytho_linear") == true then
		if CLIENT then
			self.BodyFX:SetVector("$emissiveblendtint", Vector(.5, .1, .1))
			self.BodyFX2:SetVector("$emissiveblendtint", Vector(.5, .1, .1))
			self.ScopeFX:SetVector("$emissiveblendtint", Vector(.5, .1, .1))
			self.ScopeFX2:SetVector("$emissiveblendtint", Vector(.5, .1, .1))
		end
		
		self.Primary_TFA.Damage = 250
		self.Primary_TFA.Spread = 0.04
		self.Primary_TFA.KickUp = 1
		self.Primary_TFA.KickDown = 1
		self.Primary_TFA.PenetrationMultiplier = .3
	else
		if CLIENT then
			self.MythoEmit1:SetVector("$color2", Vector(2, .7, 0))
			self.MythoEmit2:SetVector("$color2", Vector(0, 0, 0))
			self.MythoEmit3:SetVector("$color2", Vector(0, 0, 0))
			self.MythoRet2:SetVector("$color2", Vector(1, 1, 1))

			self.BodyFX:SetVector("$emissiveblendtint", Vector(0, 0 ,0))
			self.BodyFX2:SetVector("$emissiveblendtint", Vector(0, 0 ,0))
			self.ScopeFX:SetVector("$emissiveblendtint", Vector(0, 0 ,0))
			self.ScopeFX2:SetVector("$emissiveblendtint", Vector(0, 0 ,0))
		end

		self.Primary_TFA.Damage = 35
		self.Primary_TFA.Spread = 0.08
		self.Primary_TFA.KickUp = .2
		self.Primary_TFA.KickDown = .2
		self.Primary_TFA.PenetrationMultiplier = .8
	end

	if self:GetStatus() != TFA.Enum.STATUS_D2MYTHO_CHARGE and self:GetNWBool("mytho_linear") == true  then
		if CLIENT then
			self.MythoEmit3:SetVector("$color2", Vector(0, 0, 0))
			self.MythoEmit1:SetVector("$color2", Vector(2, 2, 2))
			self.MythoEmit2:SetVector("$color2", Vector(2, 2, 2))
			self.MythoRet2:SetVector("$color2", Vector(1, 1, 1))
		end
	end

	if self:GetStatus() == TFA.Enum.STATUS_D2MYTHO_CHARGE and !self:GetOwner():KeyDown(IN_ATTACK) then
		self:CleanParticles()
		self:SetStatusEnd(0)
		self:StopSound(self:GetStat("Primary.ChargeSound"))
		
	end

	if self:GetStatus() == TFA.Enum.STATUS_D2MYTHO_CHARGE and self:GetSprinting() then
		self:SetStatusEnd(0)
		self:StopSound(self:GetStat("Primary.ChargeSound"))
		if CLIENT then
			self.MythoEmit3:SetVector("$color2", Vector(0, 0, 0))
			self.MythoEmit1:SetVector("$color2", Vector(2, 2, 2))
			self.MythoEmit2:SetVector("$color2", Vector(2, 2, 2))
		end
	end

	if self:GetStatus() == TFA.Enum.STATUS_D2MYTHO_CHARGE and self:GetStatusEnd() < CurTime() then

			if self:GetOwner():KeyDown(IN_ATTACK) and IsFirstTimePredicted() then
				if not self:GetSprinting() then
					//if CLIENT then
						self:EmitSound(self:GetStat("Primary.ChargeFireSound"))
					//end
					//self:TakePrimaryAmmo(1)
					self:SetStatus(TFA.Enum.STATUS_D2MYTHO_CHARGEFIRE)
					self:SetStatusEnd(CurTime() + self:SequenceDuration(self:SelectWeightedSequence( ACT_VM_PULLBACK_LOW ))+.75)
					self:PlayAnimation(self.MythoAnimations.chargefire)
				

					ParticleEffectAttach("MythoMuzzleMain", 4, self:GetOwner():GetViewModel(), self:GetOwner():GetViewModel():LookupAttachment("muzzle"))
					local obj = self:LookupAttachment( "muzzle" )
					local muzzlepos = self:GetAttachment( obj ).Pos
					--[[
					util.ParticleTracerEx( 
						"VexMythoTracer2", --particle system
						muzzlepos, --startpos
						self:GetOwner():GetEyeTrace().HitPos, --endpos
						false, --do whiz effect
						self:EntIndex(), --entity index
						1 --attachment
					)]]

					
					self:ShootBulletInformation()
					if self:Clip1() < 8 then
						self:TakePrimaryAmmo(self:Clip1())
					else
						self:TakePrimaryAmmo(8)
					end
					local _, CurrentRecoil = self:CalculateConeRecoil()
					self:Recoil(CurrentRecoil, ifp)

					self.MythoEmit3:SetVector("$color2", Vector(0, 0, 0))
					self.MythoEmit1:SetVector("$color2", Vector(2, 2, 2))
					self.MythoEmit2:SetVector("$color2", Vector(2, 2, 2))
					self.MythoRet2:SetVector("$color2", Vector(1, 1, 1))
				else
					self:SetStatusEnd(0)
				end
			end

		
	end

	if CLIENT then
		if self:GetIronSights() then
			self.VElements["scope"].color = Color(255, 255, 255, (255*self:GetIronSightsProgress()))
		else
			self.VElements["scope"].color = Color(255, 255, 255, 0)
		end
	end

	return BaseClass.Think2(self, ...)
end



function SWEP:PrimaryAttack()
	local self2 = self:GetTable()
	local ply = self:GetOwner()
	if not IsValid(ply) then return end

	if not IsValid(self) then return end
	if ply:IsPlayer() and not self:VMIV() then return end
	if not self:CanPrimaryAttack() then return end

	if self:GetNWBool("mytho_linear") == true then
		if self:GetOwner():IsPlayer() then

			self:EmitSound(self:GetStat("Primary.ChargeSound"))
			self:PlayAnimation(self.MythoAnimations.charge)
			self:SetStatus(TFA.Enum.STATUS_D2MYTHO_CHARGE)
			self:SetStatusEnd(CurTime() + self:SequenceDuration(self:SelectWeightedSequence( ACT_VM_PULLBACK )))
			ParticleEffectAttach("VexMythoCharge", 4, self:GetOwner():GetViewModel(), self:GetOwner():GetViewModel():LookupAttachment("muzzle"))
			ParticleEffectAttach("VexMythoCharge", 4, self:GetOwner():GetViewModel(), self:GetOwner():GetViewModel():LookupAttachment("muzzle"))
		end
	end

	if self:GetNWBool("mytho_linear") == false then

		local obj = self:LookupAttachment( "muzzle" )
		local muzzlepos = self:GetAttachment( obj ).Pos

		self:PrePrimaryAttack()

		if hook.Run("TFA_PrimaryAttack", self) then return end

		self:TriggerAttack("Primary", 1)
		ParticleEffectAttach("MythoMuzzleMain", 4, self:GetOwner():GetViewModel(), self:GetOwner():GetViewModel():LookupAttachment("muzzle"))
		--[[
		util.ParticleTracerEx( 
			"VexMythoTracer", --particle system
			muzzlepos, --startpos
			self:GetOwner():GetEyeTrace().HitPos, --endpos
			false, --do whiz effect
			self:EntIndex(), --entity index
			1 --attachment
		)]]

		self:PostPrimaryAttack()
		hook.Run("TFA_PostPrimaryAttack", self)
	end
end
