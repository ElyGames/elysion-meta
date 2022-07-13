
SWEP.Gun					= ("weapon_wunderwaffe") --Make sure this is unique.  Specically, your folder name.
if (GetConVar(SWEP.Gun.."_allowed")) != nil then
	if not (GetConVar(SWEP.Gun.."_allowed"):GetBool()) then SWEP.Base = "tfa_blacklisted" SWEP.PrintName = SWEP.Gun return end
end
SWEP.Base				= "tfa_gun_base"
SWEP.Category				= "TFA Wonder Weapons" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer = nil --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= "Deika & Hidden" --Author Tooltip
SWEP.Contact				= "" --Contact Info Tooltip
SWEP.Purpose				= "Jimmy Z's good old classic." --Purpose Tooltip
SWEP.Instructions				= "" --Instructions Tooltip
SWEP.Spawnable				= true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable			= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair			= true		-- Draw the crosshair?
SWEP.DrawCrosshairIS = false --Draw the crosshair in ironsights?
SWEP.PrintName				= "Wunderwaffe DG-2"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 2				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 10			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter if enabled in the GUI.
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.Weight				= 30			-- This controls how "good" the weapon is for autopickup.
SWEP.Primary.Recoil 		   = 0.5
SWEP.Type					= "Wonder Weapon"
SWEP.Range = GetConVarNumber( "sk_vortigaunt_zap_range",100)*24
SWEP.NZWonderWeapon = true

game.AddAmmoType( {
 name = "tesla_bulbs",
 dmgtype = DMG_SHOCK,
 tracer = TRACER_LINE,
 plydmg = 0,
 npcdmg = 0,
 force = 2000,
 minsplash = 10,
 maxsplash = 5
} )

--[[WEAPON HANDLING]]--

--Firing related
SWEP.Primary.Sound 			= Sound("weapons/tesla_gun/new/wpn_tesla_flux.ogg")				-- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound 			= nil				-- This is the sound of the weapon, when silenced.
SWEP.Primary.PenetrationMultiplier = 1 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage		= 115					-- Damage, in standard damage points.
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.DamageType = nil --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.
SWEP.Primary.NumShots	= nil --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic			= true					-- Automatic/Semi Auto
SWEP.Primary.RPM				= 60					-- This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Semi				= nil					-- RPM for semi-automatic or burst fire.  This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Burst				= nil					-- RPM for burst fire, overrides semi.  This is in Rounds Per Minute / RPM
SWEP.Primary.BurstDelay				= nil					-- Delay between bursts, leave nil to autocalculate
SWEP.FiresUnderwater = false

SWEP.IronInSound = nil --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = nil --Sound to play when ironsighting out?  nil for default

SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?

-- Selective Fire Stuff

SWEP.SelectiveFire		= false --Allow selecting your firemode?
SWEP.DefaultFireMode 	= "Auto" --Default to auto or whatev

--Ammo Related

SWEP.Primary.ClipSize			= 3					-- This is the size of a clip
SWEP.Primary.DefaultClip			= 18				-- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.MaxAmmo			= 15
SWEP.Primary.Ammo			= "tesla_bulbs"					-- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.DisableChambering = true --Disable round-in-the-chamber

--Recoil Related
SWEP.Primary.KickUp            = 0.5                -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown            = 0.3                    -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal            = 0.2                -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.5     --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

--Firing Cone Related

SWEP.Primary.Spread		= .01					--This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .005	-- Ironsight accuracy, should be the same for shotguns

--[[PROJECTILES]]--

--SWEP.ProjectileEntity = "obj_blank_proj" --Entity to shoot
--SWEP.ProjectileVelocity = 50000 --Entity to shoot's velocity
--SWEP.ProjectileModel = nil --Entity to shoot's model

--[[VIEWMODEL]]--

SWEP.ViewModel			= "models/weapons/wunderwaffe/v_wunderwaffe.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 75		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= false		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.MaterialTable = nil --Make sure the viewmodel and the worldmodel have the same material ids.  Next, fill this in with your desired submaterials.
SWEP.UseHands = true --Use gmod c_arms system.
SWEP.VMPos = Vector(0.25, -3, -1.50)
SWEP.VMAng = Vector(0, 0, 0)

