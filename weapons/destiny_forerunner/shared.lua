SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= ""
SWEP.Author							= "Delta"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "Forerunner"
SWEP.Type							= "A new chapter for an old legend."

SWEP.Rarity = "Exotic"

SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 80
SWEP.Slot							= 1
SWEP.SlotPos						= 100

SWEP.FiresUnderwater 				= true

SWEP.CanBeSilenced					= false
SWEP.DoMuzzleFlash 					= true
SWEP.MuzzleFlashEffect 				= "tfa_muzzleflash_rifle"
SWEP.SelectiveFire					= false
SWEP.DisableBurstFire				= true
SWEP.DisableChambering 				= true

SWEP.Primary.ClipSize				= 8
SWEP.Primary.DefaultClip			= 8*10
SWEP.Primary.RPM					= 200
SWEP.Primary.Ammo					= "357"
SWEP.Primary.AmmoConsumption 		= 1
//SWEP.Primary.Range 					= 40000
//SWEP.Primary.RangeFalloff 			= -1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= true
SWEP.Primary.Sound 					= Sound ("TFA_FORERUNNER_FIRE.1")
SWEP.Primary.ReloadSound 			= Sound ("TFA_FORERUNNER_RELOAD.1")
SWEP.Primary.PenetrationMultiplier 	= 1
SWEP.Primary.Damage					= 55
SWEP.Primary.HullSize 				= 2
SWEP.DamageType 					= DMG_BULLET



SWEP.IronRecoilMultiplier			= 0.7
SWEP.CrouchRecoilMultiplier			= 0.85
SWEP.JumpRecoilMultiplier			= 2
SWEP.WallRecoilMultiplier			= 1.1
SWEP.ChangeStateRecoilMultiplier	= 1.2
SWEP.CrouchAccuracyMultiplier		= 0.8
SWEP.ChangeStateAccuracyMultiplier	= 1
SWEP.JumpAccuracyMultiplier			= 10
SWEP.WalkAccuracyMultiplier			= 1.5
SWEP.NearWallTime 					= 0.5
SWEP.ToCrouchTime 					= 0.25
SWEP.SprintFOVOffset 				= 2

SWEP.ViewModel						= "models/weapons/forerunner/c_forerunner.mdl"
--SWEP.WorldModel						= "models/weapons/c_thorn.mdl"
SWEP.ViewModelFOV					= 58
SWEP.ViewModelFlip					= false
SWEP.MaterialTable 					= nil
SWEP.UseHands 						= true
SWEP.HoldType 						= "revolver"
SWEP.ReloadHoldTypeOverride 		= "revolver"

SWEP.ShowWorldModel = false

SWEP.BlowbackEnabled 				= true
SWEP.BlowbackVector 				= Vector(0, 0, 0)
SWEP.BlowbackCurrentRoot			= 0
SWEP.BlowbackCurrent 				= 0
SWEP.BlowbackBoneMods 				= nil
SWEP.Blowback_Only_Iron 			= true
SWEP.Blowback_PistolMode 			= false
SWEP.Blowback_Shell_Enabled 		= false
SWEP.Blowback_Shell_Effect 			= "None"
SWEP.BlowbackAllowAnimation = false -- Allow playing shoot animation with blowback?

SWEP.Tracer							= 0
--SWEP.TracerName 					= "tracer_thorn"
SWEP.TracerCount 					= 1
SWEP.TracerLua 						= false
SWEP.TracerDelay					= 0
SWEP.ImpactEffect 					= "impact"
//SWEP.MuzzleAttachment           	= "muzzle"

--[[VIEWMODEL ANIMATION HANDLING]]--
SWEP.AllowViewAttachment = false --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.


SWEP.VMPos = Vector(-1, -4, 0)
SWEP.VMAng = Vector(1.65, 1.5, -2.5)
SWEP.VMPos_Additive = false

SWEP.CrouchPos = Vector(-.8, -3.75, .5)
SWEP.CrouchAng = Vector(1.65, 1.5, -2.5)

SWEP.IronSightTime 					= 0.2
SWEP.Primary.KickUp					= .4
SWEP.Primary.KickDown				= .4
SWEP.Primary.KickHorizontal			= 0.1
SWEP.Primary.StaticRecoilFactor 	= 0.1
SWEP.Primary.Spread					= 0.005
SWEP.Primary.IronAccuracy 			= 0.001
SWEP.Primary.SpreadMultiplierMax 	= 1.1
SWEP.Primary.SpreadIncrement 		= 0.1
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= 1
SWEP.IronSightsMoveSpeed 			= 0.75

SWEP.IronSightsPos = Vector(-4.4, -24, -1.77)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.RunSightsPos = Vector(-1, -12, -6.252)
SWEP.RunSightsAng =Vector(45, -1.407, 0)

SWEP.InspectPos = Vector(5, -10, -0.202)
SWEP.InspectAng = Vector(21.809, 29.548, 21.809)

