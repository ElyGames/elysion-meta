SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= ""
SWEP.Author							= "Delta"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "Vision Of Confluence"
SWEP.Type							= "What you have seen will mark you forever."
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
SWEP.SelectiveFire = true -- Allow selecting your firemode?
SWEP.DisableBurst = true


SWEP.Primary.ClipSize				= 17
SWEP.Primary.DefaultClip			= SWEP.Primary.ClipSize*10
SWEP.Primary.RPM					= 180
SWEP.Primary.Ammo					= "ar2"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.Range 					= 40000
SWEP.Primary.RangeFalloff 			= -1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= true
SWEP.Primary.Delay				    = 0
SWEP.FireSoundAffectedByClipSize = false

SWEP.Primary.Sound 					= Sound ("TFA_VISIONC_FIRE.1")
SWEP.Primary.ReloadSound 			= Sound ("TFA_VISIONC_RELOAD.1")

//SWEP.Primary.LoopSound = Sound ("TFA_COMMEM_LOOP.1") -- Looped fire sound, unsilenced
//SWEP.Primary.LoopSoundTail = Sound ("TFA_COMMEM_LOOPEND.1") -- Loop end/tail sound, unsilenced
//SWEP.Primary.LoopSoundAutoOnly = true -- Play loop sound for full-auto only? Fallbacks to Primary.Sound for semi/burst if true


SWEP.Primary.PenetrationMultiplier 	= .6
SWEP.MaxPenetrationCounter = 2 -- The maximum number of ricochets.  To prevent stack overflows.
SWEP.Primary.Damage					= 55
SWEP.Primary.HullSize 				= 2
SWEP.DamageType 					= DMG_BULLET

SWEP.DoMuzzleFlash 					= true
SWEP.MuzzleFlashEffect 				= "tfa_muzzleflash_rifle"

SWEP.IronRecoilMultiplier			= 0.55
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

SWEP.ViewModel						= "models/weapons/VisionConfluence/c_Vision_of_Confluence.mdl"
--SWEP.WorldModel						= "models/weapons/c_thorn.mdl"
SWEP.ViewModelFOV					= 58
SWEP.ViewModelFlip					= false
SWEP.MaterialTable 					= nil
SWEP.UseHands 						= true
SWEP.HoldType 						= "ar2"
SWEP.ReloadHoldTypeOverride 		= "ar2"

SWEP.ShowWorldModel = false

SWEP.BlowbackEnabled 				= true
SWEP.BlowbackVector 				= Vector(0, -2, 0)
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
SWEP.Primary.KickUp					= 0.2
SWEP.Primary.KickDown				= 0.2
SWEP.Primary.KickHorizontal			= 0.08
SWEP.Primary.StaticRecoilFactor 	= 0.5
SWEP.Primary.Spread					= 0.05
SWEP.Primary.IronAccuracy 			= 0.006
SWEP.Primary.SpreadMultiplierMax 	= 1.5
SWEP.Primary.SpreadIncrement 		= 0.35
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= 1
SWEP.IronSightsMoveSpeed 			= 0.8

SWEP.AllowIronSightsDoF = false

SWEP.IronSightsPos = Vector(-5.11, -5.7, -.21)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(5.226, -6, 0)
SWEP.RunSightsAng = Vector(-18, 36, -13.5)
SWEP.InspectPos = Vector(6.23, -5.829, -1.206) //Vector(8, -4.8, -3)
SWEP.InspectAng = Vector(18.291, 30.954, 17.587) //Vector(11.199, 38, 0)	

SWEP.VMPos = Vector(-.7, -2.8, .4) -- The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(1, .5, -.5) -- The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
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

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5, 4, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 4, 0) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 9, 0) },
}



SWEP.VElements = {
	["reticle"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "WeaponBone", rel = "", pos = Vector(0.019, -10, -.2), angle = Angle(0, 0, 90), size = Vector(0.003, 0.003, 0.003), color = Color(255, 255, 255, 255), surpresslightning = false, material = "reticle/destiny2_reddot", skin = 0, bodygroup = {} },
}


SWEP.WElements = {
	["world"] = { type = "Model", model = SWEP.ViewModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-11, 7, -4.2), angle = Angle(-11.5, 1, 180), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = { [1] = 0 } }
}

SWEP.ThirdPersonReloadDisable = false

SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH -- TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.5 -- Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.1 -- Start an idle this far early into the end of another animation

--[[
SWEP.Walk_Mode = TFA.Enum.LOCOMOTION_HYBRID -- LOCOMOTION_ANI = mdl, LOCOMOTION_HYBRID = ani + lua, LOCOMOTION_LUA = lua only

SWEP.WalkAnimation = {
	
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "walk", -- Number for act, String/Number for sequence
		["is_idle"] = true
	}
}
]]
SWEP.EventTable = {
	
	[ACT_VM_DRAW] = {															
		{ ["time"] = 0, ["type"] = "sound", ["value"] = Sound("TFA_TRUSTEE_DRAW.1") }
	}
}

SWEP.SequenceRateOverride= { 
	[ACT_VM_RELOAD] = 1.15,
	[ACT_VM_PRIMARYATTACK] = 1.25,
	[ACT_VM_DRAW] = .8,
	[ACT_VM_HOLSTER] = 1,
}


SWEP.ViewModelPunchPitchMultiplier = .4 -- Default value is 0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights = nil -- Default value is 0.09

SWEP.ViewModelPunch_MaxVertialOffset = 1.6 -- Default value is 3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights = 1 -- Default value is 1.95
SWEP.ViewModelPunch_VertialMultiplier = 2 -- Default value is 1
SWEP.ViewModelPunch_VertialMultiplier_IronSights = nil -- Default value is 0.25

SWEP.ViewModelPunchYawMultiplier = .5 -- Default value is 0.6
SWEP.ViewModelPunchYawMultiplier_IronSights = nil -- Default value is 0.25


SWEP.StatCache_Blacklist = {
	["Primary.LoopSound"] = true,
	["Primary.LoopSoundTail"] = true
}

--[[
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
}]]


SWEP.DSCReticle = Material("models/trustee/trusteeReticle")

DEFINE_BASECLASS( SWEP.Base )

function SWEP:Think2(...)
	if CLIENT then
		local fadein = math.Clamp(self:GetIronSightsProgress(), 0.4, .8)
		if self:GetIronSights() then
			//self.DSCReticle:SetVector("$color2", Vector(fadein, fadein, fadein))
			self.VElements["reticle"].color = Color(255, 255, 255, (255*self:GetIronSightsProgress()))
		else
			//self.DSCReticle:SetVector("$color2", Vector(fadein, fadein, fadein))
			self.VElements["reticle"].color = Color(255, 255, 255, 0)
		end
	end
	return BaseClass.Think2(self, ...)
end


function SWEP:PrimaryAttack(...)
	if self:CanPrimaryAttack(true) and self.Owner:IsPlayer() then
		ParticleEffectAttach("hl2mmod_muzzleflash_smg1", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
		//ParticleEffectAttach("d2auto_muzzleflash_void", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
	end
	return BaseClass.PrimaryAttack(self, ...)
end