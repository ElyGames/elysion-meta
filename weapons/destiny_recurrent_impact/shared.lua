SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= ""
SWEP.Author							= "Delta"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "Recurrent Impact"
SWEP.Type							= "It's enough to drive someone out of their mind."
SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 62
SWEP.Slot							= 2
SWEP.SlotPos						= 100
SWEP.UseHudIcon = true
SWEP.HudIcon = "destiny_mg"
SWEP.AmmoType = "Heavy"

SWEP.DisableLUT = true

SWEP.Rarity = "Legendary"

SWEP.FiresUnderwater 				= true

SWEP.IronInSound 					= nil
SWEP.IronOutSound 					= nil
SWEP.CanBeSilenced					= false
SWEP.DisableChambering 				= true
SWEP.SelectiveFire = false -- Allow selecting your firemode?


SWEP.Primary.ClipSize				= 78
SWEP.Primary.DefaultClip			= SWEP.Primary.ClipSize*5
SWEP.Primary.RPM					= 900
SWEP.Primary.Ammo					= "ar2"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.Range 					= 40000
SWEP.Primary.RangeFalloff 			= -1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= true
SWEP.Primary.Delay				    = 0
SWEP.FireSoundAffectedByClipSize = false

SWEP.Primary.Sound 					= Sound ("TFA_RECURRENT_FIRE.1")
SWEP.Primary.ReloadSound 			= Sound ("TFA_RECURRENT_RELOAD.1")

SWEP.Primary.LoopSound = Sound ("TFA_RECURRENT_LOOP.1") -- Looped fire sound, unsilenced
SWEP.Primary.LoopSoundTail = Sound ("TFA_RECURRENT_TRAIL.1") -- Loop end/tail sound, unsilenced
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

SWEP.ViewModel						= "models/weapons/RecurrentImpact/c_Recurrent_Impact.mdl"
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

SWEP.IronSightsPos = Vector(-4.96, -10.5, -1.26)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(5.226, -6, 0)
SWEP.RunSightsAng = Vector(-18, 36, -13.5)
SWEP.InspectPos = Vector(6.23, -5.829, -1.206) //Vector(8, -4.8, -3)
SWEP.InspectAng = Vector(18.291, 30.954, 17.587) //Vector(11.199, 38, 0)	

SWEP.VMPos = Vector(-.22, -2.8, -.15) -- The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(1, .8, -.5) -- The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false -- Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse

SWEP.CrouchPos =  SWEP.VMPos
SWEP.CrouchAng = SWEP.VMAng

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
	//["Pelvis"] = { scale = Vector(1, 1, 1), pos = Vector(-.5, -0.25, 0), angle = Angle(0, 0, 0) }, 
	["Bullet1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }, 
	["Bullet2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -3) },
	["Bullet3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bullet4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bullet5"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bullet6"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bullet7"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bullet8"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bullet9"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
	//["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-9.223, 6.11, 0) }
	
}

SWEP.VElements = {
	["reticle"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "Barrel", rel = "", pos = Vector(0, -8, 4.09), angle = Angle(0, 0, 90), size = Vector(0.006, 0.006, 0), color = Color(255, 255, 255, 255), surpresslightning = false, material = "reticle/destiny2_reddot", skin = 0, bodygroup = {} }
	//["reticle"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "Pelvis", rel = "", pos = Vector(-.016, 10.909, -1.61), angle = Angle(0, 0, 90), size = Vector(0.006, 0.006, 0), color = Color(255, 255, 255, 255), surpresslightning = false, material = "reticle/destiny2_reddot", skin = 0, bodygroup = {} }
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
		{ ["time"] = 0, ["type"] = "sound", ["value"] = Sound("TFA_RECURRENT_DRAW.1") }
	}
}

SWEP.SequenceRateOverride= { 
	[ACT_VM_RELOAD] = .9,
	[ACT_VM_DRAW] = .75,
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


DEFINE_BASECLASS( SWEP.Base )

function SWEP:Think2(...)
	if self:IsAttached("d2mp_light_rounds") or self:IsAttached("d2mp_heavy_rounds") or self:IsAttached("d2mp_spinning_up") then
		self.Primary_TFA.LoopSound = nil
		self.Primary_TFA.LoopSoundTail = nil
	else
		self.Primary_TFA.LoopSound = Sound ("TFA_RECURRENT_LOOP.1")
		self.Primary_TFA.LoopSoundTail = Sound ("TFA_RECURRENT_TRAIL.1")
	end
	if CLIENT then
		local fadein = math.Clamp(self:GetIronSightsProgress(), 0, .3)
		if self:GetIronSights() then
			self.VElements["reticle"].color = Color(255, 255, 255, (255*self:GetIronSightsProgress()))
		else
			self.VElements["reticle"].color = Color(255, 255, 255, 0)
		end
	end
	if CLIENT then
		if self:GetStatus() != TFA.GetStatus("reloading") then
			if self:Clip1() > 9 then
				self.ViewModelBoneMods["Bullet1"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Bullet2"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Bullet3"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Bullet4"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Bullet5"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Bullet6"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Bullet7"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Bullet8"].scale = Vector(1, 1, 1)
				self.ViewModelBoneMods["Bullet9"].scale = Vector(1, 1, 1)
			end

			if self:Clip1() <= 8 then
				self.ViewModelBoneMods["Bullet9"].scale = Vector(0, 0, 0)
			end
			if self:Clip1() <= 7 then
				self.ViewModelBoneMods["Bullet8"].scale = Vector(0, 0, 0)
			end
			if self:Clip1() <= 6 then
				self.ViewModelBoneMods["Bullet7"].scale = Vector(0, 0, 0)
			end
			if self:Clip1() <= 5 then
				self.ViewModelBoneMods["Bullet6"].scale = Vector(0, 0, 0)
			end
			if self:Clip1() <= 4 then
				self.ViewModelBoneMods["Bullet5"].scale = Vector(0, 0, 0)		
			end
			if self:Clip1() <= 3 then
				self.ViewModelBoneMods["Bullet4"].scale = Vector(0, 0, 0)
			end
			if self:Clip1() <= 2 then
				self.ViewModelBoneMods["Bullet3"].scale = Vector(0, 0, 0)				
			end
			if self:Clip1() <= 1 then
				self.ViewModelBoneMods["Bullet2"].scale = Vector(0, 0, 0)				
			end
			if self:Clip1() <= 0 then
				self.ViewModelBoneMods["Bullet1"].scale = Vector(0, 0, 0)
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
		self.ViewModelBoneMods["Bullet1"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Bullet2"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Bullet3"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Bullet4"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Bullet5"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Bullet6"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Bullet7"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Bullet8"].scale = Vector(1, 1, 1)
		self.ViewModelBoneMods["Bullet9"].scale = Vector(1, 1, 1)
	end
end

function SWEP:PrimaryAttack(...)
	if self:CanPrimaryAttack(true) and self.Owner:IsPlayer() then
		ParticleEffectAttach("hl2mmod_muzzleflash_smg1", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
		ParticleEffectAttach("d2_muzzleflash_arc", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
	end
	return BaseClass.PrimaryAttack(self, ...)
end