DEFINE_BASECLASS("tfa_gun_base")
SWEP.Secondary.BashDamage = 25
SWEP.Secondary.BashSound = Sound("TFA.Bash")
SWEP.Secondary.BashHitSound = Sound("TFA.BashWall")
SWEP.Secondary.BashHitSound_Flesh = Sound("TFA.BashFlesh")
SWEP.Secondary.BashLength = 54
SWEP.Secondary.BashDelay = 0.2
SWEP.Secondary.BashDamageType = DMG_SLASH
SWEP.Secondary.BashEnd = nil --Override bash sequence length easier
SWEP.Secondary.BashInterrupt = false --Do you need to be in a "ready" status to bash?
SWEP.BashBase = true
SWEP.Secondary.CanBash = false

--SWEP.tmptoggle = true
function SWEP:BashForce(ent, force, pos, now)
	if not IsValid(ent) or not ent.GetPhysicsObjectNum then return end

	if now then
		if ent.GetRagdollEntity then
			ent = ent:GetRagdollEntity() or ent
		end

		local phys = ent:GetPhysicsObjectNum(0)

		if IsValid(phys) then
			if ent:IsPlayer() or ent:IsNPC() then
				ent:SetVelocity( force * 0.1)
				phys:SetVelocity(phys:GetVelocity() + force * 0.1)
			else
				phys:ApplyForceOffset(force, pos)
			end
		end
	end
end

local function bashcallback(a, b, c, wep, pain)
	if not IsValid(wep) then return end

	c:SetInflictor(wep)

	if c then
		c:SetDamageType(wep:GetStat("Secondary.BashDamageType"))
	end

	if IsValid(b.Entity) and b.Entity.TakeDamageInfo then
		local dmg = DamageInfo()
		dmg:SetAttacker(wep:GetOwner())
		dmg:SetInflictor(wep)
		dmg:SetDamagePosition(wep:GetOwner():GetShootPos())
		dmg:SetDamageForce(wep:GetOwner():GetAimVector() * 1) --(pain))
		dmg:SetDamage(pain)
		dmg:SetDamageType(wep:GetStat("Secondary.BashDamageType"))
		b.Entity:TakeDamageInfo(dmg)
		wep:BashForce(b.Entity, wep:GetOwner():GetAimVector() * math.sqrt(pain / 80) * 32 * 80, b.HitPos)
	end
end

local cv_doordestruction = GetConVar("sv_tfa_melee_doordestruction")

function SWEP:HandleDoor(slashtrace)
	if CLIENT or not IsValid(slashtrace.Entity) then return end

	if not cv_doordestruction:GetBool() then return end

	if slashtrace.Entity:GetClass() == "func_door_rotating" or slashtrace.Entity:GetClass() == "prop_door_rotating" then
		slashtrace.Entity:EmitSound("ambient/materials/door_hit1.ogg", 100, math.random(80, 120))

		local newname = "TFABash" .. self:EntIndex()
		self.PreBashName = self:GetName()
		self:SetName(newname)

		slashtrace.Entity:SetKeyValue("Speed", "500")
		slashtrace.Entity:SetKeyValue("Open Direction", "Both directions")
		slashtrace.Entity:SetKeyValue("opendir", "0")
		slashtrace.Entity:Fire("unlock", "", .01)
		slashtrace.Entity:Fire("openawayfrom", newname, .01)

		timer.Simple(0.02, function()
			if not IsValid(self) or self:GetName() ~= newname then return end

			self:SetName(self.PreBashName)
		end)

		timer.Simple(0.3, function()
			if IsValid(slashtrace.Entity) then
				slashtrace.Entity:SetKeyValue("Speed", "100")
			end
		end)
	end
end

local l_CT = CurTime
local sp = game.SinglePlayer()

