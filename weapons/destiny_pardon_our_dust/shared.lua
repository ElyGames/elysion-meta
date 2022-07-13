SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= ""
SWEP.Author							= "Delta"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "Pardon Our Dust"
SWEP.Type							= "When the dead speak, you should listen."
SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 60
SWEP.Slot							= 4
SWEP.SlotPos						= 100

SWEP.Rarity = "Legendary"
SWEP.DisableLUT = true

SWEP.FiresUnderwater 				= true

SWEP.IronInSound 					= Sound ("TFA_IGNITECODE_IRONIN.1")
SWEP.IronOutSound 					= Sound ("TFA_IGNITECODE_IRONOUT.1")
SWEP.CanBeSilenced					= false
SWEP.DisableChambering 				= true
SWEP.SelectiveFire = false -- Allow selecting your firemode?


SWEP.Primary.ClipSize				= 1
SWEP.Primary.DefaultClip			= 25
SWEP.Primary.RPM					= 90
SWEP.Primary.Ammo					= "RPG_Round"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= false
SWEP.Primary.Delay				    = 0
SWEP.Primary.Sound 					= Sound ("TFA_PARDONDUST_FIRE.1")
SWEP.Primary.ReloadSound 			= Sound ("TFA_PARDONDUST_RELOAD.1")
SWEP.Primary.PenetrationMultiplier 	= 1
SWEP.Primary.Damage					= 150
SWEP.Primary.HullSize 				= 3
SWEP.DamageType 					= DMG_BLAST

-- PROJECTILES
SWEP.ProjectileEntity = "destiny_launcher_nade" --Entity to shoot
SWEP.ProjectileVelocity = 5000 --Entity to shoot's velocity
SWEP.BlastRadius = 275 --Blast radius
SWEP.ProjectileDamage = 110
SWEP.ProjectileFalloff = .15


SWEP.DoMuzzleFlash 					= true
SWEP.MuzzleFlashEffect 				= "destiny_gl_muzzleflash" //tfa_mmod_muzzleflash_rpg

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

SWEP.ViewModel						= "models/weapons/pardondust/c_pardon_our_dust.mdl"
--SWEP.WorldModel						= "models/weapons/c_thorn.mdl"
SWEP.ViewModelFOV					= 58
SWEP.ViewModelFlip					= false
SWEP.MaterialTable 					= nil
SWEP.UseHands 						= true
SWEP.HoldType 						= "smg"
SWEP.ReloadHoldTypeOverride 		= "smg"

SWEP.ShowWorldModel = false

SWEP.BlowbackEnabled 				= true
SWEP.BlowbackVector 				= Vector(0, -4, 0)
SWEP.BlowbackCurrentRoot			= 0
SWEP.BlowbackCurrent 				= 1
SWEP.BlowbackBoneMods 				= nil
SWEP.Blowback_Only_Iron 			= true
SWEP.Blowback_PistolMode 			= false
SWEP.Blowback_Shell_Enabled 		= false
SWEP.Blowback_Shell_Effect 			= "None"
SWEP.BlowbackAllowAnimation = false -- Allow playing shoot animation with blowback?

SWEP.Tracer							= 0
SWEP.TracerName 					= nil
SWEP.TracerCount 					= 1
SWEP.TracerLua 						= false
SWEP.TracerDelay					= 0
SWEP.ImpactEffect 					= "impact"

SWEP.IronSightTime 					= 0.4
SWEP.Primary.KickUp					= 1.8
SWEP.Primary.KickDown				= 1.3
SWEP.Primary.KickHorizontal			= 0.2
SWEP.Primary.StaticRecoilFactor 	= 0.4
SWEP.Primary.Spread					= 0.03
SWEP.Primary.IronAccuracy 			= 0.001
SWEP.Primary.SpreadMultiplierMax 	= 1.5
SWEP.Primary.SpreadIncrement 		= 0.35
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= 1
SWEP.IronSightsMoveSpeed 			= 0.75

SWEP.IronSightsPos = Vector(-6.12, -8, .76)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.RunSightsPos = Vector(5.226, -6, 0)
SWEP.RunSightsAng = Vector(-18, 36, -13.5)
SWEP.InspectPos = Vector(5.5, -5, -.8) //Vector(8, -4.8, -3)
SWEP.InspectAng = Vector(18.291, 30.954, 17.587)

SWEP.VMPos = Vector(-1.75, -9, .3) -- The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(2.3, 2.6, -1) -- The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false -- Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse

SWEP.CrouchPos = Vector(-1.4, -7, .2)
SWEP.CrouchAng = Vector(2.3, 2.6, -1)

SWEP.MuzzleAttachment           = "muzzle"       -- Should be "1" for CSS models or "muzzle" for hl2 models     -- Should be "2" for CSS models or "shell" for hl2 models

