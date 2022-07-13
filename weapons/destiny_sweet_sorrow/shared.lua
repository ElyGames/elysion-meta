SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= ""
SWEP.Author							= "Delta"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "Sweet Sorrow"
SWEP.Type							= "A scratched-out inscription on the barrel reads, 'A birthday is just a number. How about we pick this one?'"
SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 60
SWEP.Slot							= 2
SWEP.SlotPos						= 100
SWEP.UseHudIcon = true
SWEP.HudIcon = "destiny_autorifle"

SWEP.Rarity = "Legendary"
SWEP.DisableLUT = true

SWEP.FiresUnderwater 				= true

SWEP.IronInSound 					= nil
SWEP.IronOutSound 					= nil
SWEP.CanBeSilenced					= false
SWEP.DisableChambering 				= true
SWEP.SelectiveFire = true -- Allow selecting your firemode?


SWEP.Primary.ClipSize				= 52
SWEP.Primary.DefaultClip			= 52*10
SWEP.Primary.RPM					= 720
SWEP.Primary.Ammo					= "ar2"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.Range 					= 40000
SWEP.Primary.RangeFalloff 			= -1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= true
SWEP.Primary.Delay				    = 0
SWEP.Primary.Sound 					= Sound ("TFA_SWEETSORROW_FIRE.1")
SWEP.Primary.ReloadSound 			= Sound ("TFA_SWEETSORROW_RELOAD.1")
SWEP.Primary.PenetrationMultiplier 	= 1
SWEP.Primary.Damage					= 27
SWEP.Primary.HullSize 				= 1
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
SWEP.WalkAccuracyMultiplier			= 1.5
SWEP.NearWallTime 					= 0.5
SWEP.SprintFOVOffset 				= 2

SWEP.ViewModel						= "models/weapons/sweetsorrow/c_sweet_sorrow.mdl"
SWEP.WorldModel						= nil
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
SWEP.Blowback_Shell_Enabled 		= false
SWEP.Blowback_Shell_Effect 			= "None"

SWEP.Tracer							= 0
SWEP.TracerName 					= nil
SWEP.TracerCount 					= 1
SWEP.TracerLua 						= false
SWEP.TracerDelay					= 0
SWEP.ImpactEffect 					= "impact"

SWEP.IronSightTime 					= 0.4
SWEP.Primary.KickUp					= 0.15
SWEP.Primary.KickDown				= 0.15
SWEP.Primary.KickHorizontal			= 0.1
SWEP.Primary.StaticRecoilFactor 	= 0.4
SWEP.Primary.Spread					= 0.03
SWEP.Primary.IronAccuracy 			= 0.006
SWEP.Primary.SpreadMultiplierMax 	= 1.5
SWEP.Primary.SpreadIncrement 		= 0.35
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= 1
SWEP.IronSightsMoveSpeed 			= 0.75

SWEP.IronSightsPos = Vector(-4.968, -3.5, .955)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(5.226, -6, 0)
SWEP.RunSightsAng = Vector(-18, 36, -13.5)
SWEP.InspectPos = Vector(5.5, -8, -.5) //Vector(8, -4.8, -3)
SWEP.InspectAng = Vector(18.291, 30.954, 17.587) //Vector(11.199, 38, 0)

SWEP.VMPos = Vector(-0.5,-3,0) -- The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0.5,1,-0.5) -- The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false -- Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse

SWEP.CrouchPos = SWEP.VMPos
SWEP.CrouchAng = SWEP.VMAng


SWEP.MuzzleAttachment           = "muzzle"       -- Should be "1" for CSS models or "muzzle" for hl2 models


SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(-0.201, 0.2, 0), angle = Angle(0, 0, 0) }
}

SWEP.Attachments = {
	[3] = { offset = { 0, 0 }, atts = { "d2mp_backup_mag", "d2mp_sprint_grip", "d2mp_freehand_grip", "d2mp_icarus_grip", }, order = 3 },
	[4] = { offset = { 0, 0 }, atts = { "d2mp_light_rounds", "d2mp_heavy_rounds", "d2mp_fire_rounds", "d2mp_explosive_rounds", "d2mp_spinning_up"}, order = 4 },
	[5] = { offset = { 0, 0 }, atts = { "d2mp_quick_access_sling", "d2mp_counterbalance", "d2mp_zen_moment",  "d2mp_triple_tap" }, order = 5 },
	[6] = { offset = { 0, 0 }, atts = { "d2mp_dragonfly_spec", "d2mp_subsistence", "d2mp_reconstruction", "d2mp_openingshot"}, order = 6 },
}


SWEP.VElements = {
	["reticle"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "Reticle", rel = "", pos = Vector(-1.75,-10,0), angle = Angle(90, 0, 90), size = Vector(.005, 0.005, 0), color = Color(255, 200, 200, 255), surpresslightning = false, material = "reticle/destiny2_reddot", skin = 0, bodygroup = {}, active = true },
}

SWEP.WElements = {
	["world"] = { type = "Model", model = SWEP.ViewModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-9.5, 5.7, -3.8), angle = Angle(-12.5, 1, 180), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = { [1] = 0 } }
}

SWEP.ThirdPersonReloadDisable = false

SWEP.SequenceRateOverride= { 
	[ACT_VM_RELOAD] = .88,
	[ACT_VM_HOLSTER] = 1.3,
	[ACT_VM_DRAW] = 1.3
}


SWEP.ViewModelPunchPitchMultiplier = .4 -- Default value is 0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights = nil -- Default value is 0.09

SWEP.ViewModelPunch_MaxVertialOffset = 3 -- Default value is 3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights = 1 -- Default value is 1.95
SWEP.ViewModelPunch_VertialMultiplier = .65 -- Default value is 1
SWEP.ViewModelPunch_VertialMultiplier_IronSights = nil -- Default value is 0.25

SWEP.ViewModelPunchYawMultiplier = .55 -- Default value is 0.6
SWEP.ViewModelPunchYawMultiplier_IronSights = nil -- Default value is 0.25

DEFINE_BASECLASS( SWEP.Base )

function SWEP:Think(...)
	if CLIENT then
		if self:GetIronSights() then
			self.VElements["reticle"].color = Color(255, 255, 255, (255*self:GetIronSightsProgress()))
		else
			self.VElements["reticle"].color = Color(255, 255, 255, 0)
		end
	end
	return BaseClass.Think(self, ...)
end

function SWEP:PrimaryAttack(...)
	if self:CanPrimaryAttack(true) and self:GetOwner():IsPlayer() then
		ParticleEffectAttach("d2_muzzleflash_arc", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
	end
	return BaseClass.PrimaryAttack(self, ...)
end