function SWEP:AltAttack()
	if self:GetStat("Secondary.CanBash") == false then return end
	if not self:OwnerIsValid() then return end
	if l_CT() < self:GetNextSecondaryFire() then return end
	local stat = self:GetStatus()
	if ( not TFA.Enum.ReadyStatus[stat] ) and not self.Secondary.BashInterrupt then return end
	if ( stat == TFA.Enum.STATUS_BASHING ) and self.Secondary.BashInterrupt then return end
	if self:IsSafety() then return end
	if self:GetHolding() then return end
	local enabled, act = self:ChooseBashAnim()

	if not enabled then return end

	if self:GetOwner().Vox then
		self:GetOwner():Vox("bash", 0)
	end
	self.unpredbash = true

	timer.Simple(0.1, function()
		if IsValid(self) then
			self.unpredbash = false
		end
	end)

	self:BashAnim()
	if sp and SERVER then self:CallOnClient("BashAnim","") end

	self.tmptoggle = not self.tmptoggle
	self:SetNextPrimaryFire(l_CT() + (self:GetStat("Secondary.BashEnd") or self:GetActivityLength(act, false) ) )
	self:SetNextSecondaryFire(l_CT() + (self:GetStat("Secondary.BashEnd") or self:GetActivityLength(act, true) ) )

	self:EmitSoundNet(self:GetStat("Secondary.BashSound"))

	self:SetStatus(TFA.Enum.STATUS_BASHING)
	self:SetStatusEnd( l_CT() + (self:GetStat("Secondary.BashEnd") or self:GetActivityLength(act, true) ) )

	self:SetNW2Float("BashTTime", l_CT() + self:GetStat("Secondary.BashDelay"))
end

function SWEP:BashAnim()
	--if IsValid(wep) and wep.GetHoldType then
	local ht = self.DefaultHoldType or self.HoldType
	local altanim = false

	if ht == "ar2" or ht == "shotgun" or ht == "crossbow" or ht == "physgun" then
		altanim = true
	end

	self:GetOwner():AnimRestartGesture(0, altanim and ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND or ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2, true)
end

local ttime = -1

function SWEP:Think2()
	ttime = self:GetNW2Float("BashTTime", -1)
	
	if IsValid(self.Owner) and self:Clip1() <= 0 and self:Ammo1() > 0 and self:GetNextPrimaryFire() <= CurTime() and self.Primary.ClipSize > 0 then
		self:Reload(true)
	end

	if IsValid(self.Owner) and not self.Owner:IsNPC() and self:Clip2() <= 0 and self:Ammo2() > 0 and self:GetNextPrimaryFire() <= CurTime() and self:GLDeployed() then
        self:Reload(true)
    end

	if ttime ~= -1 and l_CT() > ttime then
		self:SetNW2Float("BashTTime", -1)
		local pos = self:GetOwner():GetShootPos()
		local av = self:GetOwner():EyeAngles():Forward()
		local slash = {}
		slash.start = pos
		slash.endpos = pos + (av * self:GetStat("Secondary.BashLength"))
		slash.filter = self:GetOwner()
		slash.mins = Vector(-10, -5, 0)
		slash.maxs = Vector(10, 5, 5)
		local slashtrace = util.TraceHull(slash)
		local pain = self:GetStat("Secondary.BashDamage")

		if slashtrace.Hit then
			self:HandleDoor(slashtrace)
			if not ( sp and CLIENT ) then
				self:EmitSound((slashtrace.MatType == MAT_FLESH or slashtrace.MatType == MAT_ALIENFLESH) and self:GetStat("Secondary.BashHitSound_Flesh") or self:GetStat("Secondary.BashHitSound"))
			end

			if game.GetTimeScale() > 0.99 then
				self:GetOwner():FireBullets({
					Attacker = self:GetOwner(),
					Inflictor = self,
					Damage = 1,
					Force = 1, --pain,
					Distance = self:GetStat("Secondary.BashLength") + 10,
					HullSize = 10,
					Tracer = 0,
					Src = self:GetOwner():GetShootPos(),
					Dir = slashtrace.Normal,
					Callback = function(a, b, c)
						bashcallback(a, b, c, self, pain)
					end
				})
			else
				local dmg = DamageInfo()
				dmg:SetAttacker(self:GetOwner())
				dmg:SetInflictor(self)
				dmg:SetDamagePosition(self:GetOwner():GetShootPos())
				dmg:SetDamageForce(self:GetOwner():GetAimVector() * pain)
				dmg:SetDamage(pain)
				dmg:SetDamageType(self:GetStat("Secondary.BashDamageType"))

				if IsValid(slashtrace.Entity) and slashtrace.Entity.TakeDamageInfo then
					slashtrace.Entity:TakeDamageInfo(dmg)
				end
			end

			local ent = slashtrace.Entity
			if not IsValid(ent) or not ent.GetPhysicsObject then return end
			local phys

			if ent:IsRagdoll() then
				phys = ent:GetPhysicsObjectNum(slashtrace.PhysicsBone or 0)
			else
				phys = ent:GetPhysicsObject()
			end

			if IsValid(phys) then
				if ent:IsPlayer() or ent:IsNPC() then
					ent:SetVelocity( self:GetOwner():GetAimVector() * self:GetStat("Secondary.BashDamage") * 0.5 )
					phys:SetVelocity(phys:GetVelocity() + self:GetOwner():GetAimVector() * self:GetStat("Secondary.BashDamage") * 0.5 )
				else
					phys:ApplyForceOffset(self:GetOwner():GetAimVector() * self:GetStat("Secondary.BashDamage") * 0.5, slashtrace.HitPos)
				end
			end
		end
	end

	BaseClass.Think2(self)