--[[WORLDMODEL]]--

SWEP.WorldModel			= "models/weapons/wunderwaffe/w_wunderwaffe.mdl" -- Weapon world model path

SWEP.WMBodyGroups = nil--{
	--[0] = 1,
	--[1] = 4,
	--[2] = etc.
--}

SWEP.HoldType 				= "ar2"		

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = 0,
        Right = 0,
        Forward = 0,
        },
        Ang = {
        Up = -1,
        Right = -2,
        Forward = 178
        },
		Scale = 1
}





--[[IRONSIGHTS]]--

SWEP.data 				= {}
SWEP.data.ironsights			= 1 --Enable Ironsights
SWEP.Secondary.IronFOV			= 70					-- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.

SWEP.IronSightsPos = Vector(-5.10, -3.25, 2.0)
SWEP.IronSightsAng = Vector(-1.55, 0, 0)
SWEP.RunSightsPos = Vector(0.0, -7.5, 0.0)
SWEP.RunSightsAng = Vector(-20.0, 50.0, -32.0)

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_LUA --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation


--[[INSPECTION]]--

--SWEP.InspectPos = Vector(0,0,0) --Replace with a vector, in style of ironsights position, to be used for inspection
--SWEP.InspectAng = Vector(0,0,0) --Replace with a vector, in style of ironsights angle, to be used for inspection



--[[Stuff you SHOULD NOT touch after this]]--

--Allowed VAnimations.  These are autodetected, so not really needed except as an extra precaution.  Do NOT change these, unless absolutely necessary.

SWEP.CanDrawAnimate=true
SWEP.CanDrawAnimateEmpty=false
SWEP.CanDrawAnimateSilenced=false
SWEP.CanHolsterAnimate=true
SWEP.CanHolsterAnimateEmpty=false
SWEP.CanIdleAnimate=true
SWEP.CanIdleAnimateEmpty=false
SWEP.CanIdleAnimateSilenced=false
SWEP.CanShootAnimate=true
SWEP.CanShootAnimateSilenced=false
SWEP.CanReloadAnimate=true
SWEP.CanReloadAnimateEmpty=false
SWEP.CanReloadAnimateSilenced=false
SWEP.CanDryFireAnimate=false
SWEP.CanDryFireAnimateSilenced=false
SWEP.CanSilencerAttachAnimate=false
SWEP.CanSilencerDetachAnimate=false

--Misc

SWEP.ShouldDrawAmmoHUD=false--THIS IS PROCEDURALLY CHANGED AND SHOULD NOT BE TWEAKED.  BASE DEPENDENT VALUE.  DO NOT CHANGE OR THINGS MAY BREAK.  NO USE TO YOU.
SWEP.DefaultFOV=90 --BASE DEPENDENT VALUE.  DO NOT CHANGE OR THINGS MAY BREAK.  NO USE TO YOU.

--Disable secondary crap

SWEP.Secondary.ClipSize			= 0					-- Size of a clip
SWEP.Secondary.DefaultClip			= 0					-- Default ammo to give...
SWEP.Secondary.Automatic			= false					-- Automatic/Semi Auto
SWEP.Secondary.Ammo			= "none" -- Self explanitory, ammo type.

--[[EFFECTS]]--
--Attachments
SWEP.MuzzleAttachment			= "1" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "2" 		-- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleFlashEnabled = false --Enable muzzle flash
SWEP.MuzzleAttachmentRaw = nil --This will override whatever string you gave.  This is the raw attachment number.  This is overridden or created when a gun makes a muzzle event.
SWEP.AutoDetectMuzzleAttachment = false --For multi-barrel weapons, detect the proper attachment?
SWEP.MuzzleFlashEffect = nil --Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.
SWEP.SmokeParticle = nil --Smoke particle (ID within the PCF), defaults to something else based on holdtype; "" to disable
SWEP.EjectionSmokeEnabled = true --Disable automatic ejection smoke

