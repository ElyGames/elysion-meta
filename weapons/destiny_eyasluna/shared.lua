SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= ""
SWEP.Author							= "Delta"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "Eyasluna"
SWEP.Type							= "One day, young hawk, thou shalt sail beneath the silvered moon."

SWEP.Rarity = "Legendary"

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

SWEP.Primary.ClipSize				= 12
SWEP.Primary.DefaultClip			= 12*10
SWEP.Primary.RPM					= 140
SWEP.Primary.Ammo					= "357"
SWEP.Primary.AmmoConsumption 		= 1
//SWEP.Primary.Range 					= 40000
//SWEP.Primary.RangeFalloff 			= -1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= false
SWEP.Primary.Sound 					= Sound ("TFA_D2HC_FIRE.1")
SWEP.Primary.ReloadSound 			= Sound ("TFA_D2HC_RELOADF.1")
SWEP.Primary.PenetrationMultiplier 	= 1
SWEP.Primary.Damage					= 60
SWEP.Primary.HullSize 				= 1
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

SWEP.ViewModel						= "models/weapons/eyasluna/c_eyasluna.mdl"
--SWEP.WorldModel						= "models/weapons/c_thorn.mdl"
SWEP.ViewModelFOV					= 58
SWEP.ViewModelFlip					= false
SWEP.MaterialTable 					= nil
SWEP.UseHands 						= true
SWEP.HoldType 						= "revolver"
SWEP.ReloadHoldTypeOverride 		= "revolver"

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
SWEP.BlowbackAllowAnimation = true -- Allow playing shoot animation with blowback?

SWEP.Tracer							= 0
--SWEP.TracerName 					= "tracer_thorn"
SWEP.TracerCount 					= 1
SWEP.TracerLua 						= false
SWEP.TracerDelay					= 0
SWEP.ImpactEffect 					= "impact"
//SWEP.MuzzleAttachment           	= "muzzle"

--[[VIEWMODEL ANIMATION HANDLING]]--
SWEP.AllowViewAttachment = false --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.


SWEP.VMPos = Vector(-.8, -2.5, .5)
SWEP.VMAng = Vector(1.65, 1.5, -2.5)
SWEP.VMPos_Additive = false

SWEP.CrouchPos = Vector(-.8, -3.75, .5)
SWEP.CrouchAng = Vector(1.65, 1.5, -2.5)

SWEP.IronSightTime 					= 0.3
SWEP.Primary.KickUp					= .4
SWEP.Primary.KickDown				= .4
SWEP.Primary.KickHorizontal			= 0.1
SWEP.Primary.StaticRecoilFactor 	= 0.1
SWEP.Primary.Spread					= 0.06
SWEP.Primary.IronAccuracy 			= 0.004
SWEP.Primary.SpreadMultiplierMax 	= 1.5
SWEP.Primary.SpreadIncrement 		= 0.35
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= 1
SWEP.IronSightsMoveSpeed 			= 0.75

SWEP.IronSightsPos = Vector(-4.843, -5, 1.51)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.RunSightsPos = Vector(-1, -12, -6.252)
SWEP.RunSightsAng =Vector(45, -1.407, 0)

SWEP.InspectPos = Vector(5, -10, -0.202)
SWEP.InspectAng = Vector(21.809, 29.548, 21.809)

SWEP.Attachments = {
	//[1] = { offset = { 0, 0 }, atts = { "nightfalladept" }, order = 1 },
	[2] = { offset = { 0, 0 }, atts = { "d2mp_backup_mag", "d2mp_sprint_grip", "d2mp_freehand_grip", "d2mp_icarus_grip", }, order = 3 },
	[3] = { offset = { 0, 0 }, atts = { "d2mp_light_rounds", "d2mp_heavy_rounds", "d2mp_fire_rounds", "d2mp_explosive_rounds"}, order = 4 },
	[4] = { offset = { 0, 0 }, atts = { "d2mp_quick_access_sling", "d2mp_counterbalance", "d2mp_zen_moment", "d2mp_openingshot"}, order = 5 },
	[5] = { offset = { 0, 0 }, atts = { "d2mp_dragonfly_spec", "d2mp_subsistence", "d2mp_reconstruction", "d2mp_triple_tap"}, order = 6 }
}

SWEP.VElements = {
	["reticle"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "Pedestal", rel = "", pos = Vector(0,-6.58,8.8), angle = Angle(0, 0, 0), size = Vector(0.007, 0.007, 0), color = Color(255, 255, 255, 255), surpresslightning = false, material = "reticle/destiny2_reddot", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["world"] = { type = "Model", model = SWEP.ViewModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-13, 5.5, -5), angle = Angle(-5.844, 0, 180), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.EventTable = {
	[ACT_VM_FIDGET] = {															
		{ ["time"] = .8, ["type"] = "sound", ["value"] = Sound("TFA_D2_CLICK.1") },
		{ ["time"] = .8, ["type"] = "sound", ["value"] = Sound("TFA_D2HC_CHAMBEROUT.1") },
		{ ["time"] = 0.1, ["type"] = "sound", ["value"] = Sound("TFA_D2_MOVEMENT.1") },
		{ ["time"] = 1.1, ["type"] = "sound", ["value"] = Sound("TFA_D2HC_CHAMBERSPIN.1") },
		{ ["time"] = 3.8, ["type"] = "sound", ["value"] = Sound("TFA_D2_MOVEMENT.1") },
		{ ["time"] = 3.4, ["type"] = "sound", ["value"] = Sound("TFA_D2HC_CHAMBERCLOSE.1") }
	}
}

SWEP.SequenceRateOverride= { 
	[ACT_VM_RELOAD] = 1.17,
	[ACT_VM_DRAW] = .73,
	[ACT_VM_HOLSTER] = .73,
	[ACT_VM_FIDGET] = .8
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
		{range = 15, damage = 0.95},
		{range = 25, damage = 0.8},
		{range = 36, damage = .7},
		{range = 55, damage = .45},
	}
}

SWEP.AllowIronSightsDoF = false

SWEP.Reticle = Material("models/eyasluna/eyaslunaReticle")

DEFINE_BASECLASS( SWEP.Base )

function SWEP:Think2(...)
	if CLIENT then
		local fadein = math.Clamp(self:GetIronSightsProgress(), 0, 1)
		if self:GetIronSightsProgress() > .75 then
			self.Reticle:SetVector("$color2", Vector(fadein, fadein, fadein))
			self.VElements["reticle"].color = Color(255, 255, 255, (255*self:GetIronSightsProgress()))
		else
			self.Reticle:SetVector("$color2", Vector(0,0,0))
			self.VElements["reticle"].color = Color(255, 255, 255, 0)
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