end

function SWEP:SecondaryAttack()
	if self:GetStat("data.ironsights", 0) == 0 then
		self:AltAttack()
		return
	end

	BaseClass.SecondaryAttack(self)
end

function SWEP:GetBashing()
	if not self:VMIV() or not IsValid(self.OwnerViewModel) then return false end

	local stat = self:GetStatus()

	return ((stat == TFA.Enum.STATUS_BASHING) and self.OwnerViewModel:GetCycle() > 0 and self.OwnerViewModel:GetCycle() < 0.65) or self.unpredbash
end


----Its bobbing time!----

SWEP.SprintBobMult = 1.5 -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this > 1 probably for sprinting.
SWEP.IronBobMult = 0.0 -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this < 1 for sighting, 0 to outright disable.
SWEP.IronBobMultWalk = 0.2 -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this < 1 for sighting, 0 to outright disable.
SWEP.SprintViewBobMult = 0

--[[
Function Name:  CalcView
Syntax: Don't ever call this manually.
Returns:  Nothing.
Notes:  Used to calculate view angles.
Purpose:  Feature
]]--'

local ta = Angle()
local v = Vector()

local m_AD = math.AngleDifference
local m_NA = math.NormalizeAngle

local l_LA = function(t,a1,a2)
	ta.p = m_NA( a1.p + m_AD(a2.p,a1.p)  * t )
	ta.y = m_NA( a1.y + m_AD(a2.y,a1.y)  * t )
	ta.r = m_NA( a1.r + m_AD(a2.r,a1.r)  * t )
	return ta
end

local l_LV = function(t,v1,v2)
	v = v1  + ( v2 - v1 ) * t
	return v * 1
end

SWEP.ViewHolProg = 0
SWEP.AttachmentViewOffset = Angle(0, 0, 0)
SWEP.ProceduralViewOffset = Angle(0, 0, 0)
local procedural_fadeout = 0.6
local procedural_vellimit = 5
local l_Lerp = Lerp
local l_mathApproach = math.Approach
local l_mathClamp = math.Clamp
local viewbob_intensity_cvar, viewbob_animated_cvar
viewbob_intensity_cvar = GetConVar("cl_tfa_viewbob_intensity")
viewbob_animated_cvar = GetConVar("cl_tfa_viewbob_animated")
local oldangtmp, oldpostmp
local mzang_fixed
local mzang_fixed_last
local mzang_velocity = Angle()
local progress = 0
local targint,targbool


SWEP.ti = 0
SWEP.LastCalcBob = 0

SWEP.tiView = 0
SWEP.LastCalcViewBob = 0

local rate_up = 12
local scale_up = 0.3
local rate_right = 6
local scale_right = 0.3
local rate_forward_view = 6
local scale_forward_view = 0.35
local rate_right_view = 6
local scale_right_view = -1

local rate_p = 12
local scale_p = 3
local rate_y = 6
local scale_y = 6
local rate_r = 6
local scale_r = -3



local pist_rate = 6
local pist_scale = 8

local rate_clamp = 2


local sv_cheats_cv = GetConVar("sv_cheats")
local host_timescale_cv = GetConVar("host_timescale")


SWEP.BobEyeFocus = 512


local l_Lerp = function(t, a, b) return a + (b - a) * t end
local l_mathMin = function(a, b) return (a < b) and a or b end
local l_mathMax = function(a, b) return (a > b) and a or b end
local l_ABS = function(a) return (a < 0) and -a or a end
local l_mathClamp = function(t, a, b) return l_mathMax(l_mathMin(t, b), a) end

local l_mathApproach = function(a, b, delta)
	if a < b then
		return l_mathMin(a + l_ABS(delta), b)
	else
		return l_mathMax(a - l_ABS(delta), b)
	end
end
local l_NormalizeAngle = math.NormalizeAngle
local LerpAngle = LerpAngle

local function util_NormalizeAngles(a)
	a.p = l_NormalizeAngle(a.p)
	a.y = l_NormalizeAngle(a.y)
	a.r = l_NormalizeAngle(a.r)

	return a
end


local vm_offset_pos = Vector()
local vm_offset_ang = Angle()
local l_FT = FrameTime
local l_CT = CurTime
local ft = 0.01
local host_timescale_cv = GetConVar("host_timescale")
local sv_cheats_cv = GetConVar("sv_cheats")
--local fps_max_cvar = GetConVar("fps_max")

