AddCSLuaFile()

SWEP.PrintName =	"Hex-Shield"
SWEP.Author =		"tau"
SWEP.Contact =		"http://steamcommunity.com/id/blue_orng/"

SWEP.Slot =		4
SWEP.SlotPos =		5

SWEP.Spawnable =	true

SWEP.ViewModel =	Model( "models/weapons/c_hexshield_grenade.mdl" )
SWEP.WorldModel =	Model( "models/weapons/w_hexshield_grenade.mdl" )

SWEP.UseHands =		true

SWEP.ViewModelFOV =	54


SWEP.Primary.ClipSize =	-1
SWEP.Primary.DefaultClip =	-1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo =	"none"


SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"



function SWEP:Initialize()
	self:SetWeaponHoldType("grenade")
end


function SWEP:CreateGrenade(pos,ang,vel,angvel)
	local ent = ents.Create("hexshield_grenade2")
	if not IsValid(ent) then return end

	ent:SetPos(pos)

	ent:SetGravity(0.4)
	ent:SetFriction(0.2)
	ent:SetElasticity(0.45)

	ent:SetOwner(self.Owner)

	ent:Spawn()
	ent.StartPos = self.Owner:GetPos()

	local phys = ent:GetPhysicsObject()
	if IsValid(phys) then
		phys:Wake()
		phys:SetVelocity(vel)
		phys:AddAngleVelocity(angvel)
	end


	return true
end


function SWEP:PrimaryAttack()

	if SERVER then
		local ply = self.Owner
		local ang = ply:EyeAngles()
		local pos = ply:GetPos() + (ply:Crouching() and ply:GetViewOffsetDucked() or ply:GetViewOffset())+ (ang:Forward() * 8) + (ang:Right() * 10)



		local tr = ply:GetEyeTraceNoCursor()
		local vel = tr.Normal * 600
		vel.z = vel.z + 50
		local vel = ply:GetVelocity() + vel
		

		local res = self:CreateGrenade(pos,ang,vel,Vector(600, math.random(-1200, 1200), 0), ply)
		if res then
			self:Remove()
		end
	end
end

function SWEP:SecondaryAttack() end
