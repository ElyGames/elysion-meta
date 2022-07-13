SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= ""
SWEP.Author							= "Delta"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "Matador 64"
SWEP.Type							= "Be the bull."
SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 60
SWEP.Slot							= 2
SWEP.SlotPos						= 100

SWEP.Rarity = "Legendary"
SWEP.FiresUnderwater 				= true

SWEP.IronInSound 					= nil
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



SWEP.Primary.ClipSize				= 5
SWEP.Primary.DefaultClip			= 5*10
SWEP.Primary.RPM					= 65
SWEP.Primary.Ammo					= "Buckshot"
SWEP.Primary.AmmoConsumption 		= 1
//SWEP.Primary.Range 					= -1
//SWEP.Primary.RangeFalloff 			= .5
SWEP.Primary.NumShots				= 25
SWEP.Primary.Automatic				= false
SWEP.Primary.RPM_Semi				= 65
SWEP.Primary.Delay				    = 0
SWEP.Primary.Sound 					= Sound ("TFA_D2SHOTGUN_FIRE.1")
SWEP.Primary.PenetrationMultiplier 	= .9
SWEP.Primary.Damage					= 80
SWEP.Primary.HullSize 				= 1
SWEP.DamageType 					= DMG_BULLET

SWEP.Primary.RangeFalloffLUT = {
	bezier = true, -- Whenever to use Bezier or not to interpolate points?
	-- you probably always want it to be set to true
	range_func = "quintic", -- function to spline range
	-- "linear" for linear splining.
	-- Possible values are "quintic", "cubic", "cosine", "sinusine", "linear" or your own function
	units = "meters", -- possible values are "inches", "inch", "hammer", "hu" (are all equal)
	-- everything else is considered to be meters
	lut = { -- providing zero point is not required
		-- without zero point it is considered to be as {range = 0, damage = 1}
		{range = 5, damage = 1},
		{range = 10, damage = 0.60},
		{range = 12, damage = 0.40},
		{range = 14, damage = 0.30},
		{range = 16, damage = 0.20},
		{range = 17, damage = 0.10},
		{range = 19, damage = 0.05},
		{range = 21, damage = .02},
		{range = 23, damage = 0},
	}
}

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

SWEP.ViewModel						= "models/weapons/Matador64/c_Matador64.mdl"
SWEP.WorldModel						= nil
SWEP.ViewModelFOV					= 58
SWEP.MaterialTable 					= nil
SWEP.UseHands 						= true
SWEP.HoldType 						= "shotgun"

SWEP.ShowWorldModel = false

SWEP.BlowbackEnabled 				= true
SWEP.BlowbackVector 				= Vector(0, -4, 0)
SWEP.BlowbackCurrentRoot			= 0
SWEP.BlowbackCurrent 				= 0
SWEP.BlowbackBoneMods 				= nil
SWEP.Blowback_Only_Iron 			= true
SWEP.Blowback_PistolMode 			= false
SWEP.Blowback_Shell_Enabled 		= true
SWEP.Blowback_Shell_Effect 			= "None"
SWEP.BlowbackAllowAnimation = true -- Allow playing shoot animation with blowback?

SWEP.Tracer							= 0
SWEP.TracerName 					= nil
SWEP.TracerCount 					= 1
SWEP.TracerLua 						= false
SWEP.TracerDelay					= 0
SWEP.ImpactEffect 					= "impact"

SWEP.IronSightTime 					= 0.35
SWEP.Primary.KickUp					= 1.6
SWEP.Primary.KickDown				= 1.3
SWEP.Primary.KickHorizontal			= 0.08
SWEP.Primary.StaticRecoilFactor 	= 0.6
SWEP.Primary.Spread					= 0.1
SWEP.Primary.IronAccuracy 			= 0.08
SWEP.Primary.SpreadMultiplierMax 	= 1.5
SWEP.Primary.SpreadIncrement 		= 0.35
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= 1
SWEP.IronSightsMoveSpeed 			= 0.75

SWEP.IronSightsPos = Vector(-5.34, -6, 1.2)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(5.226, -6, 0)
SWEP.RunSightsAng = Vector(-18, 36, -13.5)
SWEP.InspectPos = Vector(8, -4.8, -3)
SWEP.InspectAng = Vector(11.199, 38, 0)	

SWEP.VMPos = Vector(-1, -5.2, .5) -- The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(1, 0, -.75) -- The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false -- Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse

SWEP.CrouchPos = Vector(-1, -4.2, .2)
SWEP.CrouchAng = Vector(.5, .5, -.5)

SWEP.ShellEjectAttachment			= "shell" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.MuzzleAttachment				= "Muzzle"
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0.65 --The delay to actually eject things	 

SWEP.Shotgun = true
SWEP.ForceEmptyFireOff = false
SWEP.ShellTime = 0.64 -- For shotguns, how long it takes to insert a shell.

SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH -- TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.5 -- Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.1 -- Start an idle this far early into the end of another animation


SWEP.Attachments = {
	[3] = { offset = { 0, 0 }, atts = { "d2mp_backup_mag", "d2mp_sprint_grip", "d2mp_freehand_grip", "d2mp_icarus_grip", }, order = 3 },
	[4] = { offset = { 0, 0 }, atts = { "d2mp_light_rounds", "d2mp_heavy_rounds", "d2mp_fire_rounds", "d2mp_explosive_rounds", "d2mp_spinning_up"}, order = 4 },
	[5] = { offset = { 0, 0 }, atts = { "d2mp_quick_access_sling", "d2mp_counterbalance", "d2mp_zen_moment",  "d2mp_triple_tap" }, order = 5 },
	[6] = { offset = { 0, 0 }, atts = { "d2mp_dragonfly_spec", "d2mp_subsistence", "d2mp_reconstruction", "d2mp_openingshot"}, order = 6 },
}

SWEP.ViewModelBoneMods = {

	["ValveBiped.Bip01_R_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(15, 0, 20) },
	["ValveBiped.Bip01_R_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-10, 0, 0) },
}

SWEP.VElements = {
	//["reticle"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "MuzzleBone", rel = "", pos = Vector(0, 1, -2.45), angle = Angle(90, 0, 90), size = Vector(0.008, 0.008, 0), color = Color(255, 200, 200, 255), surpresslightning = false, material = "reticle/destiny2_reddot", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["world"] = { type = "Model", model = SWEP.ViewModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-10, 6, -4), angle = Angle(-12.5, 1, 180), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = { [1] = 0 } }
}

SWEP.ViewModelPunchPitchMultiplier = .4 -- Default value is 0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights = nil -- Default value is 0.09

SWEP.ViewModelPunch_MaxVertialOffset = 3 -- Default value is 3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights = 1 -- Default value is 1.95
SWEP.ViewModelPunch_VertialMultiplier = .65 -- Default value is 1
SWEP.ViewModelPunch_VertialMultiplier_IronSights = nil -- Default value is 0.25

SWEP.ViewModelPunchYawMultiplier = .55 -- Default value is 0.6
SWEP.ViewModelPunchYawMultiplier_IronSights = nil -- Default value is 0.25

SWEP.EventTable = {
	[ACT_VM_RELOAD] = {
		{["time"] = 0, type = "sound", value = Sound("TFA_D2SHOTGUN_RELOADIN.1")},
	},
	[ACT_SHOTGUN_RELOAD_START] = {
		//{ ["time"] = 0, ["type"] = "lua", ["value"] = function(wep, vm) wep:EventShell() end, ["client"] = true, ["server"] = true },
		{["time"] = 0, type = "sound", value = Sound("TFA_D2SHOTGUN_RELOADSTART.1")}
	},
	[ACT_SHOTGUN_RELOAD_FINISH] = {
		//{ ["time"] = 0.15, ["type"] = "lua", ["value"] = function(wep, vm) wep:EventShell() end, ["client"] = true, ["server"] = true },
		{ ["time"] = .2, type = "sound", value = Sound("TFA_D2SHOTGUN_PUMP.1")}
	},
	[ACT_VM_PRIMARYATTACK] = {
		//{ ["time"] = 0.15, ["type"] = "lua", ["value"] = function(wep, vm) wep:EventShell() end, ["client"] = true, ["server"] = true },
		{ ["time"] = .33, type = "sound", value = Sound("TFA_D2SHOTGUN_PUMP.1")}
	},
	[ACT_VM_PRIMARYATTACK_1] = {
		//{ ["time"] = 0.15, ["type"] = "lua", ["value"] = function(wep, vm) wep:EventShell() end, ["client"] = true, ["server"] = true },
		{ ["time"] = .25, type = "sound", value = Sound("TFA_D2SHOTGUN_PUMP.1")}
	},
	[ACT_VM_DRAW] = {															
		//{ ["time"] = 0, ["type"] = "sound", ["value"] = Sound("TFA_SOJTALE_DRAW.1") }
	}
}

SWEP.SequenceRateOverride= {
	[ACT_SHOTGUN_RELOAD_FINISH] = 1, 
	[ACT_SHOTGUN_RELOAD_START] = 1,
	[ACT_VM_PRIMARYATTACK] = 1.1,
	[ACT_VM_PRIMARYATTACK_1] = 1,
	[ACT_VM_DRAW] = .8,
	[ACT_VM_HOLSTER] = .8,
}


DEFINE_BASECLASS( SWEP.Base )


function SWEP:Think2(...)
	if CLIENT then
		if self:GetIronSights() then
			//self.VElements["reticle"].color = Color(255, 255, 255, (255*self:GetIronSightsProgress()))
		else
			//self.VElements["reticle"].color = Color(255, 200, 200, 0)
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
