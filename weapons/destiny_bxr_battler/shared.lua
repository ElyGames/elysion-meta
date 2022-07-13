SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= "Pulse Rifle"
SWEP.Author							= "Delta"
SWEP.Contact						= "https://steamcommunity.com/id/DeltaDesigns/"
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "BXR-55 Battler"
SWEP.Type							= "A treasured competition piece from a bygone era."
SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 65
SWEP.Slot							= 2
SWEP.SlotPos						= 100

SWEP.Rarity = "Legendary"
SWEP.DisableLUT = true

SWEP.FiresUnderwater 				= true

SWEP.IronInSound 					= nil
SWEP.IronOutSound 					= nil
SWEP.CanBeSilenced					= false
SWEP.Silenced 						= false
SWEP.SelectiveFire					= false


SWEP.Primary.ClipSize				= 36
SWEP.Primary.DefaultClip			= 36*10
SWEP.Primary.Ammo					= "ar2"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.Range 					= 10000
SWEP.Primary.RangeFalloff 			= 0.5
SWEP.Primary.Sound 					= Sound ("TFA_BXRBATTLER_FIRE.1");
SWEP.Primary.ReloadSound 			= Sound ("TFA_BXRBATTLER_RELOAD.1");
SWEP.Primary.PenetrationMultiplier 	= 1
SWEP.MaxPenetrationCounter = 1 --The maximum number of ricochets.  To prevent stack overflows.
SWEP.Primary.Damage = 23 -- Damage, in standard damage points.
SWEP.Primary.DamageTypeHandled = true -- true will handle damagetype in base
SWEP.Primary.DamageType = DMG_BULLET -- See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.Force = 1 -- Force value, leave nil to autocalc
SWEP.Primary.Knockback = 0 -- Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize = 1 -- Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots = 1 -- The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = true -- Automatic/Semi Auto
SWEP.OnlyBurstFire = true -- No auto, only burst/single?
//SWEP.Primary.RPM = 600 -- This is in Rounds Per Minute / RPM
//SWEP.Primary.RPM_Semi = 150 -- RPM for semi-automatic or burst fire.  This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Burst = 900 -- RPM for burst fire, overrides semi.  This is in Rounds Per Minute / RPM
SWEP.Primary.DryFireDelay = nil -- How long you have to wait after firing your last shot before a dryfire animation can play.  Leave nil for full empty attack length.  Can also use SWEP.StatusLength[ ACT_VM_BLABLA ]
SWEP.Primary.BurstDelay = nil -- Delay between bursts, leave nil to autocalculate
SWEP.BurstFireCount = 3 -- Burst fire count override (autocalculated by the clip size if nil)

SWEP.DoMuzzleFlash 					= true
SWEP.MuzzleFlashEffect 				= "tfa_muzzleflash_rifle"
SWEP.MuzzleAttachment           = "muzzle"       -- Should be "1" for CSS models or "muzzle" for hl2 models

SWEP.IronRecoilMultiplier			= 0.75
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
SWEP.SprintFOVOffset 				= 2
SWEP.ProjectileVelocity 			= 9

SWEP.ProjectileEntity 				= nil
SWEP.ProjectileModel 				= nil

SWEP.ViewModel						= "models/weapons/BXRBattler/c_bxr_55_battler.mdl"
//SWEP.ViewModelOrnament				= "models/weapons/outbreak/c_outbreak_affliction.mdl"
SWEP.WorldModel						= nil
SWEP.ViewModelFOV					= 58
SWEP.ViewModelFlip					= false
SWEP.MaterialTable 					= nil
SWEP.UseHands 						= true
SWEP.HoldType 						= "ar2"
SWEP.ReloadHoldTypeOverride 		= "ar2"

SWEP.ShowWorldModel = false

SWEP.Tracer							= 0
SWEP.TracerName 					= nil
SWEP.TracerCount 					= 1
SWEP.TracerLua 						= true
SWEP.TracerDelay					= 0
SWEP.ImpactEffect 					= "impact"

