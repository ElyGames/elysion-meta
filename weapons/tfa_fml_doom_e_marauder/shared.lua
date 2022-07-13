SWEP.PrintName = "Marauder"
SWEP.Author = "Fleshy Mammal"
SWEP.Contact = ""
SWEP.Purpose = "lol frick off"
SWEP.Instructions = ""

SWEP.Category = "TFA Misc 2"

SWEP.Secondary.BashLength = 100
SWEP.Secondary.BashDelay = 3
SWEP.Secondary.BashDamage = 250
SWEP.Secondary.BashEnd = 2
SWEP.Secondary.BashSound = Sound("Weapon_DOOM_E_Shotgun.Slash")

--[[VIEWMODEL BLOWBACK]]--
SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-7,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = true

SWEP.Spawnable= true
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false
SWEP.CSMuzzleFlashes = true

SWEP.MuzzleAttachment = "1"
SWEP.ShellAttachment = "2" 		-- Should be "2" for CSS models or "shell" for hl2 models

SWEP.HoldType = "duel"
SWEP.ViewModelFOV = 70
SWEP.ViewModelFlip = false
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/fml/doom_e/c_marauder.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"
SWEP.ShowWorldModel = false
SWEP.ShowViewModel = true
SWEP.ViewModelBoneMods = {
	["Weapon_Muzzle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-90, 0, 0) },	
	["A_Optic"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 180, 0) },
}

SWEP.PumpAction = {
	["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
	["value"] = ACT_VM_PULLBACK, --Number for act, String/Number for sequence
	["value_is"] = ACT_VM_PULLBACK
}

SWEP.WElements = {
	["Axe+"] = { type = "Model", model = "models/weapons/fml/doom_e/c_marauder.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-5.941, 5.677, 4.421), angle = Angle(10, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1} },
	["Axe"] = { type = "Model", model = "models/weapons/fml/doom_e/c_marauder.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-20.844, 11.083, -3.552), angle = Angle(-10, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[0] = 1} }
}

SWEP.FlashlightAttachment = 1

SWEP.VElements = {	
	["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_suppressor_12ga.mdl", bone = "Weapon_Thing", rel = "", pos = Vector(2.664, -4.877, -8.164), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },	
	["scope_2xrds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimp2x.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_c79"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_elcan.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_po4x"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_po4x24.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_mx4"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_m40.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	
	["sight_kobra"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_kobra_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_kobra_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_kobra") or nil,
	["sight_eotech"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_eotech.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_eotech_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_eotech") or nil,
	["sight_rds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimpoint.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_rds_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_rds") or nil,
}

SWEP.data 				= {}			
SWEP.data.ironsights			= 0

SWEP.RTOpaque	= true

SWEP.StatusLengthOverride = {
	["reload"] = 20/60,
}

SWEP.VMPos = Vector(0, 0, 0)
SWEP.VMAng = Vector(0,0,0)
SWEP.VMPos_Additive = false --Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse

SWEP.LaserSightModAttachment = 1

SWEP.Type = "Shotgun"

SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = true

SWEP.Slot = 2
SWEP.SlotPos = 1
 
SWEP.UseHands = true

SWEP.FiresUnderwater = true

SWEP.DrawCrosshair = true

SWEP.DrawAmmo = true

SWEP.ReloadSound = ""

SWEP.Base = "tfa_bash_base"

SWEP.Primary.IronAccuracy_SG = .075

SWEP.DisableChambering = true

--Recoil Related
SWEP.Primary.KickUp = 0.5
SWEP.Primary.KickHorizontal = 0.02
SWEP.Primary.StaticRecoilFactor = 0.8
--Firing Cone Related
SWEP.Primary.Spread = .05  --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .05  -- Ironsight accuracy, should be the same for shotgunsess you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 5 --How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = 1 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 5.25 --How much the spread recovers, per second. Example val: 3
--Range Related
SWEP.Primary.Range = (980 * 16) -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 0.8 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
--Misc
SWEP.CrouchAccuracyMultiplier = 0.5 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
--Movespeed
SWEP.MoveSpeed = 0.8 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = 0.6 --Multiply the player's movespeed by this when sighting.

SWEP.IronSightTime = 0.35

--SWEP.Primary.ClipSize_20 = 20 

SWEP.Primary.Sound = Sound("Weapon_DOOM_E_Shotgun.Pew")
SWEP.Primary.Damage = 65
SWEP.Primary.TakeAmmo = 2
SWEP.Primary.Ammo = "buckshot"
SWEP.Primary.NumShots = 30
SWEP.Primary.ClipSize = 2
SWEP.Primary.DefaultClip = 65	
SWEP.Primary.Automatic = false
SWEP.Primary.Recoil = 1
SWEP.Primary.RPM = 500
SWEP.Primary.Force = 1

SWEP.Primary.PenetrationMultiplier = 5 --Change the amount of something this gun can penetrate through

SWEP.Secondary.IronFOV = 80

--[[INSPECTION]]--
SWEP.InspectPos = Vector(-0.201, -1.94, -4.2)
SWEP.InspectAng = Vector(12.442, 0, 0)

--[[SPRINTING]]--
SWEP.RunSightsPos = Vector(1.559, 1, -1.13)
SWEP.RunSightsAng = Vector(-24.535, 23.375, -25.553)

function SWEP:SecondaryAttack()
	if CurTime() >  self:GetNextPrimaryFire() and TFA.Enum.ReadyStatus[ self:GetStatus() ] and not self:GetSprinting() and self:Ammo2() > 0 then
		self:TakeSecondaryAmmo( 1 )
		self:SendViewModelAnim( ACT_VM_SECONDARYATTACK )		
		if SERVER then
			local ent = ents.Create( self.Secondary.Ent )
			ent:SetOwner( self.Owner )
			ent:SetPos( self.Owner:GetShootPos() )
			ent:SetAngles( self.Owner:EyeAngles() )
			ent:SetModel( self:GetStat("Secondary.Model") )
			ent:Spawn()
			ent:Activate()
			ent:GetPhysicsObject():SetVelocity( self.Owner:GetAimVector() * self.Secondary.Velocity )
			//SetVel( ent, self.Owner:GetAimVector() * self:GetStat("Secondary.Velocity") )
		end
		self:SetNextPrimaryFire( CurTime()  + self:GetStat("Secondary.Delay") )
		if IsFirstTimePredicted() then
			self:EmitSound( self:GetStat("Secondary.Sound") )		
		end
	end
end

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = 15
SWEP.Secondary.Ammo = "smg1_grenade"
SWEP.Secondary.Ent = "tfa_doom_e_axe"

SWEP.Secondary.Model = "models/ludex/doometernal/demons/marauder_axe.mdl" --Projectile Model
SWEP.Secondary.Damage = 800 --Grenade Damage
SWEP.Secondary.Velocity = 10000 --Grenade Velocity
SWEP.Secondary.Sound = Sound("Weapon_DOOM_E_Shotgun.Throw")
SWEP.Secondary.Delay = 30/60 --Delay in seconds

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	},
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint_end", --Number for act, String/Number for sequence
		["transition"] = true
	}	
}