local righthanded,shouldflip,cl_vm_flip_cv


local target_pos,target_ang,adstransitionspeed, hls
local flip_vec = Vector(-1,1,1)
local flip_ang = Vector(1,-1,-1)
local cl_tfa_viewmodel_offset_x
local cl_tfa_viewmodel_offset_y,cl_tfa_viewmodel_offset_z, cl_tfa_viewmodel_centered, fovmod_add, fovmod_mult
if CLIENT then
	cl_tfa_viewmodel_offset_x = GetConVar("cl_tfa_viewmodel_offset_x")
	cl_tfa_viewmodel_offset_y = GetConVar("cl_tfa_viewmodel_offset_y")
	cl_tfa_viewmodel_offset_z = GetConVar("cl_tfa_viewmodel_offset_z")
	cl_tfa_viewmodel_centered = GetConVar("cl_tfa_viewmodel_centered")
	fovmod_add = GetConVar("cl_tfa_viewmodel_offset_fov")
	fovmod_mult = GetConVar("cl_tfa_viewmodel_multiplier_fov")
end
target_pos = Vector()
target_ang = Vector()

local centered_sprintpos = Vector(0,-1,1)
local centered_sprintang = Vector(-15,0,0)


--[[
Function Name:  Sway
Syntax: self:Sway( ang ).
Returns:  New angle.
Notes:  This is used for calculating the swep viewmodel sway.
Purpose:  Main SWEP function
]]--

local oldang = Angle()
local anga = Angle()
local angb = Angle()
local angc = Angle()
local posfac = 0
local gunswaycvar = GetConVar("cl_tfa_gunbob_intensity")

function SWEP:Sway(pos, ang)
	if self.Owner:IsNPC() then
		return
	end
	if not self:OwnerIsValid() then return pos, ang end
	rft = (SysTime() - (self.LastSysT or SysTime())) * game.GetTimeScale()

	if rft > l_FT() then
		rft = l_FT()
	end

	rft = l_mathClamp(rft, 0, 1 / 30)

	if sv_cheats_cv:GetBool() and host_timescale_cv:GetFloat() < 1 then
		rft = rft * host_timescale_cv:GetFloat()
	end

	self.LastSysT = SysTime()
	ang:Normalize()
	--angrange = our availalbe ranges
	--rate = rate to restore our angle to the proper one
	--fac = factor to multiply by
	--each is interpolated from normal value to the ironsights value using iron sights ratio
	local angrange = l_Lerp(self.IronSightsProgress, 15, 2.5) * gunswaycvar:GetFloat()
	local rate = l_Lerp(self.IronSightsProgress, 15, 30)
	local fac = l_Lerp(self.IronSightsProgress, 0.6, 0.15)
	--calculate angle differences
	anga = self:GetOwner():EyeAngles() - oldang
	oldang = self:GetOwner():EyeAngles()
	angb.y = angb.y + (0 - angb.y) * rft * 5
	angb.p = angb.p + (0 - angb.p) * rft * 5

	--fix jitter
	if angb.y < 50 and anga.y > 0 and anga.y < 25 then
		angb.y = angb.y + anga.y / 5
	end

	if angb.y > -50 and anga.y < 0 and anga.y > -25 then
		angb.y = angb.y + anga.y / 5
	end

	if angb.p < 50 and anga.p < 0 and anga.p < 25 then
		angb.p = angb.p - anga.p / 5
	end

	if angb.p > -50 and anga.p > 0 and anga.p > -25 then
		angb.p = angb.p - anga.p / 5
	end

	--limit range
	angb.p = l_mathClamp(angb.p, -angrange, angrange)
	angb.y = l_mathClamp(angb.y, -angrange, angrange)
	--recover
	angc.y = angc.y + (angb.y / 15 - angc.y) * rft * rate
	angc.p = angc.p + (angb.p / 15 - angc.p) * rft * rate
	--finally, blend it into the angle
	ang:RotateAroundAxis(oldang:Up(), angc.y * 15 * (self.ViewModelFlip and -1 or 1) * fac)
	ang:RotateAroundAxis(oldang:Right(), angc.p * 15 * fac)
	ang:RotateAroundAxis(oldang:Forward(), angc.y * 10 * fac * (self.ViewModelFlip and -1 or 1))
	pos:Add(oldang:Right() * angc.y * posfac * (self.ViewModelFlip and -1 or 1))
	pos:Add(oldang:Up() * -angc.p * posfac)
	--extras
	pos:Add( oldang:Up() * math.sin( math.rad(angc.p) ) * -75 )
	pos:Add( oldang:Right() * math.sin( math.rad(angc.y) ) * 75  * (self.ViewModelFlip and -1 or 1) )

	return pos, util_NormalizeAngles(ang)
