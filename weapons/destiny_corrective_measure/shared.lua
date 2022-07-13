SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= ""
SWEP.Author							= "Delta"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "Corrective Measure"
SWEP.Type							= "It breaks the rules of reality as ruthlessly as it shatters your foes."
SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 62
SWEP.Slot							= 2
SWEP.SlotPos						= 100

SWEP.DisableLUT = true

SWEP.Rarity = "Legendary"

SWEP.FiresUnderwater 				= true

SWEP.IronInSound 					= nil
SWEP.IronOutSound 					= nil
SWEP.CanBeSilenced					= false
SWEP.DisableChambering 				= true
SWEP.SelectiveFire = false -- Allow selecting your firemode?


SWEP.Primary.ClipSize				= 59
SWEP.Primary.DefaultClip			= SWEP.Primary.ClipSize*10
SWEP.Primary.RPM					= 450
SWEP.Primary.Ammo					= "ar2"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.Range 					= 40000
SWEP.Primary.RangeFalloff 			= -1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= true
SWEP.Primary.Delay				    = 0
SWEP.FireSoundAffectedByClipSize = false

SWEP.Primary.Sound 					= Sound ("TFA_CORRECTIVEM_FIRE.1")
SWEP.Primary.ReloadSound 			= Sound ("TFA_CORRECTIVEM_RELOAD.1")

SWEP.Primary.LoopSound = Sound ("TFA_CORRECTIVEM_LOOP.1") -- Looped fire sound, unsilenced
SWEP.Primary.LoopSoundTail = Sound ("TFA_CORRECTIVEM_TRAIL.1") -- Loop end/tail sound, unsilenced
SWEP.Primary.LoopSoundAutoOnly = true -- Play loop sound for full-auto only? Fallbacks to Primary.Sound for semi/burst if true

SWEP.Primary.PenetrationMultiplier 	= .5
SWEP.MaxPenetrationCounter = 3 -- The maximum number of ricochets.  To prevent stack overflows.
SWEP.Primary.Damage					= 40
SWEP.Primary.HullSize 				= 2
SWEP.DamageType 					= DMG_BULLET

SWEP.DoMuzzleFlash 					= true
SWEP.MuzzleFlashEffect 				= "tfa_muzzleflash_rifle"

SWEP.IronRecoilMultiplier			= 0.69 //nice
SWEP.CrouchRecoilMultiplier			= 0.9
SWEP.JumpRecoilMultiplier			= 2
SWEP.WallRecoilMultiplier			= 1.1
SWEP.ChangeStateRecoilMultiplier	= 1.2
SWEP.CrouchAccuracyMultiplier		= 0.8
SWEP.ChangeStateAccuracyMultiplier	= 1
SWEP.JumpAccuracyMultiplier			= 10
SWEP.WalkAccuracyMultiplier			= 1.5
SWEP.NearWallTime 					= 0.5
SWEP.SprintFOVOffset 				= 2

SWEP.ViewModel						= "models/weapons/CorrectiveMeasure/c_Corrective_Measure.mdl"
--SWEP.WorldModel						= "models/weapons/c_thorn.mdl"
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
SWEP.Blowback_Shell_Enabled 		= true

SWEP.TracerName 					= nil
SWEP.TracerCount 					= 1
SWEP.ImpactEffect 					= "impact"

SWEP.IronSightTime 					= 0.4
SWEP.Primary.KickUp					= 0.19
SWEP.Primary.KickDown				= 0.19
SWEP.Primary.KickHorizontal			= 0.1
SWEP.Primary.StaticRecoilFactor 	= 0.5
SWEP.Primary.Spread					= 0.08
SWEP.Primary.IronAccuracy 			= 0.01
SWEP.Primary.SpreadMultiplierMax 	= 1.5
SWEP.Primary.SpreadIncrement 		= 0.35
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= .9
SWEP.IronSightsMoveSpeed 			= 0.75

SWEP.AllowIronSightsDoF = false

SWEP.IronSightsPos = Vector(-5.8915, -15, -1.001)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(5.226, -6, 0)
SWEP.RunSightsAng = Vector(-18, 36, -13.5)
SWEP.InspectPos = Vector(6.23, -5.829, -1.206) //Vector(8, -4.8, -3)
SWEP.InspectAng = Vector(18.291, 30.954, 17.587) //Vector(11.199, 38, 0)	

SWEP.VMPos = Vector(-.5, -2.8, .2) -- The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(1, .8, -.5) -- The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false -- Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse

SWEP.CrouchPos =  Vector(-.5, -2.8, .4)
SWEP.CrouchAng = Vector(1.2, .5, 0)

SWEP.MuzzleAttachment           = "muzzle"       -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment            = "shell"       -- Should be "2" for CSS models or "shell" for hl2 models

SWEP.LuaShellEject = true -- Enable shell ejection through lua?
SWEP.LuaShellScale = 1.2 -- The model scale to use for ejected shells
SWEP.LuaShellYaw = nil -- The model yaw rotation ( relative ) to use for ejected shells

SWEP.Attachments = {
	[3] = { offset = { 0, 0 }, atts = { "d2mp_backup_mag", "d2mp_sprint_grip", "d2mp_freehand_grip", "d2mp_icarus_grip", }, order = 3 },
	[4] = { offset = { 0, 0 }, atts = { "d2mp_light_rounds", "d2mp_heavy_rounds", "d2mp_fire_rounds", "d2mp_explosive_rounds", "d2mp_spinning_up"}, order = 4 },
	[5] = { offset = { 0, 0 }, atts = { "d2mp_quick_access_sling", "d2mp_counterbalance", "d2mp_zen_moment",  "d2mp_triple_tap" }, order = 5 },
	[6] = { offset = { 0, 0 }, atts = { "d2mp_dragonfly_spec", "d2mp_subsistence", "d2mp_reconstruction", "d2mp_openingshot"}, order = 6 },
}