SWEP.Attachments = {
	//[1] = { offset = { 0, 0 }, atts = { "nightfalladept" }, order = 1 },
	--[[ [2] = { offset = { 0, 0 }, atts = { "d2mp_backup_mag", "d2mp_sprint_grip", "d2mp_freehand_grip", "d2mp_icarus_grip", }, order = 3 },
	[3] = { offset = { 0, 0 }, atts = { "d2mp_light_rounds", "d2mp_heavy_rounds", "d2mp_fire_rounds", "d2mp_explosive_rounds"}, order = 4 },
	[4] = { offset = { 0, 0 }, atts = { "d2mp_quick_access_sling", "d2mp_counterbalance", "d2mp_zen_moment", "d2mp_openingshot"}, order = 5 },
	[5] = { offset = { 0, 0 }, atts = { "d2mp_dragonfly_spec", "d2mp_subsistence", "d2mp_reconstruction", "d2mp_triple_tap"}, order = 6 }
--]] }

SWEP.VElements = {
	//["reticle"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "Pedestal", rel = "", pos = Vector(0,-6.58,8.8), angle = Angle(0, 0, 0), size = Vector(0.007, 0.007, 0), color = Color(255, 255, 255, 255), surpresslightning = false, material = "reticle/destiny2_reddot", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["world"] = { type = "Model", model = SWEP.ViewModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-14.5, 5, -4.5), angle = Angle(-5.844, 0, 180), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.EventTable = {
	[ACT_VM_DRAW] = {															
		{ ["time"] = 0, ["type"] = "sound", ["value"] = Sound("TFA_FORERUNNER_DRAW.1") }
	} 
}

SWEP.SequenceRateOverride= { 
	[ACT_VM_RELOAD] = .82,
	[ACT_VM_DRAW] = .73,
	[ACT_VM_HOLSTER] = .73,
	[ACT_VM_FIDGET] = .8,
	[ACT_VM_PRIMARYATTACK] = .85
}
--[[
SWEP.Customize_Mode = TFA.Enum.LOCOMOTION_HYBRID -- LOCOMOTION_ANI = mdl, LOCOMOTION_HYBRID = ani + lua, LOCOMOTION_LUA = lua only

SWEP.CustomizeAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "inspectstart", -- Number for act, String/Number for sequence
		["transition"] = true
	},
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "inspectloop", -- Number for act, String/Number for sequence
		["is_idle"] = true
	},
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "inspectend", -- Number for act, String/Number for sequence
		["transition"] = true
	}
}--]] 


SWEP.Primary.RangeFalloffLUT = {
	bezier = true, -- Whenever to use Bezier or not to interpolate points?
	-- you probably always want it to be set to true
	range_func = "cubic", -- function to spline range
	-- "linear" for linear splining.
	-- Possible values are "quintic", "cubic", "cosine", "sinusine", "linear" or your own function
	units = "meters", -- possible values are "inches", "inch", "hammer", "hu" (are all equal)
	-- everything else is considered to be meters
	lut = { -- providing zero point is not required
		-- without zero point it is considered to be as {range = 0, damage = 1}
		{range = 0, damage = 1},
		{range = 25, damage = 0.95},
		{range = 35, damage = 0.8},
		{range = 46, damage = .7},
		{range = 65, damage = .45},
	}
}

SWEP.AllowIronSightsDoF = false

-- [[RENDER TARGET]] --
SWEP.RTDrawEnabled = true
SWEP.RTReticleMaterial = Material("models/forerunner/forerunnerreticle")
//SWEP.RTShadowMaterial = Material("models/tataragaze/TataraGazeReticleShadow")
SWEP.RTReticleScale = .85
SWEP.RTDotScale = .05
SWEP.RTShadowScale = 1.05
SWEP.RTMaterialOverride = 2 -- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.
SWEP.RTOpaque = true -- Do you want your render target to be opaque?
SWEP.RTScopeFOV = 90 / 0.75 / 2 -- Default FOV / Scope Zoom / screenscale
SWEP.RTBGBlur = false -- Draw background blur when 3D scope is active?
SWEP.ScopeOverlayThreshold = .98

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
	surface.SetDrawColor(self:GetStat("RTShadowColor", ColorAlpha(color_white,250)))
	local shadScale = self:GetStat("RTShadowScale", 2)
	surface.DrawTexturedRect(rtw / 2 - rtw * shadScale / 2, rth / 2 - rth * shadScale / 2, rtw * shadScale, rth * shadScale)

	cam.End2D()
end

DEFINE_BASECLASS( SWEP.Base )

function SWEP:Think2(...)
	if CLIENT then
		self.Bodygroups_V["Sight"] = self:GetIronSightsProgress() > self:GetStat("ScopeOverlayThreshold") and 0 or 1
		local fadein = math.Clamp(self:GetIronSightsProgress(), 0, 1)
		if self:GetIronSightsProgress() > .75 then
			
			//self.Reticle:SetVector("$color2", Vector(fadein, fadein, fadein))
			//self.VElements["reticle"].color = Color(255, 255, 255, (255*self:GetIronSightsProgress()))
		else
			//self.Reticle:SetVector("$color2", Vector(0,0,0))
			//self.VElements["reticle"].color = Color(255, 255, 255, 0)
		end
	end
	return BaseClass.Think2(self, ...)
end

function SWEP:TriggerAttack(...)
	if self:CanPrimaryAttack(true) and self:GetOwner():IsPlayer() then
		if file.Exists( "particles/hl2mmod_muzzleflashes.pcf", "THIRDPARTY" ) or file.Exists( "particles/hl2mmod_muzzleflashes.pcf", "WORKSHOP" ) then
			ParticleEffectAttach("hl2mmod_muzzleflash_smg1", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
		end
	end
	return BaseClass.TriggerAttack(self, ...)
end