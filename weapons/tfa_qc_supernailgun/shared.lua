SWEP.Base = "tfa_gun_base"
SWEP.Category = "TFA Quake Champions"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Slot = 2
SWEP.Author   = "Matsilagi"
SWEP.PrintName = "Super Nailgun"
SWEP.Type = "High-Velocity Nail Launcher"
SWEP.CanJam = false

SWEP.ProjectileEntity = "tfa_proj_supernailgun" --Entity to shoot
SWEP.ProjectileEntity_Default = "tfa_proj_supernailgun" --Entity to shoot
SWEP.ProjectileEntity_Homing = "tfa_proj_supernailgun_homing" --Entity to shoot
--SWEP.ProjectileVelocity = 3500 --Entity to shoot's velocity
SWEP.ProjectileVelocity = 2000 --Entity to shoot's velocity, until i get confirmed, its 2000 ups for both the ent and the swep
SWEP.ProjectileModel = nil --Entity to shoot's model

SWEP.UseBallistics = false

SWEP.ViewModel			= "models/weapons/tfa_qc/c_supernailgun.mdl" --Viewmodel path
SWEP.ViewModelFOV = 64

SWEP.WorldModel			= "models/weapons/tfa_qc/w_supernailgun.mdl" --Viewmodel path
SWEP.HoldType = "ar2"

SWEP.Shotgun = false
SWEP.ShellTime = 0.75

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 150

SWEP.Primary.Sound = "TFA_QC_SUPERNAILGUN.1"
SWEP.Primary.Ammo = "smg1"
SWEP.Primary.Automatic = true
SWEP.Primary.RPM = 600
SWEP.Primary.RPM_Default = 600
SWEP.Primary.RPM_Homing = 300
SWEP.Primary.Damage = 80
SWEP.Primary.NumShots = 1
SWEP.Primary.Spread		= .005					--This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .003	-- Ironsight accuracy, should be the same for shotguns

SWEP.Primary.KickUp			= 0.05					-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 0.06					-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.07					-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.4 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

SWEP.Primary.SpreadMultiplierMax = 4.5 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 1.2 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 3.5 --How much the spread recovers, per second.

SWEP.MuzzleAttachment			= "muzzle" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
--SWEP.MuzzleAttachmentRaw = 1 --This will override whatever string you gave.  This is the raw attachment number.  This is overridden or created when a gun makes a muzzle event.
SWEP.ShellAttachment			= "shell" 		-- Should be "2" for CSS models or "shell" for hl2 models

SWEP.data = {}
SWEP.data.ironsights = 1 --Enable Ironsights
SWEP.Secondary.IronFOV = 60 --Ironsights FOV (90 = same)
SWEP.BoltAction = false --Un-sight after shooting?
SWEP.BoltTimerOffset = 0.0 --How long do we remain in ironsights after shooting?

SWEP.IronSightsPos = Vector(-1.81, 3.02, 0.201)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.RunSightsPos = Vector(3.73, -0.927, 1.148)
SWEP.RunSightsAng = Vector(-8.858, 7.176, 0)

SWEP.InspectPos = Vector(15.878, -7.639, 2.813)
SWEP.InspectAng = Vector(10.553, 45.729, 16.884)

