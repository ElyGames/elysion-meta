SWEP.PrintName = "Super Shotgun (Retro)"
SWEP.Author = "Fleshy Mammal"
SWEP.Contact = ""
SWEP.Purpose = "lol frick off"
SWEP.Instructions = ""

SWEP.Category = "TFA Misc 2"

SWEP.Secondary.BashLength = 70
SWEP.Secondary.BashDelay = 5/60
SWEP.Secondary.BashDamage = 30
SWEP.Secondary.BashEnd = 25/60

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

SWEP.HoldType = "ar2"
SWEP.ViewModelFOV = 70
SWEP.ViewModelFlip = false
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/fml/doom/c_supershotgun_retro.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"
SWEP.ShowWorldModel = false
SWEP.ShowViewModel = true
SWEP.ViewModelBoneMods = {
	["Weapon_Muzzle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-90, 0, 0) },	
	["A_Optic"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 180, 0) },
}

SWEP.WElements = {
	["E"] = { type = "Model", model = "models/weapons/fml/doom/c_supershotgun.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 0, -5), angle = Angle(-10, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[4] = 1} }
}

SWEP.AllowSprintAttack = true

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

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.IronSightsPos_EOTech = Vector(-2.391, -7.5, -0.613)
SWEP.IronSightsAng_EOTech = Vector(0, 0, 0)

SWEP.IronSightsPos_Kobra = Vector(-2.391, -7.5, -0.613)
SWEP.IronSightsAng_Kobra = Vector(0, 0, 0)

SWEP.IronSightsPos_RDS = Vector(-2.391, -7.5, -0.613)
SWEP.IronSightsAng_RDS = Vector(0, 0, 0)

SWEP.IronSightsPos_2XRDS = Vector(-2.391, -3, -0.613)
SWEP.IronSightsAng_2XRDS = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_2XRDS = 50

SWEP.IronSightsPos_C79 = Vector(-2.389, -3, -1.043)
SWEP.IronSightsAng_C79 = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_C79 = 50

SWEP.IronSightsPos_PO4X = Vector(-3.416, 0, -0.225)
SWEP.IronSightsAng_PO4X = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_PO4X = 50

SWEP.IronSightsPos_MX4 = Vector(-3.616, -2, -0.058)
SWEP.IronSightsAng_MX4 = Vector(0, 0, 0)
SWEP.Secondary.IronFOV_MX4 = 40

SWEP.RTOpaque	= true

SWEP.SequenceRateOverride = {
	[ACT_VM_RELOAD] = 1,	
	[ACT_VM_RELOAD_EMPTY] = 1,		
}

SWEP.StatusLengthOverride = {
	[ACT_VM_RELOAD] = 70/60,
	[ACT_VM_RELOAD_EMPTY] = 116/60,	
}

SWEP.VMPos = Vector(0, 2, 0)
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

--Firing Cone Related
SWEP.Primary.Spread = .065  --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .065  -- Ironsight accuracy, should be the same for shotguns
--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
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

SWEP.Primary.PenetrationMultiplier = 5 --Change the amount of something this gun can penetrate through

SWEP.Secondary.IronFOV = 80

--[[INSPECTION]]--
SWEP.InspectPos = Vector(7.769, -1.509, -0.394)
SWEP.InspectAng = Vector(13.678, 36.644, 15.503)

--[[SPRINTING]]--
SWEP.RunSightsPos = Vector(1.559, 1, -1.13)
SWEP.RunSightsAng = Vector(-24.535, 23.375, -25.553)


SWEP.StatCache_Blacklist = {
    ["Primary.NumShots"] = true,
    ["Primary.Damage"] = true,
	["Primary.KickUp"] = true,
	["Primary.KickHorizontal"] = true,
	["Primary.KickDown"] = true,
	["Primary.Spread"] = true,
    ["Primary.AmmoConsumption"] = true,
    ["Primary.Sound"] = true
}

DEFINE_BASECLASS( SWEP.Base )

function SWEP:SecondaryAttack()

    self.Primary.AmmoConsumption = 2
	self.Primary.NumShots = 40
	self.Primary.Damage = 17
	self.Primary.KickUp = 6
	self.Primary.KickHorizontal = 3
	self.Primary.StaticRecoilFactor = 1
	self.Primary.Spread = .095
	self.Primary.IronAccuracy = .098
    self.Primary.Sound = Sound("Weapon_FML_Doom_SS.Pew2")
	BaseClass.PrimaryAttack(self)

end

function SWEP:PrimaryAttack()

    self.Primary.AmmoConsumption = 1
	self.Primary.NumShots = 20
	self.Primary.Damage = 17
	self.Primary.KickUp = 4
	self.Primary.KickHorizontal = 2
	self.Primary.StaticRecoilFactor = 1
	self.Primary.Spread = .065 
	self.Primary.IronAccuracy = .065 
    self.Primary.Sound = Sound("Weapon_FML_Doom_SS.Pew")
	BaseClass.PrimaryAttack(self)
	
end

SWEP.Primary.Ammo = "buckshot"
SWEP.Primary.DefaultClip = 21 + 20 * 4
SWEP.Primary.Automatic = false
SWEP.Primary.Recoil = 1
SWEP.Primary.RPM = 650
SWEP.Primary.Force = 1
SWEP.Primary.ClipSize = 2