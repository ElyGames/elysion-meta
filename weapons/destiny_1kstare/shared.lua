SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= "Sniper Rifle"
SWEP.Author							= "Delta"
SWEP.Contact						= "https://steamcommunity.com/id/DeltaDesigns/"
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "1000 Yard Stare"
SWEP.Type							= "You can see everything. You can unsee nothing."
SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 70
SWEP.Slot							= 2
SWEP.SlotPos						= 100

SWEP.Rarity = "Legendary"

SWEP.FiresUnderwater 				= true

SWEP.IronInSound 					= nil
SWEP.IronOutSound 					= nil
SWEP.CanBeSilenced					= false
SWEP.Silenced 						= false
SWEP.DisableChambering 				= true

SWEP.Primary.ClipSize				= 4
SWEP.Primary.DefaultClip			= 100
SWEP.Primary.RPM_Semi				= 90
SWEP.Primary.RPM_Displayed			= 90
SWEP.Primary.Ammo					= "SniperRound"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.Range 					= 40000
SWEP.Primary.RangeFalloff 			= -1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= false
SWEP.Primary.Delay = 0
SWEP.Primary.Sound 					= Sound ("TFA_D2SNIPER_FIRE.1")
SWEP.Primary.ReloadSound 			= Sound ("TFA_D2SNIPER_RELOAD.1")
SWEP.Primary.Damage					= 105
SWEP.Primary.DamageBackup			= SWEP.Primary.Damage	
SWEP.DamageType 					= DMG_BULLET
SWEP.Primary.HullSize 				= 1
SWEP.Primary.PenetrationMultiplier 	= .6

SWEP.DoMuzzleFlash = true
SWEP.MuzzleFlashEffect = "tfa_muzzleflash_rifle"

SWEP.IronRecoilMultiplier			= 0.5
SWEP.CrouchRecoilMultiplier			= 0.9
SWEP.JumpRecoilMultiplier			= 1.2
SWEP.WallRecoilMultiplier			= 1
SWEP.ChangeStateRecoilMultiplier	= 1
SWEP.CrouchAccuracyMultiplier		= 0.8
SWEP.ChangeStateAccuracyMultiplier	= 1.1
SWEP.JumpAccuracyMultiplier			= 4
SWEP.WalkAccuracyMultiplier			= 1.5
SWEP.NearWallTime 					= 0.5
SWEP.ToCrouchTime 					= 0.25
SWEP.SprintFOVOffset 				= 2
SWEP.ProjectileVelocity 			= 9

SWEP.ProjectileEntity 				= nil
SWEP.ProjectileModel 				= nil

SWEP.ViewModel						= "models/weapons/1KStare/c_1000_yard_stare.mdl"
SWEP.WorldModel						= nil
SWEP.ViewModelFOV					= 58
SWEP.ViewModelFlip					= false
SWEP.MaterialTable 					= nil
SWEP.UseHands 						= true
SWEP.HoldType 						= "ar2"
SWEP.ReloadHoldTypeOverride 		= "ar2"

SWEP.ShowWorldModel = false

SWEP.BlowbackEnabled 				= true
SWEP.BlowbackVector 				= Vector(0, -.5, 0)
SWEP.BlowbackCurrentRoot			= 0
SWEP.BlowbackCurrent 				= 1
SWEP.BlowbackBoneMods 				= nil
SWEP.Blowback_Only_Iron 			= true
SWEP.Blowback_PistolMode 			= false
SWEP.Blowback_Shell_Enabled 		= false
SWEP.Blowback_Shell_Effect 			= "None"

SWEP.Tracer							= 0
SWEP.TracerName 					= nil
SWEP.TracerCount 					= 1
SWEP.TracerLua 						= false
SWEP.TracerDelay					= 0
//SWEP.ImpactEffect = "Impact" -- Impact Effect
SWEP.MuzzleAttachment = "muzzle"

SWEP.IronSightTime 					= 0.3
SWEP.Primary.KickUp					= 1.4
SWEP.Primary.KickDown				= 1.4
SWEP.Primary.KickHorizontal			= 0.2
SWEP.Primary.StaticRecoilFactor 	= 0.5
SWEP.Primary.Spread					= 0.09
SWEP.Primary.IronAccuracy 			= 0.0001
SWEP.Primary.SpreadMultiplierMax 	= 1.75
SWEP.Primary.SpreadIncrement 		= 1.5
SWEP.Primary.SpreadRecovery 		= 1
SWEP.Primary.Knockback = 1
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= .94
SWEP.IronSightsMoveSpeed 			= 0.75

SWEP.VMPos = Vector(0,-2.5,0)
SWEP.VMAng = Vector(1,0.5,-0.5)

SWEP.CrouchPos = Vector(0,-2.5,0)
SWEP.CrouchAng = Vector(1,0.5,-0.5)
SWEP.VMPos_Additive = false

SWEP.IronSightsPos = Vector(-4.849, -11.75, -.633)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(5.226, -2, 0)
SWEP.RunSightsAng = Vector(-18, 36, -13.5)
SWEP.InspectPos = Vector(7.034, -9.447, -0.202)
SWEP.InspectAng = Vector(21.809, 29.548, 21.809)