SWEP.VMPos = Vector(0,0,0) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position. 
SWEP.VMAng = Vector(0,0,0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle. 

SWEP.BlowbackEnabled = false
SWEP.BlowbackVector = Vector(0,-2.5,0)
SWEP.Blowback_PistolMode = true
SWEP.BlowbackBoneMods = {}
SWEP.Blowback_Shell_Effect = "nil"

SWEP.ViewModelBoneMods = {
}

SWEP.WorldModelBoneMods = {
}

SWEP.CenteredPos = Vector(-6.281, 0, -5.24)
SWEP.CenteredAng = Vector(0, 0, 2.111)

SWEP.AllowSprintAttack = true
SWEP.MoveSpeed = 1
SWEP.IronSightsMoveSpeed  = SWEP.MoveSpeed * 0.8
SWEP.MuzzleFlashEffect = "tfa_muzzleflash_supernailgun"

SWEP.ForceDryFireOff = true --Disables dryfire.  Set to false to enable them.
SWEP.DisableIdleAnimations = false --Disables idle animations.  Set to false to enable them.
SWEP.ForceEmptyFireOff = true --Disables empty fire animations.  Set to false to enable them.

SWEP.IronInSound = Sound("TFA_QC_SUPERNAILGUN.AimIn") --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = Sound("TFA_QC_SUPERNAILGUN.AimOut") --Sound to play when ironsighting out?  nil for default

SWEP.Attachments = {
	[1] = { offset = { 0, 0 }, atts = { "qc_homingnails" }, order = 1 },
	[2] = { offset = { 0, 0 }, atts = { "qc_lavanails" }, order = 2 },
}

SWEP.WeaponLength 			= 0

 --Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.

DEFINE_BASECLASS(SWEP.Base)

function SWEP:Deploy(...)
	self.SetNW2Bool = self.SetNW2Bool or self.SetNWBool
	self.GetNW2Bool = self.GetNW2Bool or self.GetNWBool
	local b = self:GetNW2Bool("QCLavaNails")
	local b2 = self:GetNW2Bool("QCHomingNails")

	if b == nil then
		self:SetNW2Bool("QCLavaNails", false)
	end
	
	if b2 == nil then
		self:SetNW2Bool("QCHomingNails", false)
	end

	return BaseClass.Deploy(self, ...)
end

function SWEP:Think2(...)	
	self.SetNW2Bool = self.SetNW2Bool or self.SetNWBool
	self.GetNW2Bool = self.GetNW2Bool or self.GetNWBool
	local b = self:GetNW2Bool("QCLavaNails")
	local b2 = self:GetNW2Bool("QCHomingNails")
	
	if b2 != false then
		self.data.ironsights = 1
		self.data.ironsights_default = 1
		self:ClearStatCache()
	else
		self.data.ironsights = 0
		self.data.ironsights_default = 0
		self:ClearStatCache()
	end
	
	if b2 != false and self:GetIronSights() and self:Ammo1() >= 2 then
		self.Primary.Sound = "TFA_QC_SUPERNAILGUN.2"
		self.Primary.RPM = self.Primary.RPM_Homing
		if b != false then
			self.Primary.Projectile = "tfa_proj_supernailgun_homing_lava"
		else
			self.Primary.Projectile = "tfa_proj_supernailgun_homing"
		end
		self.Primary.AmmoConsumption = 2
		self.IronInSound = Sound("TFA_QC_SUPERNAILGUN.AimInUpgraded")
		self:ClearStatCache()
	else
		self.Primary.Sound = "TFA_QC_SUPERNAILGUN.1"
		self.Primary.RPM = self.Primary.RPM_Default
		if b != false then
			self.Primary.Projectile = "tfa_proj_supernailgun_lava"
		else
			self.Primary.Projectile = "tfa_proj_supernailgun"
		end
		self.Primary.AmmoConsumption = 1
		self.IronInSound = Sound("TFA_QC_SUPERNAILGUN.AimIn")
		self:ClearStatCache()
	end
	
	return BaseClass.Think2(self,...)
end

local TracerName
local cv_forcemult = GetConVar("sv_tfa_force_multiplier")
local cv_centervm = GetConVar("cl_tfa_viewmodel_centered") or CreateClientConVar("cl_tfa_viewmodel_centered", 0, true, false)

function SWEP:ShootBullet(damage, recoil, num_bullets, aimcone, disablericochet, bulletoverride)
	if not IsFirstTimePredicted() and not game.SinglePlayer() then return end
	num_bullets = num_bullets or 1
	aimcone = aimcone or 0
	
	local centerview = cv_centervm:GetBool()

	if self:GetStat("Primary.Projectile") then
		if SERVER then
			for _ = 1, num_bullets do
				local ent = ents.Create(self:GetStat("Primary.Projectile"))
				local ang = self:GetOwner():EyeAngles()
				local shootpos = self.Owner:GetShootPos()
				--local shootposNew = shootpos + ang:Right() * 3.5 - ang:Up() * 2	
				local issighting = self:GetIronSightsRaw()
				local shootposNew = shootpos + ang:Forward() * 3.5 + ang:Right() * 6.5 - ang:Up() * 3.8 --shootpos + ang:Right() * 6.5 - ang:Up() * 3.8
				local shootposCenter = shootpos + ang:Forward() * 10.5 + ang:Right() * 0.2 - ang:Up() * 10.8 --shootpos + ang:Right() * 0.2 - ang:Up() * 10.8
				local shootang = self.Owner:GetAimVector():Angle()
				
				local tr = util.TraceLine( {
					start = shootpos,
					endpos = shootpos + ang:Forward() * 16384,
					filter = self:GetOwner()
				})
				
				local shootdir = (tr.HitPos - shootposNew):Angle()
				
				ang:RotateAroundAxis(ang:Right(), -aimcone / 2 + math.Rand(0, aimcone))
				ang:RotateAroundAxis(ang:Up(), -aimcone / 2 + math.Rand(0, aimcone))
				
				local dir = shootdir:Forward()
				ent:SetPos(shootposNew)
				if centerview and not issighting then
					ent:SetPos(shootposCenter)
				end
				ent:SetOwner(self:GetOwner())
				ent:SetAngles(shootdir)
				ent.damage = self:GetStat("Primary.Damage")
				ent.mydamage = self:GetStat("Primary.Damage")

				if self:GetStat("Primary.ProjectileModel") then
					ent:SetModel(self:GetStat("Primary.ProjectileModel"))
				end

				ent:Spawn()
				ent:SetVelocity(dir * self:GetStat("Primary.ProjectileVelocity"))
				local phys = ent:GetPhysicsObject()

				if IsValid(phys) then
					phys:SetVelocity(dir * self:GetStat("Primary.ProjectileVelocity"))
				end

				if self.ProjectileModel then
					ent:SetModel(self:GetStat("Primary.ProjectileModel"))
				end

				ent:SetOwner(self:GetOwner())
			end
		end
		-- Source
		-- Dir of self.MainBullet
		-- Aim Cone X
		-- Aim Cone Y
		-- Show a tracer on every x bullets
		-- Amount of force to give to phys objects
	else
		if self.Tracer == 1 then
			TracerName = "Ar2Tracer"
		elseif self.Tracer == 2 then
			TracerName = "AirboatGunHeavyTracer"
		else
			TracerName = "Tracer"
		end

		self.MainBullet.PCFTracer = nil

		if self:GetStat("TracerName") and self:GetStat("TracerName") ~= "" then
			if self:GetStat("TracerPCF") then
				TracerName = nil
				self.MainBullet.PCFTracer = self:GetStat("TracerName")
				self.MainBullet.Tracer = 0
			else
				TracerName = self:GetStat("TracerName")
			end
		end

		local ow = self:GetOwner()
		self.MainBullet.Attacker = ow
		self.MainBullet.Inflictor = self
		self.MainBullet.Num = num_bullets
		self.MainBullet.Src = ow:GetShootPos()
		self.MainBullet.Dir = (ow:EyeAngles() + ow:GetViewPunchAngles()):Forward()
		self.MainBullet.HullSize = self:GetStat("Primary.HullSize") or 0
		self.MainBullet.Spread.x = aimcone
		self.MainBullet.Spread.y = aimcone

		if self.TracerPCF then
			self.MainBullet.Tracer = 0
		else
			self.MainBullet.Tracer = self:GetStat("TracerCount") or 3
		end

		self.MainBullet.TracerName = TracerName
		self.MainBullet.PenetrationCount = 0
		self.MainBullet.AmmoType = self:GetPrimaryAmmoType()
		self.MainBullet.Force = damage / 10 * self:GetAmmoForceMultiplier()
		self.MainBullet.Damage = damage
		self.MainBullet.HasAppliedRange = false

		if self.CustomBulletCallback then
			self.MainBullet.Callback2 = self.CustomBulletCallback
		end

		self.MainBullet.Callback = function(a, b, c)
			if IsValid(self) then
				c:SetInflictor(self)

				if self.MainBullet.Callback2 then
					self.MainBullet.Callback2(a, b, c)
				end

				self:CallAttFunc("CustomBulletCallback", a, b, c)

				self.MainBullet:Penetrate(a, b, c, self)
				self:PCFTracer(self.MainBullet, b.HitPos or vector_origin)
			end
		end

		BallisticFirebullet(self:GetOwner(), self.MainBullet)
	end
end