SWEP.Base							= "destiny_bow_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= ""
SWEP.Author							= "Delta"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= true
SWEP.PrintName						= "Under Your Skin"
SWEP.Type							= "The splinter you just can't remove."
SWEP.DrawAmmo						= true
SWEP.Secondary.IronFOV				= 75
SWEP.Slot							= 3
SWEP.SlotPos						= 100
SWEP.UseHudIcon = true
SWEP.HudIcon = "destiny_bow"

SWEP.FiresUnderwater 				= true
SWEP.Primary.Spread = 0.03
SWEP.Primary.SpreadShake = 0.01 --when shaking
SWEP.Primary.Velocity = 900 --velocity in m/s
SWEP.Primary.Damage_Charge = {0.25, 1.25} --velocity/damage multiplier between min and max charge
SWEP.Primary.Shake = true --enable shaking
--options
SWEP.Secondary.Cancel = false --enable cancelling
--bow base shit
SWEP.ChargeRate = .684 --1 is fully charged
SWEP.ChargeThreshold = 0.1 --minimum charge percent to fire
SWEP.ShakeTime = 10 --minimum time to start shaking
SWEP.Secondary.IronSightsEnabled = true
--tfa ballistics integration
SWEP.UseBallistics = true
SWEP.BulletModel = "models/weapons/w_tfa_arrow.mdl"
SWEP.BulletTracer = "tfa_bullet_smoke_tracer"
SWEP.ImpactParticle = "Recluse_Flash"


SWEP.Primary.ClipSize				= 1
SWEP.Primary.DefaultClip			= 50
SWEP.Primary.Ammo					= "XBowBolt"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.Range 					= 40000
SWEP.Primary.RangeFalloff 			= -1
//SWEP.Primary.RPM_Semi				= 360
//SWEP.Primary.Delay				    = 0
SWEP.Primary.ChargedSound 			= Sound ("TFA_UYS_FIREFULL.1")
SWEP.Primary.UnchargedSound 		= Sound ("TFA_UYS_FIRE.1")
//SWEP.Primary.ReloadSound 			= Sound ("TFA_TRINITY_RELOAD.1")
SWEP.Primary.DrawSound 				= Sound ("TFA_UYS_BOWDRAW.1")
SWEP.Primary.PenetrationMultiplier 	= 2
SWEP.Primary.Damage					= 300
//SWEP.Primary.DamageType 			= DMG_BLAST
SWEP.Primary.Knockback = 0
//SWEP.Primary.Force = 20
SWEP.Primary.Numshots = 1
SWEP.DisableChambering = true
//SWEP.DoMuzzleFlash 					= true

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

SWEP.ViewModel						= "models/weapons/underyourskin/c_under_your_skin.mdl"
--SWEP.WorldModel						= "models/weapons/c_thorn.mdl"
SWEP.ViewModelFOV					= 58
SWEP.ViewModelFlip					= false
SWEP.MaterialTable 					= nil
SWEP.UseHands 						= true
SWEP.HoldType 						= "smg"
SWEP.ReloadHoldTypeOverride 		= "smg"

SWEP.ShowWorldModel = false

SWEP.BlowbackEnabled 				= false
SWEP.BlowbackVector 				= Vector(0, -2, 0)
SWEP.BlowbackCurrentRoot			= 0
SWEP.BlowbackCurrent 				= 1
SWEP.BlowbackBoneMods 				= nil
SWEP.Blowback_Only_Iron 			= true
SWEP.Blowback_PistolMode 			= false
SWEP.Blowback_Shell_Enabled 		= false
SWEP.Blowback_Shell_Effect 			= "None"

SWEP.ImpactEffect 					= "impact"
SWEP.MuzzleAttachment            = "muzzle"

SWEP.VMPos = Vector(0, -7, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = false -- Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse

SWEP.CrouchPos = SWEP.VMPos
SWEP.CrouchAng = SWEP.VMAng

SWEP.IronSightTime 					= 0.3
SWEP.Primary.KickUp					= 0.1
SWEP.Primary.KickDown				= 0.1
SWEP.Primary.KickHorizontal			= 0.1
SWEP.Primary.StaticRecoilFactor 	= 0.5
SWEP.Primary.IronAccuracy 			= 0.01
SWEP.Primary.SpreadMultiplierMax 	= 1.5
SWEP.Primary.SpreadIncrement 		= 0.35
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.MoveSpeed 						= .9
SWEP.IronSightsMoveSpeed 			= 0.75

SWEP.IronSightsPos = Vector(-4.58, -30, 5.07)
SWEP.IronSightsAng = Vector(0, -4.901, -77)

SWEP.RunSightsPos = Vector(4, -7, 0)
SWEP.RunSightsAng = Vector(-10, 10, 10)
SWEP.InspectPos = Vector(-2.412, -12.865, -9.447)
SWEP.InspectAng = Vector(30.25, 4.925, -12.664)

--animation
SWEP.BowAnimations = {
	-- ["shake"] = {
	-- 	["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
	-- 	["value"] = "tiredloop",
	-- 	["enabled"] = true --Manually force a sequence to be enabled
	-- },
	["idle_charged"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, 
		["value"] = "idle_charged", 
		["enabled"] = true 
	},
	["shoot"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "fire_1",
		["enabled"] = true --Manually force a sequence to be enabled
	},
	["cancel"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "cancelarrow",
		["enabled"] = true --Manually force a sequence to be enabled
	},
	["draw"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "drawarrow",
		["enabled"] = true --Manually force a sequence to be enabled
	}
}

SWEP.EventTable = {
	[ACT_VM_DRAW] = {															
		{ ["time"] = 0, ["type"] = "sound", ["value"] = Sound("TFA_UYS_DEPLOY.1") }
	}
}

SWEP.Attachments = {
	[3] = { offset = { 0, 0 }, atts = { "d2mp_sprint_grip", "d2mp_freehand_grip", "d2mp_icarus_grip", }, order = 3 },
	[4] = { offset = { 0, 0 }, atts = { "d2mp_fire_rounds", "d2mp_explosive_rounds"}, order = 4 },
	[5] = { offset = { 0, 0 }, atts = { "d2mp_quick_access_sling", "d2mp_counterbalance" }, order = 5 },
	[6] = { offset = { 0, 0 }, atts = { "d2mp_dragonfly_spec" }, order = 6 },
}

SWEP.ViewModelBoneMods = {
	//["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(8.704, 0.185, 0.185), angle = Angle(-1.111, -6, 1.11) }
}


SWEP.VElements = {
	["reticle"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "Pedestal", rel = "", pos = Vector(7.26,-10, 0.025), angle = Angle(0, 0, -90), size = Vector(.005, .005, 0), color = Color(255, 255, 255, 255), surpresslightning = false, material = "reticle/destiny2_reddot", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["world"] = { type = "Model", model = SWEP.ViewModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-19, 5.7, -3.8), angle = Angle(0, 0, 90), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = { [1] = 0 } }
}

DEFINE_BASECLASS( SWEP.Base )

function SWEP:Think2(...)
	if CLIENT then
		if self:GetIronSightsProgress() > 0.75 then
			self.VElements["reticle"].color = Color(255, 255, 255, self:GetIronSightsProgress()*255)
		else
			self.VElements["reticle"].color = Color(255, 255, 255, 0)
		end
	end
	return BaseClass.Think2(self, ...)
end