--Convar support

SWEP.ConDamageMultiplier = 1

SWEP.Base				= "tfa_gun_base"

DEFINE_BASECLASS( SWEP.Base )

function SWEP:Initialize()
	BaseClass.Initialize(self)
	if CLIENT then
		self.LoopingSound = CreateSound( self, "weapons/tesla_gun/wpn_tesla_idle_d.ogg")
	end
end

SWEP.LightNum = 3
function SWEP:FireAnimationEvent(pos, ang, event, options)
	local own = self:GetOwner()
	local lightpcf
	if self.Ispackapunched then
		lightpcf = "tesla_vm_glow_pap"
	else
		lightpcf = "tesla_vm_glow"
	end
	local vm = own:GetViewModel()
	local bulb = {2, 3, 4}
	
	-- First Raise = 9091
	-- Pullout = 9001
	-- Fire = 9061
	-- Finish Reload = 9071
	-- Start Reload = 9081
	
	self.LightNum = math.Clamp(self:Clip1() + self.Owner:GetAmmoCount(self.Primary.Ammo), 0, 3)
	
	self.FuncList = {
		[9001] = function() 
			vm:StopParticles()
			if self:Clip1() > 0 then self.LoopingSound:Play() end
			if self.Ispackapunched then
				for i = 1, math.Round(self:Clip1()/2) do
					ParticleEffectAttach( lightpcf, PATTACH_POINT_FOLLOW, vm, bulb[i]) -- Pullout
				end
			else
				for i = 1, self:Clip1() do
					ParticleEffectAttach( lightpcf, PATTACH_POINT_FOLLOW, vm, bulb[i])
				end
			end
			if self:Clip1() > 0 then
				ParticleEffectAttach( lightpcf, PATTACH_POINT_FOLLOW, vm, 5)
			end
		end,
		[9061] = function() 
			vm:StopParticles()
			if self.Ispackapunched then
				for i = 1, math.Round(self:Clip1()/2) do
					ParticleEffectAttach( lightpcf, PATTACH_POINT_FOLLOW, vm, bulb[i])
				end
				ParticleEffectAttach( "tesla_mflash_pap", PATTACH_POINT_FOLLOW, vm, 1) -- Fire
			else
				for i = 1, self:Clip1() do
					ParticleEffectAttach( lightpcf, PATTACH_POINT_FOLLOW, vm, bulb[i])
				end
				ParticleEffectAttach( "tesla_mflash", PATTACH_POINT_FOLLOW, vm, 1)
			end
			if self:Clip1() > 0 then
				ParticleEffectAttach( lightpcf, PATTACH_POINT_FOLLOW, vm, 5)
			else
				self.LoopingSound:Stop()
			end
		end,
		[9071] = function() 
			vm:StopParticles()
			for i = 1, self.LightNum do
				ParticleEffectAttach( lightpcf, PATTACH_POINT_FOLLOW, vm, bulb[i]) --Finish reloading
			end
			if self.LightNum > 0 then
				ParticleEffectAttach( lightpcf, PATTACH_POINT_FOLLOW, vm, 5)
			end
			timer.Simple(0.25, function() 
				if IsValid(self) then
					self.LoopingSound:Play()
				end
			end)
		end,
		[9081] = function() 
			vm:StopParticles()
			self.LoopingSound:Stop()
		end,
		[9091] = function() 
			ParticleEffectAttach( lightpcf, PATTACH_POINT_FOLLOW, vm, 2)
			ParticleEffectAttach( lightpcf, PATTACH_POINT_FOLLOW, vm, 3)
			ParticleEffectAttach( lightpcf, PATTACH_POINT_FOLLOW, vm, 4)
			ParticleEffectAttach( lightpcf, PATTACH_POINT_FOLLOW, vm, 5) -- First raise
			timer.Simple(0.25, function() 
				if IsValid(self) then
					self.LoopingSound:Play()
				end
			end)
		end
	}
	
	local getfunc = self.FuncList[event]
	if getfunc == nil then return end
	getfunc()