SWEP.VMPos = Vector(-1.25, -2, .25)
SWEP.VMAng = Vector(1, 1, -1)
SWEP.CrouchPos = Vector(-1.25, -2, .25)
SWEP.CrouchAng = Vector(1, 1, 0)

SWEP.VMPos_Additive = false

SWEP.IronSightTime 					= 0.2
SWEP.Primary.KickUp					= 0.1
SWEP.Primary.KickDown				= 0.1
SWEP.Primary.KickHorizontal			= 0.07
SWEP.Primary.StaticRecoilFactor 	= 0.5
SWEP.Primary.Spread					= 0.01
SWEP.Primary.IronAccuracy 			= 0.001
SWEP.Primary.SpreadMultiplierMax 	= 1.01
SWEP.Primary.SpreadIncrement 		= 0.1
SWEP.Primary.SpreadRecovery 		= 1
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= 1
SWEP.IronSightsMoveSpeed 			= 0.75

SWEP.IronSightsPos = Vector(-4.6825, -14, .5025)  //Vector(-4.684, -12, .5125) 
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(5.226, -2, 0)
SWEP.RunSightsAng = Vector(-18, 36, -13.5)
SWEP.InspectPos = Vector(5, -5, -0.202)
SWEP.InspectAng = Vector(21.809, 29.548, 21.809)



SWEP.Attachments = {
	[1] = { offset = { 0, 0 }, atts = { "destiny_bxr_bloodytooth" }, order = 1 },
	[2] = { offset = { 0, 0 }, atts = { "d2mp_backup_mag", "d2mp_sprint_grip", "d2mp_freehand_grip", "d2mp_icarus_grip", }, order = 3 },
	[3] = { offset = { 0, 0 }, atts = { "d2mp_light_rounds", "d2mp_heavy_rounds", "d2mp_fire_rounds", "d2mp_explosive_rounds"}, order = 4 },
	[4] = { offset = { 0, 0 }, atts = { "d2mp_quick_access_sling", "d2mp_counterbalance", "d2mp_zen_moment", "d2mp_openingshot"}, order = 5 },
	[5] = { offset = { 0, 0 }, atts = { "d2mp_dragonfly_spec", "d2mp_subsistence", "d2mp_reconstruction", "d2mp_triple_tap"}, order = 6 }
}

--[[ SWEP.ViewModelBoneMods = {
	//["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(-3.2, 1.6, 0.65), angle = Angle(0, -1, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-9, 9, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -4, 0) }
}--]] 

