SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= ""
SWEP.Author							= "Delta"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "Nemesis Star"
SWEP.Type							= "What is the answer when the question is extinction?"
SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 62
SWEP.Slot							= 2
SWEP.SlotPos						= 100

SWEP.DisableLUT = true

SWEP.Rarity = "Exotic"

SWEP.FiresUnderwater 				= true

SWEP.IronInSound 					= nil
SWEP.IronOutSound 					= nil
SWEP.CanBeSilenced					= false
SWEP.DisableChambering 				= true
SWEP.SelectiveFire = false -- Allow selecting your firemode?


SWEP.Primary.ClipSize				= 59
SWEP.Primary.DefaultClip			= SWEP.Primary.ClipSize*10
SWEP.Primary.RPM					= 900
SWEP.Primary.Ammo					= "ar2"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.Range 					= 40000
SWEP.Primary.RangeFalloff 			= -1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= true
SWEP.Primary.Delay				    = 0
SWEP.FireSoundAffectedByClipSize = false

SWEP.Primary.Sound 					= Sound ("TFA_NEMESISSTAR_FIRE.1")
SWEP.Primary.ReloadSound 			= Sound ("TFA_NEMESISSTAR_RELOAD.1")

SWEP.Primary.LoopSound = Sound ("TFA_NEMESISSTAR_LOOP.1") -- Looped fire sound, unsilenced
SWEP.Primary.LoopSoundTail = Sound ("TFA_NEMESISSTAR_LOOPEND.1") -- Loop end/tail sound, unsilenced
SWEP.Primary.LoopSoundAutoOnly = true -- Play loop sound for full-auto only? Fallbacks to Primary.Sound for semi/burst if true


SWEP.Primary.PenetrationMultiplier 	= .8
SWEP.MaxPenetrationCounter = 4 -- The maximum number of ricochets.  To prevent stack overflows.
SWEP.Primary.Damage					= 38
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

SWEP.ViewModel						= "models/weapons/nemesisstar/c_nemesis_star.mdl"
--SWEP.WorldModel						= "models/weapons/c_thorn.mdl"
SWEP.ViewModelFOV					= 58
SWEP.ViewModelFlip					= false
SWEP.MaterialTable 					= nil
SWEP.UseHands 						= true
SWEP.HoldType 						= "ar2"
SWEP.ReloadHoldTypeOverride 		= "ar2"

SWEP.ShowWorldModel = false

SWEP.BlowbackEnabled 				= true
SWEP.BlowbackVector 				= Vector(0, -1, 0)
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
SWEP.Primary.KickUp					= 0.25
SWEP.Primary.KickDown				= 0.25
SWEP.Primary.KickHorizontal			= 0.15
SWEP.Primary.StaticRecoilFactor 	= 0.5
SWEP.Primary.Spread					= 0.08
SWEP.Primary.IronAccuracy 			= 0.006
SWEP.Primary.SpreadMultiplierMax 	= 1.5
SWEP.Primary.SpreadIncrement 		= 0.35
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= .9
SWEP.IronSightsMoveSpeed 			= 0.75

SWEP.AllowIronSightsDoF = false

SWEP.IronSightsPos = Vector(-5.801, -12, -.64)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(5.226, -6, 0)
SWEP.RunSightsAng = Vector(-18, 36, -13.5)
SWEP.InspectPos = Vector(6.23, -5.829, -1.206) //Vector(8, -4.8, -3)
SWEP.InspectAng = Vector(18.291, 30.954, 17.587) //Vector(11.199, 38, 0)	

SWEP.VMPos = Vector(-.5, -4, 0) -- The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(1, 1, 0) -- The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false -- Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse

SWEP.CrouchPos =  Vector(-.5, -2.8, .4)
SWEP.CrouchAng = Vector(1.2, .5, 0)

SWEP.MuzzleAttachment           = "muzzle"       -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment            = "shell"       -- Should be "2" for CSS models or "shell" for hl2 models

SWEP.LuaShellEject = true -- Enable shell ejection through lua?
SWEP.LuaShellScale = 1.2 -- The model scale to use for ejected shells
SWEP.LuaShellYaw = nil -- The model yaw rotation ( relative ) to use for ejected shells
--[[
SWEP.Attachments = {
	[3] = { offset = { 0, 0 }, atts = { "d2mp_backup_mag", "d2mp_sprint_grip", "d2mp_freehand_grip", "d2mp_icarus_grip", }, order = 3 },
	[4] = { offset = { 0, 0 }, atts = { "d2mp_light_rounds", "d2mp_heavy_rounds", "d2mp_fire_rounds", "d2mp_explosive_rounds", "d2mp_spinning_up"}, order = 4 },
	[5] = { offset = { 0, 0 }, atts = { "d2mp_quick_access_sling", "d2mp_counterbalance", "d2mp_zen_moment",  "d2mp_triple_tap" }, order = 5 },
	[6] = { offset = { 0, 0 }, atts = { "d2mp_dragonfly_spec", "d2mp_subsistence", "d2mp_reconstruction", "d2mp_openingshot"}, order = 6 },
}]]