SWEP.ViewModelBoneMods = {
	//["LensBone"] = { scale = Vector(1.01, 1.01, 1.01), pos = Vector(0, 0, 0.02), angle = Angle(0, 0, 0) },
	//["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 7.777, 0) },
	//["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 5, 0) },
	//["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.778, 2, 0) }
}

SWEP.VElements = {
	["scope"] = { type = "Model", model = "models/rtcircle.mdl", bone = "reticle", rel = "", pos = Vector(0, -1, -0.01), angle = Angle(0, -90, 180), size = Vector(0.55, 0.55, 0.55), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {} },
	["ammo"] = { type = "Quad", bone = "reticle", rel = "", pos = Vector(00, -.7, -.55), angle = Angle(180, 0, 90), size = 0.005, active = true, draw_func = 

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
				draw.SimpleTextOutlined( "0" .. str, "TFA_D2_NORMAL",  -0, 0, Color(100, 150, 200, 150), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 0, Color( 0, 0, 0, 0 )  )
			end
			if self:Clip1() < 10 then
				draw.SimpleTextOutlined( "0" .. str, "TFA_D2_NORMAL",  -0, 0, Color(100, 150, 200, 150), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 0, Color( 0, 0, 0, 0 ) )
			end
	       
	        render.PopFilterMin( )
	        render.PopFilterMag( )
	    end
	}

}


SWEP.WElements = {
	["world"] = { type = "Model", model = SWEP.ViewModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-12, 6, -5), angle = Angle(-8.183, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}


SWEP.Attachments = {
	
	[2] = { offset = { 0, 0 }, atts = { "d2mp_backup_mag", "d2mp_sprint_grip", "d2mp_freehand_grip", "d2mp_icarus_grip", }, order = 3 },
	[3] = { offset = { 0, 0 }, atts = { "d2mp_light_rounds", "d2mp_heavy_rounds", "d2mp_fire_rounds", "d2mp_explosive_rounds"}, order = 4 },
	[4] = { offset = { 0, 0 }, atts = { "d2mp_quick_access_sling", "d2mp_counterbalance", "d2mp_openingshot"}, order = 5 },
	[5] = { offset = { 0, 0 }, atts = { "d2mp_dragonfly_spec", "d2mp_subsistence", "d2mp_reconstruction", "d2mp_triple_tap"}, order = 6 }
}


SWEP.ThirdPersonReloadDisable		= false

SWEP.SequenceRateOverride= { 
	[ACT_VM_RELOAD] = 1,
	[ACT_VM_HOLSTER] = 1.5
}

SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		//{time = 0, type = "sound", value = Sound("TFA_TROPHYHUNTER_DRAW.1")}
	}
}

SWEP.StatCache_Blacklist = {

	["Primary.Damage"] = true,
	["Primary.ClipSize"] = true,
	["Primary.HullSize"] = true

}
 
//SWEP.CrystalMaterial = Material("models/Cloudstrike/CloudstrikeCrystal")

-- [[RENDER TARGET]] --
SWEP.RTDrawEnabled = true
SWEP.RTReticleMaterial = Material("models/1KStare/1KStareReticle")
//SWEP.Compass = Material("models/1KStare/1KStareCompass")
SWEP.RTDot = Material("reticle/destiny2_reddot")
SWEP.RTReticleScale = 1.4
SWEP.RTDotScale = .05
SWEP.RTShadowScale = 2.25
SWEP.RTMaterialOverride = -1 -- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.
SWEP.RTOpaque = true -- Do you want your render target to be opaque?
SWEP.RTScopeFOV = 90 / 1.25 / 2 -- Default FOV / Scope Zoom / screenscale
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

--[[
SWEP.CustomBulletCallback = function(attacker, trace, dmginfo)
	local wep = attacker:GetActiveWeapon()
	//attacker:PrintMessage(HUD_PRINTTALK, wep.Primary_TFA.Damage)
	if not IsValid(wep) or wep.ClassName ~= "destiny_izanagis" then return end
	if not trace.HitPos then return end
	if wep:GetNWBool("izanagis_honed_edge") == true then
		wep:SetNWBool("izanagis_honed_edge", false)
	end
end]]

DEFINE_BASECLASS( SWEP.Base )

function SWEP:Think2(...)
	if CLIENT then
		self.Bodygroups_V["Sight"] = self:GetIronSightsProgress() > self:GetStat("ScopeOverlayThreshold") and 0 or 1
		if self:GetIronSightsProgress() > .75 then
			self.VElements["scope"].color = Color(255, 255, 255, (255*self:GetIronSightsProgress()))
			self.VElements["ammo"].size = 0.005;
		else
			self.VElements["scope"].color = Color(255, 255, 255, 0)	
			self.VElements["ammo"].size = 0
		end
	end
	return BaseClass.Think2(self, ...)
end

function SWEP:PrimaryAttack(...)
	if self:CanPrimaryAttack(true) and self.Owner:IsPlayer() then
		ParticleEffectAttach("hl2mmod_muzzleflash_smg1", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
		//ParticleEffectAttach("d2_muzzleflash_arc", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
	end
	return BaseClass.PrimaryAttack(self, ...)
end