SWEP.Gun							= ("rw_sw_dc15a")
if (GetConVar(SWEP.Gun.."_allowed")) != nil then
	if not (GetConVar(SWEP.Gun.."_allowed"):GetBool()) then SWEP.Base = "tfa_blacklisted" SWEP.PrintName = SWEP.Gun return end
end
SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= "Scout Rifle"
SWEP.Author							= "Delta"
SWEP.Contact						= "https://steamcommunity.com/id/DeltaDesigns/"
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "Symmetry"
SWEP.Type							= "'Duality is not a curse, but a gift.' —Author unknown"
SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 60
SWEP.Slot							= 2
SWEP.SlotPos						= 100

SWEP.FiresUnderwater 				= true

SWEP.IronInSound 					= Sound ("TFA_SYMM_IRONIN.1");
SWEP.IronOutSound 					= Sound ("TFA_SYMM_IRONOUT.1");
SWEP.CanBeSilenced					= false
SWEP.Silenced 						= false
SWEP.SelectiveFire					= false
SWEP.DisableBurstFire				= true
SWEP.OnlyBurstFire					= false
SWEP.DefaultFireMode 				= "Semi"
SWEP.FireModeName 					= nil
SWEP.DisableChambering 				= true

SWEP.Primary.ClipSize				= 20
SWEP.Primary.DefaultClip			= 20*9
SWEP.Primary.RPM					= 260
SWEP.Primary.Ammo					= "smg1"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.Range 					= 40000
SWEP.Primary.RangeFalloff 			= -1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= true
SWEP.Primary.RPM_Semi				= 95
SWEP.Primary.Delay				    = 5
SWEP.Primary.Sound 					= Sound ("TFA_SYMM_FIRE.1");
SWEP.Primary.ReloadSound 			= Sound ("TFA_SYMM_RELOAD.1");
SWEP.Primary.PenetrationMultiplier 	= 1
SWEP.MaxPenetrationCounter = 1 --The maximum number of ricochets.  To prevent stack overflows.
SWEP.Primary.Damage					= 55
SWEP.Primary.HullSize 				= 2
SWEP.DamageType 					= DMG_BULLET

SWEP.DoMuzzleFlash 					= false
SWEP.MuzzleFlashEffect = "tfa_muzzleflash_gauss"

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
SWEP.SprintFOVOffset 				= 2
SWEP.ProjectileVelocity 			= 9

SWEP.ProjectileEntity 				= nil
SWEP.ProjectileModel 				= nil

SWEP.ViewModel						= "models/weapons/c_symmetry.mdl"
SWEP.ViewModelOrnament				= "models/weapons/c_symmetry_skyline.mdl"
--SWEP.WorldModel						= "models/weapons/c_thorn.mdl"
SWEP.ViewModelFOV					= 54
SWEP.ViewModelFlip					= false
SWEP.UseHands 						= true
SWEP.HoldType 						= "ar2"
SWEP.ReloadHoldTypeOverride 		= "ar2"

SWEP.ShowWorldModel = false

SWEP.BlowbackEnabled 				= true
SWEP.BlowbackVector 				= Vector(0, -2, 0)
SWEP.BlowbackCurrentRoot			= 0
SWEP.BlowbackCurrent 				= 1
SWEP.BlowbackBoneMods 				= nil
SWEP.Blowback_Only_Iron 			= true
SWEP.Blowback_PistolMode 			= false
SWEP.Blowback_Shell_Enabled 		= false
SWEP.Blowback_Shell_Effect 			= "None"

SWEP.Tracer							= 0
SWEP.TracerName 					= "symm_tracer"
SWEP.TracerCount 					= 1
SWEP.TracerLua 						= false
SWEP.TracerDelay					= 0
SWEP.ImpactEffect 					= "impact"

SWEP.VMPos = Vector(0, 0, 0)
SWEP.VMAng = Vector(0, 0, 0)

SWEP.IronSightTime 					= 0.5
SWEP.Primary.KickUp					= 0.15
SWEP.Primary.KickDown				= 0.15
SWEP.Primary.KickHorizontal			= 0.05
SWEP.Primary.StaticRecoilFactor 	= 0.4
SWEP.Primary.Spread					= 0.04
SWEP.Primary.IronAccuracy 			= 0.0001
SWEP.Primary.SpreadMultiplierMax 	= 1.3
SWEP.Primary.SpreadIncrement 		= 0.35
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= 0.85
SWEP.IronSightsMoveSpeed 			= 0.75