SWEP.Attachments = {
	[3] = { offset = { 0, 0 }, atts = { "d2mp_backup_mag", "d2mp_sprint_grip", "d2mp_freehand_grip", "d2mp_icarus_grip", }, order = 3 },
	[5] = { offset = { 0, 0 }, atts = { "d2mp_quick_access_sling", "d2mp_counterbalance" }, order = 5 },
	[6] = { offset = { 0, 0 }, atts = { "d2mp_dragonfly_spec", "d2mp_subsistence"}, order = 6 },
}

SWEP.AttachmentTableOverride = { -- overrides WeaponTable for attachments
	["d2mp_backup_mag"] = { -- attachment id, root of WeaponTable override
		["Primary"] = {
			["ClipSize"] = function(wep,stat) return 2 end,
		}
	},
	["d2mp_heavy_rounds"] = { -- attachment id, root of WeaponTable override
		["Primary"] = {
			["ProjectileVelocity"] = function(wep,stat) return 2000 end,
			["ReloadSound"] = Sound("TFA_IGNITECODE_RELOADSLOW.1")
		},
		["SequenceRateOverride"] = {
			[ACT_VM_RELOAD] = .71
		}
	}
}


SWEP.ViewModelBoneMods = {
	//["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 15, 0) },
	//["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 2, 0) },
}

SWEP.VElements = {
	//["reticle"] = { type = "Model", model = "models/rtcircle.mdl", bone = "SlideBone", rel = "", pos = Vector(3.5, 6.19, 2.48), angle = Angle(0, -90, 180), size = Vector(0.349, 0.349, 0.349), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {} }
}


SWEP.WElements = {
	["world"] = { type = "Model", model = SWEP.ViewModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-12.5, 6.5, -4), angle = Angle(-13, 0, 180), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = { [1] = 0 } }
}

SWEP.ThirdPersonReloadDisable = false

SWEP.SequenceRateOverride = {
	[ACT_VM_HOLSTER] = 1.7,
	[ACT_VM_DRAW] = 1.3,
	[ACT_VM_PRIMARYATTACK] = .9,
	[ACT_VM_RELOAD] = .9   
}

SWEP.StatCache_Blacklist = {
	["ProjectileVelocity"] = true
}

--[[ SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- LOCOMOTION_ANI = mdl, LOCOMOTION_HYBRID = ani + lua, LOCOMOTION_LUA = lua only
SWEP.IronAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "ironin", -- Number for act, String/Number for sequence
		["transition"] = true
	}, -- Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "ironloop", -- Number for act, String/Number for sequence
	}, -- Looping Animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "ironout", -- Number for act, String/Number for sequence
		["transition"] = true
	}
	
}--]] 

//SWEP.IgniteCodeRet = Material("models/ignitioncode/ignitioncodereticle")

DEFINE_BASECLASS( SWEP.Base )


function SWEP:Think2(...)
	local tr =self:GetOwner():GetEyeTrace()
	if CLIENT then
		local fadein = math.Clamp(self:GetIronSightsProgress(), 0, 1)
		if self:GetIronSightsProgress() > .4 then
			//self.IgniteCodeRet:SetVector("$color2", Vector(fadein, fadein, fadein))
			//self.VElements["reticle"].color = Color(255, 255, 255, (255*self:GetIronSightsProgress()))
		else
			//self.IgniteCodeRet:SetVector("$color2", Vector(fadein, fadein, fadein))
			//self.VElements["reticle"].color = Color(255, 255, 255, 0)
		end
	end
	//self:GetOwner():PrintMessage(HUD_PRINTTALK, self:GetOwner():GetPos():Distance(self:GetOwner():GetEyeTrace().HitPos))
	return BaseClass.Think2(self, ...)
end

function SWEP:TriggerAttack(...)
	if self:CanPrimaryAttack(true) and self:GetOwner():IsPlayer() then
		if file.Exists( "particles/hl2mmod_muzzleflashes.pcf", "THIRDPARTY" ) or file.Exists( "particles/hl2mmod_muzzleflashes.pcf", "WORKSHOP" ) then
			ParticleEffectAttach("hl2mmod_muzzleflash_smg1_grenade", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))

		end
	end
	return BaseClass.TriggerAttack(self, ...)
end


function SWEP:PostSpawnProjectile(ent)
	--[[
	local ang = self:GetOwner():GetAimVector():Angle()
	local dir = ang:Forward()
	dir:Mul((self:GetStat("Primary.ProjectileVelocity")*5)

		//ent:SetVelocity(dir)
	]]
	local phys = ent:GetPhysicsObject()

	if IsValid(phys) then
		phys:EnableGravity(false)
	end
end