end

local gunbob_intensity_cvar = GetConVar("cl_tfa_gunbob_intensity")
local vmfov
local bbvec



------------[[THERMAL SCOPE]]------------


local DefMats = {}
local DefClrs = {}

-- A most likely futile attempt to make things faster
local pairs = pairs
local string = string
local render = render




function SWEP:ClearThermals()
hook.Remove( "RenderScene", "XRay_ApplyMats" )
hook.Remove( "RenderScreenspaceEffects", "XRay_RenderModify" )
		
		-- Set colors and materials back to normal
		for ent,mat in pairs( DefMats ) do
			if ent:IsValid() then
				ent:SetMaterial( mat )
			end
		end
		
		for ent,clr in pairs( DefClrs ) do
			if ent:IsValid() then
				ent:SetColor( clr.r, clr.g, clr.b, clr.a )
			end
		end
		
		-- Clean up our tables- we don't need them anymore.
		DefMats = {}
		DefClrs = {}
end

function SWEP:Think()
	BaseClass.Think(self)
	if stat == TFA.Enum.STATUS_HOLSTER then
		self.ClearThermals()
		issighting = false
		self:SetIronSightsRaw(false)
	end
end

function SWEP:DrawHUD()
-- Inspection Derma
self:DoInspectionDerma()
-- 3D2D Ammo
self:DrawHUDAmmo() --so it's swappable easily
local JAV_NOISE = surface.GetTextureID("models/weapons/iw4/attachments/thermal/noise")
local mymap
local SH = (ScrH()/200)
local SW = (ScrW()/200)
local ST = (SW*SH)
local THERMAL_FRIENDLY = surface.GetTextureID("models/weapons/iw4/attachments/thermal/flare")
local hostilenpcmaps = {
	["gm_lasers"] = true,
	["gm_locals"] = true,
	["gm_raid"] = true,
	["gm_slam"] = true
}
if not mymap then
	mymap = game.GetMap()
end
	if self:GetIronSightsRaw() == true and self:GetStat("ThermalVision") and (self.IronSightsProgress > self:GetStat("ScopeOverlayThreshold")) and self:GetSprinting() == false and stat != TFA.Enum.STATUS_RELOADING and stat != TFA.Enum.STATUS_DRAW then
		hook.Add( "RenderScene", "XRay_ApplyMats", XRayMat ) -- We need to call this every frame in singleplayer, otherwise the server would make the materials reset
		hook.Add( "RenderScreenspaceEffects", "XRay_RenderModify", XRayFX )
		surface.SetDrawColor( 0, 255,0, 255 )
        surface.SetTexture(JAV_NOISE)
        surface.DrawTexturedRect( 0, 0, ScrW(),ScrH() )
		DrawMotionBlur( 0.2, 0.75, 0.01)
		
		--Friendly thermal dot
		for k,v in pairs( ents.GetAll() ) do
			if v:IsNPC() or v:IsPlayer() then
			
				local tarpos = v:GetPos() + v:OBBCenter()
				local post = tarpos:ToScreen()
				local SelfPos=self:GetPos()
				local Distz=((SelfPos.z)-(tarpos.z))
				local Dist = ((SelfPos)-(tarpos))
				local asqrd = ((Dist.y)^2)
				local bsqrd = ((Dist.x)^2)
				local csqrd = (asqrd+bsqrd)
				local Disttot = math.sqrt(csqrd)
				
				local fnd = {}
				fnd.start = self.Owner:GetShootPos()
				fnd.endpos = v:GetPos()
				fnd.filter = self.Owner
				fnd.mins = Vector( 1,1,1 ) 
				fnd.maxs = Vector( 1,1,1 )
				fnd.mask = MASK_SHOT_HULL
				local tr = util.TraceHull(fnd)
				
				if IsFriendEntityName(v:GetClass()) and not hostilenpcmaps[mymap] and IsValid(tr.Entity) then
					
					surface.SetDrawColor( 255, 255, 255, 255 * math.sin(CurTime() * 35) )
					surface.SetTexture(THERMAL_FRIENDLY)
					--print (post.x)
					--print (ST)
					--print (Disttot)
					surface.DrawTexturedRect((post.x - (ST*1.25)) ,(post.y - (ST*2.0)),(ST*2.5),(ST*2.5))
				end
			end
		end
	else
		self.ClearThermals()

	end

end