end

function SWEP:PrimaryAttack( old )
	if !self:CanPrimaryAttack() then return	end	
	local own = self:GetOwner()
	if SERVER then
		local orb1 = ents.Create("wunderwaffe_entity_ball")
		local pos
		if self:GetIronSights() then
			pos = own:GetShootPos() + own:GetUp()*-6
		else
			pos = own:GetShootPos() + own:GetUp()*-6 + own:GetRight()*5
		end
		orb1:SetPos(pos)
		orb1:SetUpgraded(self.Ispackapunched)
		orb1.Owner = own
		orb1:Spawn()
		orb1:Activate()
		local phys = orb1:GetPhysicsObject()
		if IsValid(phys) then
			phys:SetMass( 1 )
			phys:SetBuoyancyRatio(0)
			phys:EnableGravity( false )
			phys:EnableDrag( false )
			phys:Wake()
			phys:ApplyForceCenter((own:GetEyeTrace().HitPos - pos):GetNormalized()*3000)
		else
			orb1:Remove()
		end
	end
	if self:Clip1() > 1 then
		self:EmitSound("weapons/tesla_gun/new/wpn_tesla_fire_st.ogg", 80, 100, 1, CHAN_ITEM)
	else
		self:EmitSound("weapons/tesla_gun/new/wpn_tesla_fire_lst.ogg", 80, 100, 1, CHAN_ITEM)
	end
	self:EmitSound(self.Primary.Sound, 110, 100, 0.5, CHAN_WEAPON)
	--self:EmitSound("weapons/tesla_gun/wpn_tesla_flux.ogg", 75, 100, 1, CHAN_WEAPON)
	self.NextWave = CurTime() + math.random(2, 12)
	--BaseClass.PrimaryAttack( self, old )
	self:SetNextPrimaryFire(CurTime() + 1)
	self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	own:SetAnimation( PLAYER_ATTACK1 )
	self:TakePrimaryAmmo(1)
	own:ViewPunch(Angle(-4, 0, 0))
end

SWEP.NZPaPName = "Wunderwaffe DG-3 JZ"

-- Nzombies stuff

SWEP.DisableChambering = true
SWEP.Primary.MaxAmmo = 15

-- Max Ammo function

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
    end
end

-- PaP Function
function SWEP:OnPaP()
	self:ClearStatCache()
	self.Ispackapunched = true
	self.Primary.ClipSize = 6
	self.Primary.MaxAmmo = 30
	return true
end

SWEP.Ispackapunched = false
function SWEP:PreDrawViewModel( vm )
	if self.Ispackapunched then
		vm:SetSubMaterial(0, "models/weapons/common/wawpap.vmt")
		vm:SetSubMaterial(4, "models/weapons/common/wawpap.vmt")
	else
		vm:SetSubMaterial(0, nil)
		vm:SetSubMaterial(4, nil)
	end
end

function SWEP:Think2()
	BaseClass.Think2(self)
	
	if self.NextWave == nil then self.NextWave = CurTime() + math.random(2, 12) end
	if CLIENT and self:Clip1() > 0 and self.NextWave < CurTime() then
		self.NextWave = CurTime() + 12
		local own = self:GetOwner()
		local vm = own:GetViewModel()
		
		if self.Ispackapunched then
			ParticleEffectAttach( "tesla_vm_excited_pap", PATTACH_POINT_FOLLOW, vm, 1)
		else
			ParticleEffectAttach( "tesla_vm_excited", PATTACH_POINT_FOLLOW, vm, 1)
		end
		surface.PlaySound("weapons/tesla_gun/effects/effects_0"..math.random(0,2)..".ogg")
	end
end

function SWEP:OnRemove()
	if self.LoopingSound then self.LoopingSound:Stop() end
	BaseClass.OnRemove(self)
end

function SWEP:FinishHolster()
	--self:StopSound("weapons/tesla_gun/wpn_tesla_idle_d.ogg")
	if self.LoopingSound then self.LoopingSound:Stop() end
	BaseClass.FinishHolster(self)
end