SWEP.ViewModelBoneMods = { //Chain bones, just was too lazy to rename the vertex groups
	["Thigh.L"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }, 
	["Thigh.R"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Spine_1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -5) },
	["Calf.L"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Calf.R"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Spine_2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Foot.L"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 45) },
	["Foot.R"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Spine_3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-9.223, 6.11, 0) }
	
}

SWEP.VElements = {
	//["reticle"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "Pelvis", rel = "", pos = Vector(0, 10.909, -1.94), angle = Angle(0, 0, 90), size = Vector(0.003, 0.003, 0.003), color = Color(255, 255, 255, 255), surpresslightning = false, material = "reticle/destiny2_dsc_reticle", skin = 0, bodygroup = {} },
	
}


SWEP.WElements = {
	["world"] = { type = "Model", model = SWEP.ViewModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-11, 6, -4.2), angle = Angle(-11.5, 1, 180), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = { [1] = 0 } }
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
		{ ["time"] = 0, ["type"] = "sound", ["value"] = Sound("TFA_NEMESISSTAR_DRAW.1") }
	}
}

SWEP.SequenceRateOverride= { 
	[ACT_VM_RELOAD] = 1.11,
	[ACT_VM_DRAW] = .65,
	[ACT_VM_HOLSTER] = .8,
}

SWEP.StatCache_Blacklist = {
	["Primary.RPM"] = true,
	["Primary.KickUp"] = true,
	["Primary.KickDown"] = true,
	["Primary.KickHorizontal"] = true,
	["Primary.ReloadSound"] = true,
	["SequenceRateOverride"] = true
}

SWEP.ViewModelPunchPitchMultiplier = .45 -- Default value is 0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights = nil -- Default value is 0.09

SWEP.ViewModelPunch_MaxVertialOffset = 2 -- Default value is 3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights = 1 -- Default value is 1.95
SWEP.ViewModelPunch_VertialMultiplier = 2.25 -- Default value is 1
SWEP.ViewModelPunch_VertialMultiplier_IronSights = nil -- Default value is 0.25

SWEP.ViewModelPunchYawMultiplier = .62 -- Default value is 0.6
SWEP.ViewModelPunchYawMultiplier_IronSights = nil -- Default value is 0.25



SWEP.DSCReticle = Material("models/Commemoration/CommemorationReticle")

DEFINE_BASECLASS( SWEP.Base )

function SWEP:Initialize(...)
	self:SetNWInt("destiny_nemesis_star_busrt", 0)
	return BaseClass.Initialize(self, ...)
end

function SWEP:Think2(...)
	if CLIENT then
		local fadein = math.Clamp(self:GetIronSightsProgress(), 0, .3)
		if self:GetIronSights() then
			//self.DSCReticle:SetVector("$color2", Vector(fadein, fadein, fadein))
			//self.VElements["reticle"].color = Color(255, 255, 255, (255*self:GetIronSightsProgress()))
		else
			//self.DSCReticle:SetVector("$color2", Vector(fadein, fadein, fadein))
			//self.VElements["reticle"].color = Color(255, 255, 255, 0)
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

	if self:GetStatus() != TFA.Enum.STATUS_SHOOTING then
		self.Primary_TFA.RPM = 900
		self.Primary_TFA.KickUp = .25
		self.Primary_TFA.KickDown = .25
		self.Primary_TFA.KickHorizontal = .15
		self:SetNWInt("destiny_nemesis_star_busrt", 0)
	end
	if self:Clip1() == 0 then
		self.Primary_TFA.ReloadSound = Sound("TFA_NEMESISSTAR_RELOADEMPTY.1")
		self.SequenceRateOverride[ACT_VM_RELOAD] = 1.51
	else
		self.Primary_TFA.ReloadSound = Sound("TFA_NEMESISSTAR_RELOAD.1")
		self.SequenceRateOverride[ACT_VM_RELOAD] = 1.11
	end


	return BaseClass.Think2(self, ...)
end

function SWEP:OnRemove(...)
	self:StopSound("TFA_NEMESISSTAR_LOOP.1")
	self:SetNWInt("destiny_nemesis_star_busrt", 0)
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
		if file.Exists("particles/hl2mmod_muzzleflashes.pcf", "WORKSHOP") then
			ParticleEffectAttach("hl2mmod_muzzleflash_smg1", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
		end
		//ParticleEffectAttach("d2auto_muzzleflash_void", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
		self:SetNWInt("destiny_nemesis_star_busrt", self:GetNWInt("destiny_nemesis_star_busrt")+1)

		if self:GetNWInt("destiny_nemesis_star_busrt") > 10 then
			self.Primary_TFA.RPM = 450
		else
			self.Primary_TFA.RPM = 900
		end


		self.Primary_TFA.KickUp = math.Clamp(self.Primary_TFA.KickUp/1.07, .02, .25)
		self.Primary_TFA.KickDown = math.Clamp(self.Primary_TFA.KickDown/1.07, .02, .25)
		self.Primary_TFA.KickHorizontal = math.Clamp(self.Primary_TFA.KickHorizontal/1.07, .07, .15)
		//PrintMessage(HUD_PRINTTALK, self.Primary_TFA.RPM)
		//PrintMessage(HUD_PRINTTALK, self:GetNWInt("destiny_nemesis_star_busrt"))  

	end
	return BaseClass.PrimaryAttack(self, ...)
end