SWEP.VElements = {
	["ammo"] = { type = "Quad", bone = "reticle", rel = "", pos = Vector(00, -3.14, 1.75), angle = Angle(180, 0, 70), size = 0.012, draw_func = 

		function()
	        local ply = LocalPlayer()
	        if !IsValid(ply) then return end
	        self = ply:GetActiveWeapon()
	        if !IsValid(self) then return end
	        local str = tostring(self:Clip1())
	        while string.len(str)<2 do
	            str = "0"..str
	        end
	        

	        render.PushFilterMin( TEXFILTER.ANISOTROPIC )
	        render.PushFilterMag( TEXFILTER.ANISOTROPIC )

			
			if self:Clip1() >= 10 and self:Clip1() < 100 then
				draw.SimpleTextOutlined( str, "TFA_D2_AMMO",  -0, 0, Color(175, 200, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 1, Color( 0, 0, 255, 150 )  )
			end
			if self:Clip1() < 10 then
				draw.SimpleTextOutlined(  str, "TFA_D2_AMMO",  -0, 0, Color(175, 200, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 1, Color( 0, 0, 255, 150 ) )
			end
	       
	        render.PopFilterMin( )
	        render.PopFilterMag( )
	    end
	}
}

SWEP.WElements = {
	["world"] = { type = "Model", model = SWEP.ViewModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-9, 6, -7), angle = Angle(-8.183, 1.169, 180), size = Vector(0.9, 0.9, 0.9), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.EventTable = {
	[ACT_VM_FIDGET] = {															
		{ ["time"] = 0.1, ["type"] = "sound", ["value"] = Sound("TFA_D2_MOVEMENT.1") },
		{ ["time"] = 2.3, ["type"] = "sound", ["value"] = Sound("TFA_D2_MOVEMENT.1") }
	}
}

SWEP.ViewModelPunchPitchMultiplier = .1 -- Default value is 0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights = nil -- Default value is 0.09

SWEP.ViewModelPunch_MaxVertialOffset = 2.5 -- Default value is 3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights = nil -- Default value is 1.95
SWEP.ViewModelPunch_VertialMultiplier = 2.5 -- Default value is 1
SWEP.ViewModelPunch_VertialMultiplier_IronSights = nil -- Default value is 0.25

-- [[VIEWMODEL BLOWBACK]] --
SWEP.BlowbackEnabled = true -- Enable Blowback?
SWEP.BlowbackVector = Vector(0, 0, 0) -- Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackAngle = nil -- Angle(0, 0, 0)
SWEP.BlowbackCurrentRoot = 0 -- Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 -- Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil -- Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true -- Only do blowback on ironsights
SWEP.Blowback_PistolMode = true -- Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = false -- Shoot shells through blowback animations
SWEP.BlowbackAllowAnimation = false -- Allow playing shoot animation with blowback?

SWEP.SequenceRateOverride= { 
	[ACT_VM_HOLSTER] = 1.5,
	[ACT_VM_RELOAD] = 1.17,
	[ACT_VM_FIDGET] = .8
}

-- [[RENDER TARGET]] --
SWEP.RTDrawEnabled = true
SWEP.RTReticleMaterial = Material("models/BXRBattler/battlerreticle")
//SWEP.RTShadowMaterial = Material("models/tataragaze/TataraGazeReticleShadow")
SWEP.RTReticleScale = .77
SWEP.RTDotScale = .05
SWEP.RTShadowScale = .95
SWEP.RTMaterialOverride = 1 -- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.
SWEP.RTOpaque = true -- Do you want your render target to be opaque?
SWEP.RTScopeFOV = 90 / 0.75 / 2 -- Default FOV / Scope Zoom / screenscale
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
	surface.SetDrawColor(self:GetStat("RTShadowColor", ColorAlpha(color_white,240)))
	local shadScale = self:GetStat("RTShadowScale", 2)
	surface.DrawTexturedRect(rtw / 2 - rtw * shadScale / 2, rth / 2 - rth * shadScale / 2, rtw * shadScale, rth * shadScale)

	cam.End2D()
end


DEFINE_BASECLASS( SWEP.Base )

local l_CT = CurTime

function SWEP:TriggerAttack(tableName, clipID) //Overwrites original function from base so fire sound doesnt play 3 times, only once.
	local self2 = self:GetTable()
	local ply = self:GetOwner()

	local fnname = clipID == 2 and "Secondary" or "Primary"

	if TFA.Enum.ShootReadyStatus[self:GetShootStatus()] then
		self:SetShootStatus(TFA.Enum.SHOOT_IDLE)
	end

	if self2.CanBeSilenced and (ply.KeyDown and self:KeyDown(IN_USE)) and (SERVER or not sp) then
		local _, tanim = self:ChooseSilenceAnim(not self:GetSilenced())
		self:ScheduleStatus(TFA.Enum.STATUS_SILENCER_TOGGLE, self:GetActivityLength(tanim, true))

		return
	end

	self["SetNext" .. fnname .. "Fire"](self, l_CT() + self:GetFireDelay())

	if self:GetMaxBurst() > 1 then
		self:SetBurstCount(math.max(1, self:GetBurstCount() + 1))
	end

	if self:GetStat("PumpAction") and self:GetReloadLoopCancel() then return end

	self:SetStatus(TFA.Enum.STATUS_SHOOTING, self["GetNext" .. fnname .. "Fire"](self))
	self:ToggleAkimbo()
	self:IncreaseRecoilLUT()

	local ifp = IsFirstTimePredicted()

	local _, tanim = self:ChooseShootAnim(ifp)

	if (not sp) or (not self:IsFirstPerson()) then
		ply:SetAnimation(PLAYER_ATTACK1)
	end

	if self:GetStat(tableName .. ".Sound") and ifp and not (sp and CLIENT) then
		if ply:IsPlayer() and self:GetStat(tableName .. ".LoopSound") and (not self:GetStat(tableName .. ".LoopSoundAutoOnly", false) or self2.Primary_TFA.Automatic) then
			self:EmitGunfireLoop()
		else
			local tgtSound = self:GetStat(tableName .. ".Sound")

			if self:GetSilenced() then
				tgtSound = self:GetStat(tableName .. ".SilencedSound", tgtSound)
			end

			if (not sp and SERVER) or not self:IsFirstPerson() then
				tgtSound = self:GetSilenced() and self:GetStat(tableName .. ".SilencedSound_World", tgtSound) or self:GetStat(tableName .. ".Sound_World", tgtSound)
			end
			if self:GetBurstCount() == 1 then //This is what overwrites the burst sound, yep, thats it
				self:EmitGunfireSound(tgtSound)
			end
		end

		self:EmitLowAmmoSound()
	end

	self2["Take" .. fnname .. "Ammo"](self, self:GetStat(tableName .. ".AmmoConsumption"))

	if self["Clip" .. clipID](self) == 0 and self:GetStat(tableName .. ".ClipSize") > 0 then
		self["SetNext" .. fnname .. "Fire"](self, math.max(self["GetNext" .. fnname .. "Fire"](self), l_CT() + (self:GetStat(tableName .. ".DryFireDelay", self:GetActivityLength(tanim, true)))))
	end

	self:ShootBulletInformation()
	self:UpdateJamFactor()
	local _, CurrentRecoil = self:CalculateConeRecoil()
	self:Recoil(CurrentRecoil, ifp)

	-- shouldn't this be not required since recoil state is completely networked?
	if sp and SERVER then
		self:CallOnClient("Recoil", "")
	end

	if self:GetStat(tableName .. ".MuzzleFlashEnabled", self:GetStat("MuzzleFlashEnabled")) and (not self:IsFirstPerson() or not self:GetStat(tableName .. ".AutoDetectMuzzleAttachment", self:GetStat("AutoDetectMuzzleAttachment"))) then
		self:ShootEffectsCustom()
	end

	if self:GetStat(tableName .. ".EjectionSmoke", self:GetStat("EjectionSmoke")) and CLIENT and ply == LocalPlayer() and ifp and not self:GetStat(tableName .. ".LuaShellEject", self:GetStat("LuaShellEject")) then
		self:EjectionSmoke()
	end

	self:DoAmmoCheck(clipID)

	-- Condition self:GetStatus() == TFA.Enum.STATUS_SHOOTING is always true?
	if self:GetStatus() == TFA.Enum.STATUS_SHOOTING and self:GetStat("PumpAction") then
		if self["Clip" .. clipID](self) == 0 and self:GetStat("PumpAction.value_empty") then
			self:SetReloadLoopCancel(true)
		elseif (self:GetStat(tableName .. ".ClipSize") < 0 or self["Clip" .. clipID](self) > 0) and self:GetStat("PumpAction.value") then
			self:SetReloadLoopCancel(true)
		end
	end

	self:RollJamChance()
end

function SWEP:Think(...)
	if CLIENT then
		self.Bodygroups_V["Sight"] = self:GetIronSightsProgress() > self:GetStat("ScopeOverlayThreshold") and 0 or 1
		if self:GetIronSightsProgress() > 0.75 then
			//self.VElements["reticle"].color = Color(255, 255, 255, 0)//self:GetIronSightsProgress()*255)
		else
			//self.VElements["reticle"].color = Color(255, 255, 255, 0)
		end
	end
	return BaseClass.Think(self, ...)
end

function SWEP:PrimaryAttack(...)
	//PrintTable(self:GetMaterials())

	if self:CanPrimaryAttack(true) and self:GetOwner():IsPlayer() then
		if file.Exists( "particles/hl2mmod_muzzleflashes.pcf", "THIRDPARTY" ) or file.Exists( "particles/hl2mmod_muzzleflashes.pcf", "WORKSHOP" ) then
			ParticleEffectAttach("hl2mmod_muzzleflash_smg1", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
		end 
	end
	return BaseClass.PrimaryAttack(self, ...)
end