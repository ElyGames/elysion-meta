SWEP.Base = "tfa_gun_base"
SWEP.Category = "TFA Quake Champions"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.VMPos = Vector(-0.12, 0, -1.361)
SWEP.VMPos_Additive = false
SWEP.Slot = 3
SWEP.PrintName = "Super Shotgun"
SWEP.Manufacturer = ""
SWEP.Type = "Shotgun"
SWEP.ViewModel = "models/weapons/tfa_qc/c_supershotgun.mdl" --Viewmodel path
SWEP.ViewModelFOV = 75
SWEP.UseHands = true
SWEP.WorldModel = "models/weapons/tfa_qc/w_qc_supershotgun.mdl" --Viewmodel path
SWEP.DefaultHoldType = "shotgun"
SWEP.HoldType = "shotgun"
SWEP.Scoped = false
SWEP.Shotgun = false
SWEP.Primary.AmmoConsumption = 1--2
--SWEP.Primary.ClipSize = -1
SWEP.DisableChambering = true
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 50
SWEP.Primary.Ammo = "buckshot"
SWEP.Primary.Sound = Sound( "TFA_QC_SUPERSHOTGUN.1" )
SWEP.Primary.Automatic = true
SWEP.Primary.RPM = 60
SWEP.Primary.Damage = 5
SWEP.Primary.DamageTypeHandled = false --true will handle damagetype in base
SWEP.Primary.HullSize = 1
SWEP.Primary.DamageType = bit.bor(DMG_BULLET, DMG_BUCKSHOT, DMG_AIRBOAT)
SWEP.Primary.NumShots = 28 --16
SWEP.Primary.Spread = .08 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .05 -- Ironsight accuracy, should be the same for shotguns
SWEP.Primary.KickUp = 1.15 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.8 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.6 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.35 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
SWEP.Primary.Knockback = 60
SWEP.Primary.MaxPenetration = 2
SWEP.Primary.PenetrationMultiplier = 4
SWEP.Primary.SpreadMultiplierMax = 2
SWEP.Primary.SpreadIncrement = 2
SWEP.Primary.SpreadRecovery = 4
SWEP.FireModeName = "Break-Action"
SWEP.MuzzleAttachment			= "muzzle" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "shell" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.data = {}
SWEP.data.ironsights = 0
SWEP.Secondary.IronFOV = 70
SWEP.IronSightsPos = Vector(-1.56 + 0.5 , 0, 1.159 - 0.5)
SWEP.IronSightsAng = Vector(0.6, 0.219, 0.127)

SWEP.CenteredPos = Vector(-5.441, 0, -2.6)
SWEP.CenteredAng = Vector(0.0, 0.0, 0.0)

SWEP.RunSightsPos = Vector(0,0,0) + SWEP.VMPos
SWEP.RunSightsAng = Vector(-10,0,0) + ( SWEP.VMAng or vector_origin )
SWEP.DrawCrosshairIS = true
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_LUA
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA

SWEP.Attachments = {
}

SWEP.SmokeParticle = ""
SWEP.MuzzleFlashEffect = "tfa_qcssg_muzzle"
SWEP.MuzzleFlashEffect2 = "tfa_qcssg_muzzle_dual"

SWEP.AllowSprintAttack = true
SWEP.EjectionSmokeEnabled = false
SWEP.LuaShellEject = false --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0.0 --The delay to actually eject things
SWEP.LuaShellEffect = "tfa_shell_qc" --The effect used for shell ejection; Defaults to that used for blowback

SWEP.InspectPos = Vector(8.6, -5.5, -2.58)
SWEP.InspectAng = Vector(29, 44, 20)
DEFINE_BASECLASS(SWEP.Base)

function SWEP:MuzzleSmoke(spv)
	local retVal = hook.Run("TFA_MuzzleSmoke",self)
	if retVal ~= nil then
		return retVal
	end
	if self.SmokeParticle == nil then
		self.SmokeParticle = self.SmokeParticles[self.DefaultHoldType or self.HoldType]
	end
	
	if self:GetStat("SmokeParticle") and self:GetStat("SmokeParticle") ~= "" then
		self:UpdateMuzzleAttachment()
		local att = self:GetMuzzleAttachment()
		fx = EffectData()
		fx:SetOrigin(self:GetOwner():GetShootPos())
		fx:SetNormal(self:GetOwner():EyeAngles():Forward())
		fx:SetEntity(self)
		fx:SetAttachment(att)
		TFA.Effects.Create("tfa_muzzlesmoke", fx)
	end
	
	if self.Akimbo == false then
		if not self:GetStat("Akimbo") then
			local att2 = self:GetMuzzleAttachment() + 1
			fx2 = EffectData()
			fx2:SetOrigin(self:GetOwner():GetShootPos())
			fx2:SetNormal(self:GetOwner():EyeAngles():Forward())
			fx2:SetEntity(self)
			fx2:SetAttachment(att2)
			TFA.Effects.Create("tfa_muzzlesmoke_qc_dual", fx2)
		end
	end
end