SWEP.ViewModelBoneMods = { //Chain bones, just was too lazy to rename the vertex groups
	["Thigh.L"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }, 
	["Thigh.R"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Spine_1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Calf.L"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Calf.R"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 12) },
	["Spine_2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Foot.L"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Foot.R"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Spine_3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-9.223, 6.11, 0) },
	["AmmoBone"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.VElements = {
	["scope"] = { type = "Model", model = "models/rtcircle.mdl", bone = "Pelvis", rel = "", pos = Vector(0, -5, -1.625), angle = Angle(0, 90, 180), size = Vector(.25, .25, .25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["world"] = { type = "Model", model = SWEP.ViewModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-11, 7, -4.2), angle = Angle(-11.5, 1, 180), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = { [1] = 0 } }
}

SWEP.ThirdPersonReloadDisable = false

SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH -- TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.5 -- Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.1 -- Start an idle this far early into the end of another animation

SWEP.Walk_Mode = TFA.Enum.LOCOMOTION_HYBRID -- LOCOMOTION_ANI = mdl, LOCOMOTION_HYBRID = ani + lua, LOCOMOTION_LUA = lua only

SWEP.WalkAnimation = {
	
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "walk", -- Number for act, String/Number for sequence
		["is_idle"] = true
	}
}

SWEP.EventTable = {
	[ACT_VM_RELOAD] = {
																				
		{ ["time"] = 1, ["type"] = "lua", ["value"] = function( wep, viewmodel, ifp ) wep:ResetBones() end, ["client"] = true, ["server"] = true}
	},
	[ACT_VM_DRAW] = {															
		{ ["time"] = 0, ["type"] = "sound", ["value"] = Sound("TFA_CORRECTIVEM_DRAW.1") }
	}
}

SWEP.SequenceRateOverride= { 
	[ACT_VM_RELOAD] = 1.1,
	[ACT_VM_DRAW] = .5,
	[ACT_VM_HOLSTER] = .8,
}


SWEP.ViewModelPunchPitchMultiplier = .45 -- Default value is 0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights = nil -- Default value is 0.09

SWEP.ViewModelPunch_MaxVertialOffset = 2 -- Default value is 3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights = 1 -- Default value is 1.95
SWEP.ViewModelPunch_VertialMultiplier = 2.25 -- Default value is 1
SWEP.ViewModelPunch_VertialMultiplier_IronSights = nil -- Default value is 0.25

SWEP.ViewModelPunchYawMultiplier = .62 -- Default value is 0.6
SWEP.ViewModelPunchYawMultiplier_IronSights = nil -- Default value is 0.25


SWEP.StatCache_Blacklist = {
	["Primary.LoopSound"] = true,
	["Primary.LoopSoundTail"] = true
}

SWEP.AttachmentTableOverride = { -- overrides WeaponTable for attachments
	["d2mp_light_rounds"] = { -- attachment id, root of WeaponTable override
		["Primary"] = {
			["LoopSound"] = nil,
			["LoopSoundTail"] = nil
		}
	},
	["d2mp_heavy_rounds"] = { -- attachment id, root of WeaponTable override
		["Primary"] = {
			["LoopSound"] = nil,
			["LoopSoundTail"] = nil
		}
	}
}

-- [[RENDER TARGET]] --
SWEP.RTDrawEnabled = true
SWEP.RTReticleMaterial = Material("models/CorrectiveMeasure/CorrectiveMeasureReticle")
SWEP.Glass = Material("models/CorrectiveMeasure/CorrectiveMeasureGlass")
SWEP.RTDot = Material("reticle/destiny2_reddot")
SWEP.RTReticleScale = 1
SWEP.RTDotScale = .05
SWEP.RTShadowScale = 2
SWEP.RTMaterialOverride = -1 -- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.
SWEP.RTOpaque = true -- Do you want your render target to be opaque?
SWEP.RTScopeFOV = 90 / 2 / 2 -- Default FOV / Scope Zoom / screenscale
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

function SWEP:Think2(...)
	if self:IsAttached("d2mp_light_rounds") or self:IsAttached("d2mp_heavy_rounds") or self:IsAttached("d2mp_spinning_up") then
		self.Primary_TFA.LoopSound = nil
		self.Primary_TFA.LoopSoundTail = nil
	else
		self.Primary_TFA.LoopSound = Sound ("TFA_CORRECTIVEM_LOOP.1")
		self.Primary_TFA.LoopSoundTail = Sound ("TFA_CORRECTIVEM_TRAIL.1")
	end
	if CLIENT then
		local fadein = math.Clamp(self:GetIronSightsProgress(), 0, .3)
		if self:GetIronSights() then
			
			self.VElements["scope"].color = Color(255, 255, 255, (255*self:GetIronSightsProgress()))
			self.ViewModelBoneMods["AmmoBone"].scale = Vector(0, 0, 0)
		else
			self.VElements["scope"].color = Color(255, 255, 255, 0)
			self.ViewModelBoneMods["AmmoBone"].scale = Vector(1, 1, 1)
		end
	end
	if CLIENT then
		if self:GetStatus() != TFA.GetStatus("reloading") then
			if self:Clip1() > 9 then
				self.ViewModelBoneMods["Thigh.L"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Thigh.R"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Spine_1"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Calf.L"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Calf.R"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Spine_2"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Foot.L"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Foot.R"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Spine_3"].scale = Vector(1, 1, 1)
			end

			if self:Clip1() <= 8 then
				self.ViewModelBoneMods["Spine_3"].scale = Vector(0, 0, 0)
			end
			if self:Clip1() <= 7 then
				self.ViewModelBoneMods["Foot.R"].scale = Vector(0, 0, 0)
			end
			if self:Clip1() <= 6 then
				self.ViewModelBoneMods["Foot.L"].scale = Vector(0, 0, 0)
			end
			if self:Clip1() <= 5 then
				self.ViewModelBoneMods["Spine_2"].scale = Vector(0, 0, 0)
			end
			if self:Clip1() <= 4 then
				self.ViewModelBoneMods["Calf.R"].scale = Vector(0, 0, 0)		
			end
			if self:Clip1() <= 3 then
				self.ViewModelBoneMods["Calf.L"].scale = Vector(0, 0, 0)
			end
			if self:Clip1() <= 2 then
				self.ViewModelBoneMods["Spine_1"].scale = Vector(0, 0, 0)				
			end
			if self:Clip1() <= 1 then
				self.ViewModelBoneMods["Thigh.R"].scale = Vector(0, 0, 0)				
			end
			if self:Clip1() <= 0 then
				self.ViewModelBoneMods["Thigh.L"].scale = Vector(0, 0, 0)
			end
			
		end
	end
	return BaseClass.Think2(self, ...)
end

function SWEP:OnRemove(...)
	//self:StopSound("TFA_COMMEM_LOOP.1")
	return BaseClass.OnRemove(self, ...)
end

function SWEP:ResetBones()
	if CLIENT then
		self.ViewModelBoneMods["Thigh.L"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Thigh.R"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Spine_1"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Calf.L"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Calf.R"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Spine_2"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Foot.L"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Foot.R"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Spine_3"].scale = Vector(1, 1, 1)
	end
end

function SWEP:PrimaryAttack(...)
	if self:CanPrimaryAttack(true) and self.Owner:IsPlayer() then
		ParticleEffectAttach("hl2mmod_muzzleflash_smg1", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
		ParticleEffectAttach("d2auto_muzzleflash_void", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
	end
	return BaseClass.PrimaryAttack(self, ...)
end