SWEP.IronSightsPos = Vector(-4.348, -5.5, -0.905)
SWEP.IronSightsAng = Vector(0, 0.3, 0)

SWEP.RunSightsPos = Vector(5.226, -2, 0)
SWEP.RunSightsAng = Vector(-18, 36, -13.5)
SWEP.InspectPos = Vector(8, -4.8, -3)
SWEP.InspectAng = Vector(11.199, 38, 0)	

SWEP.Attachments = {
	[1] = { offset = { 0, 0 }, atts = { "symm_revolution" }, order = 1 },
	[2] = { offset = { 0, 0 }, atts = { "symm_skyline" }, order = 2 }
}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(-3.149, 0.555, 0), angle = Angle(0, -3.333, 0) }
}

SWEP.VElements = {
	//["scope"] = { type = "Model", model = "models/rtcircle.mdl", bone = "WeaponBone", rel = "", pos = Vector(3.045, 6.8, -.139), angle = Angle(0, 100, 90), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 0),   surpresslightning = true, material = "!tfa_rtmaterial", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["world"] = { type = "Model", model = "models/weapons/c_symmetry.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-10.91, 4.675, -3.636), angle = Angle(-12.858, 0, -180), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}


DEFINE_BASECLASS( SWEP.Base )

if CLIENT then
surface.CreateFont( "SymmetryText", {
	font = "NeueHaasGroteskText Pro Md", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 30,
	weight = 0,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = true,
	additive = false,
	outline = false,
	} )
end

function SWEP:Initialize(...)
	self:SetNWBool("CanFire", true)
	self.Owner:SetNWInt("SymmHits", 0)
	return BaseClass.Initialize(self, ...)
end

function SWEP:Think2(...)
	VModel = self.Owner:GetViewModel( )
	PerkOn = VModel:SelectWeightedSequence( ACT_VM_PULLBACK_LOW )
	PerkOff = VModel:SelectWeightedSequence( ACT_VM_PULLBACK_HIGH )

	//Holding Reload detection
	if SERVER then
		if self.Owner:KeyPressed(IN_RELOAD) and self:GetStatus() != TFA.GetStatus("reloading") and !self.Owner:KeyDown(IN_ATTACK) then
			timer.Create("SymmReloadTest", 0.5, 1, function() if IsValid(self) then

				
				if self:GetIronSights( issighting ) then
					self:SetIronSightsRaw(false)
				end

				//Perk toggle
				if self.Owner:KeyDown(IN_RELOAD) then 
					if not self:IsAttached("symm_revolution") then 
						timer.Simple(0.25, function() 
							self:Attach("symm_revolution")
							if ( self:Clip1() <= 20 ) then
								self:SetClip1(math.Clamp( self:Clip1() + self.Owner:GetNWInt("SymmHits"), 0, 20 ))
							end 
						end)
						self:EmitSound(Sound("TFA_SYMM_PERKON.1"))
						//print(VModel:GetSequence())
						VModel:SendViewModelMatchingSequence( PerkOn )
						self:SetNWBool("CanFire", false)
						timer.Simple(1, function() self:SetNWBool("CanFire", true) end)
						return
					end
					if self:IsAttached("symm_revolution") then 
						self.Owner:SetNWInt("SymmHits", 0)
						timer.Simple(0.25, function() self:Detach("symm_revolution") end)
						self:EmitSound(Sound("TFA_SYMM_PERKOFF.1"))
						//print(VModel:GetSequence())
						VModel:SendViewModelMatchingSequence( PerkOff )
						self:SetNWBool("CanFire", false)
						timer.Simple(1, function() self:SetNWBool("CanFire", true) end)
						return 
					end
				end
			end
			end)
		end
	end
	if self.Owner:GetNWInt("SymmHits") > 0 and IsValid(self.Owner) then
		local text 
		if not self:IsAttached("symm_revolution") then
			text = "Dynamic Charge"
		end
		if self:IsAttached("symm_revolution") then
			text = "Revolution"
		end  
		hook.Add("HUDPaint", "SymmPerkIcon", function()
			local arc = surface.GetTextureID("entities/arc_shield_icon")
			draw.DrawText(text .. " x" .. self.Owner:GetNWInt("SymmHits"), "SymmetryText", ScrW() * 0.06, ScrH() * 0.647, Color( 240, 255, 255, 200 ), TEXT_ALIGN_LEFT )
			surface.SetTexture(arc)
			surface.SetDrawColor(255,255,255,255)
			surface.DrawTexturedRect(ScrW() * 0.035, ScrH() * 0.644, 40, 40)
		end)
	end
	if self.Owner:GetNWInt("SymmHits") == 0 and IsValid(self.Owner) then
		local text 
		if self:IsAttached("symm_revolution") then
			text = "Revolution"
			hook.Add("HUDPaint", "SymmPerkIcon", function()
				local arc = surface.GetTextureID("entities/arc_shield_icon")
				draw.DrawText(text, "SymmetryText", ScrW() * 0.06, ScrH() * 0.647, Color( 240, 255, 255, 200 ), TEXT_ALIGN_LEFT )
				surface.SetTexture(arc)
				surface.SetDrawColor(255,255,255,255)
				surface.DrawTexturedRect(ScrW() * 0.035, ScrH() * 0.644, 40, 40)
			end)
		end  
	end
	if self.Owner:GetNWInt("SymmHits") <= 0 and IsValid(self.Owner) and not self:IsAttached("symm_revolution") then
		hook.Remove("HUDPaint", "SymmPerkIcon")
	end
	if self:IsAttached("symm_revolution") then
		self:SetNextIdleAnim(CurTime() + 10)
	end
	return BaseClass.Think2(self, ...)
end

function SWEP:OnRemove(...)
	hook.Remove("HUDPaint", "SymmPerkIcon")
	return BaseClass.OnRemove(self,...)
end
function SWEP:Holster(...)
	hook.Remove("HUDPaint", "SymmPerkIcon")
	return BaseClass.Holster(self,...)
end

function SWEP:PrimaryAttack(...)
	if self:GetNWBool("CanFire") == false then return end //prevents from shooting when in perk activation animation
	if self:CanPrimaryAttack(true) then
		ParticleEffectAttach("SymmMuzzle_Main", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
	end
	return BaseClass.PrimaryAttack(self, ...)
end

function SWEP:PostPrimaryAttack()
	local tr = self.Owner:GetEyeTrace()
	local hits = self.Owner:GetNWInt("SymmHits")
	//print(self.Primary.Damage)
	if SERVER then
		if not self:IsAttached("symm_revolution") then 
			if tr.Entity:IsPlayer() or tr.Entity:IsNPC() then
				if hits <= 19 then
					self.Owner:SetNWInt("SymmHits", hits + 1)
				end
			end
			--[[
			if tr.HitWorld then
				self.Owner:SetNWInt("SymmHits", 0)
			end]]
			//print(self.Owner:GetNWInt("SymmHits"))
		end
	end
end

//Replaces normal bullets in Arc Seeker Mode, copied from my Jotunn
function SWEP:ShootBullet(...)
	if self:IsAttached("symm_revolution") and IsFirstTimePredicted() then
		if SERVER then
			timer.Simple(0, function()
				local attachmentID=self:LookupAttachment("Muzzle")
				local muzzle = self:GetAttachment( attachmentID )

				ParticleEffectAttach("SymmMuzzle_Main", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("Muzzle"))

				local ent = ents.Create("destiny_symm_projectile")
				local dir
				local ang = self.Owner:EyeAngles()
				rec, aimcone = self:CalculateConeRecoil()
					  		
				dir = ang:Forward()
				ang:RotateAroundAxis(ang:Right(), - aimcone / 2)

				if !self:GetIronSights( issighting ) then
					ent:SetPos(self.Owner:GetShootPos() + ang:Forward()*10 + ang:Right()*13 + ang:Up()*-10)
				end

				if self:GetIronSights( issighting ) then
					ent:SetPos(self.Owner:GetShootPos() + ang:Forward()*25 + ang:Right() + ang:Up()*-25)
				end

				ent:SetOwner(self.Owner)
				ent:Spawn()
				ent:SetVelocity(dir * 5000)
				local phys = ent:GetPhysicsObject()

				if IsValid(phys) then
					phys:SetVelocity(dir * 5000)
					phys:EnableGravity( false )
					phys:EnableDrag(false)
				end
			end)
		end
		return	
	end
	return BaseClass.ShootBullet(self,...)
end