function SWEP:EjectionSmoke(ovrr)
	local retVal = hook.Run("TFA_EjectionSmoke",self)
	if retVal ~= nil then
		return retVal
	end
	if TFA.GetEJSmokeEnabled() and (self:GetStat("EjectionSmokeEnabled") or ovrr) then
		local vm = self:IsFirstPerson() and self.OwnerViewModel or self

		if IsValid(vm) then
			local att = vm:LookupAttachment(self.ShellAttachment)
			local att2 = vm:LookupAttachment(self.ShellAttachment) + 1

			if not att or att <= 0 then
				att = 4
			end

			local oldatt = att

			if self.ShellAttachmentRaw then
				att = self.ShellAttachmentRaw
			end

			local angpos = vm:GetAttachment(att)
			local angpos2 = vm:GetAttachment(att2)

			if not angpos then
				att = oldatt
				angpos = vm:GetAttachment(att)
			end

			if angpos then
				fx = EffectData()
				fx:SetEntity(self)
				fx:SetOrigin(angpos.Pos)
				fx:SetAttachment(att)
				fx:SetNormal(angpos.Ang:Forward())
				TFA.Effects.Create("tfa_shelleject_smoke_qc", fx)
				if not self:GetStat("Akimbo") and self.Primary.Automatic == true then
					if self.Akimbo == false then
						fx2 = EffectData()
						fx2:SetEntity(self)
						fx2:SetOrigin(angpos2.Pos)
						fx2:SetAttachment(att2)
						fx2:SetNormal(angpos2.Ang:Forward())
						TFA.Effects.Create("tfa_shelleject_smoke_qc_dual", fx2)
					end
				end
			end
		end
	end
end

function SWEP:MuzzleFlashCustom(spv)
	local retVal = hook.Run("TFA_MuzzleFlash",self)
	if retVal ~= nil then
		return retVal
	end
	local att = self:GetMuzzleAttachment()
	if self:GetStat("Akimbo") then
		att = 1 + self.AnimCycle
	end
	
	local att2 = 4
	
	fx2 = EffectData()
	fx2:SetOrigin(self:GetOwner():GetShootPos())
	fx2:SetNormal(self:GetOwner():EyeAngles():Forward())
	fx2:SetEntity(self)
	fx2:SetAttachment(att2)
	
	fx = EffectData()
	fx:SetOrigin(self:GetOwner():GetShootPos())
	fx:SetNormal(self:GetOwner():EyeAngles():Forward())
	fx:SetEntity(self)
	fx:SetAttachment(att)
	local mzsil = self:GetStat("MuzzleFlashEffectSilenced")

	if (self:GetSilenced() and mzsil and mzsil ~= "") then
		TFA.Effects.Create(mzsil, fx)
	else
		TFA.Effects.Create(self:GetStat("MuzzleFlashEffect", self.MuzzleFlashEffect or ""), fx)
		TFA.Effects.Create(self:GetStat("MuzzleFlashEffect2", self.MuzzleFlashEffect2 or ""), fx2)
	end
end

function SWEP:MakeShell()
	local retVal = hook.Run("TFA_MakeShell",self)
	if retVal ~= nil then
		return retVal
	end
	if self:GetStat("ShellEffectOverride") then
		shelltype = self:GetStat("ShellEffectOverride")
	elseif TFA.GetLegacyShellsEnabled() then
		shelltype = "tfa_shell_legacy_qc"
		shelltype2 = "tfa_shell_legacy_qc_dual"
	else
		shelltype = "tfa_shell_qc"
		shelltype2 = "tfa_shell_qc_dual"
	end
	
	

	if IsValid(self) then
		self:EjectionSmoke(true)
		local vm = (self:IsFirstPerson()) and self.OwnerViewModel or self
		if type(shelltype) ~= "string" or shelltype == "" then return end -- allows to disable shells by setting override to "" - will shut up all rp fags

		if IsValid(vm) then
			fx = EffectData()
			fx2 = EffectData()
			local attid = vm:LookupAttachment(self:GetStat("ShellAttachment"))	
			local attid2 = vm:LookupAttachment(self:GetStat("ShellAttachment")) + 1

			if self:GetStat("Akimbo") then
				attid = 1 + self.AnimCycle
			end

			attid = math.Clamp(attid and attid or 2, 1, 127)
			attid2 = math.Clamp(attid2 and attid2 or 2, 1, 127)
			local angpos = vm:GetAttachment(attid)
			local angpos2 = vm:GetAttachment(attid2)

			if angpos then
				fx:SetEntity(self)
				fx:SetAttachment(attid)
				fx:SetMagnitude(1)
				fx:SetScale(1)
				fx:SetOrigin(angpos.Pos)
				fx:SetNormal(angpos.Ang:Forward())
				TFA.Effects.Create(shelltype, fx)
				fx2:SetEntity(self)
				fx2:SetAttachment(attid2)
				fx2:SetMagnitude(1)
				fx2:SetScale(1)
				fx2:SetOrigin(angpos2.Pos)
				fx2:SetNormal(angpos2.Ang:Forward())
				TFA.Effects.Create(shelltype2, fx2)
			end
		end
	end
end

function SWEP:GetTracerOrigin(...)
	local att = self:GetMuzzleAttachment()

	local attpos = (self:IsFirstPerson() and self.OwnerViewModel or self):GetAttachment(att)

	if attpos and attpos.Pos then
		return attpos.Pos
	end
end