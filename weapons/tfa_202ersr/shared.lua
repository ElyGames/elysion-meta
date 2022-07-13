-- Variables that are used on both client and server
SWEP.Gun = ("tfa_202ersr")					-- must be the name of your swep
if (GetConVar(SWEP.Gun.."_allowed")) != nil then
	if not (GetConVar(SWEP.Gun.."_allowed"):GetBool()) then SWEP.Base = "tfa_blacklisted" SWEP.PrintName = SWEP.Gun return end
end
SWEP.Category				= "TFA Deus Ex"
SWEP.Author				= "Haz_Mat_Wolf"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Longsword Eraser"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 4				-- Slot in the weapon selection menu
SWEP.SlotPos				= 75		-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
SWEP.UseHands = true

SWEP.ViewModelFOV		= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/tfa_haz_mat_wolf/c_202ersr.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/tfa_haz_mat_wolf/sniper.mdl"	-- Weapon world model
SWEP.ShowWorldModel         = true
SWEP.Base				= "tfa_3dscoped_base"
SWEP.Scoped = false
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("TFA_202ERASER1")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 160 			-- This is in Rounds Per Minute
SWEP.DamageType             = DMG_DISSOLVE
SWEP.Primary.ClipSize			= 6		-- Size of a clip
SWEP.Primary.DefaultClip		= 30		-- Bullets you start with
SWEP.Primary.KickUp				= 0.7		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "SniperPenetratedRound"

SWEP.Secondary.ScopeZoom = 20
--SWEP.Secondary.IronFOV			= 60		-- How much you 'zoom' in. Less is more! 	
 
SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
 
SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 500	-- Base damage per bullet
SWEP.Primary.Spread		= .08	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- Ironsight accuracy, should be the same for shotguns
SWEP.IronSightsSensitivity = 0.3

SWEP.BoltAction = false
--SWEP.BoltAction		= false

SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= true
SWEP.Secondary.UseAimpoint		= false
SWEP.Secondary.UseMatador		= false

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-2.184, -0.829, -0.51)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(1.36, 0.66, 1.09)
SWEP.RunSightsAng = Vector(-25.306, 30.747, -16.382)
SWEP.InspectPos = Vector(6.218, -19.901, -10.547)
SWEP.InspectAng = Vector(61.729, 37.513, 6.436)
SWEP.DisableIdleAnimations = true
SWEP.InspectionLoop = false --Setting false will cancel inspection once the animation is done.  CS:GO style.
SWEP.Primary.Range = 0.8/0.305*16*1000
SWEP.Primary.SpreadIncrement = 0.5
SWEP.Primary.SpreadRecovery = 2
SWEP.Primary.SpreadMultiplierMax = 2.5
 
SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -2.5,
        Right = 1.5,
        Forward = 6,
        },
        Ang = {
        Up = 0,
        Right = 3,
        Forward = 178
        },
		Scale = 1
}
 
 
SWEP.RTMaterialOverride = 1

SWEP.RTScopeOffset = {-3.7,-1.5}
SWEP.RTScopeScale = {1,1}
SWEP.ScopeAngleTransforms = {
	{"P",90.00},
	{"Y",0.0}
}

--[[
	
local wepcol = Color(0,0,0,255)

local cd = {}

SWEP.RTMaterialOverride = 1

SWEP.RTOpaque = true

SWEP.RTCode = function( self, rt, scrw, scrh )
	
	if !self.myshadowmask then self.myshadowmask = Material("vgui/scope_shadowmask") end
	if !self.myreticule then self.myreticule = Material("scope/gdcw_scopesightonly") end

	local vm = self.Owner:GetViewModel()
	
	if !self.LastOwnerPos then self.LastOwnerPos = self.Owner:GetShootPos() end
	
	local owoff = self.Owner:GetShootPos() - self.LastOwnerPos
	
	self.LastOwnerPos = self.Owner:GetShootPos()
	

	
	local att = vm:GetAttachment(3)
	if !att then return end
	
	local pos = att.Pos - owoff
	
	local scrpos = pos:ToScreen()
	
	scrpos.x = scrpos.x - scrw/2 - scrw/240
	scrpos.y = scrpos.y - scrh/2 - scrh/280
	
	scrpos.x = scrpos.x * ( 2 - self.CLIronSightsProgress*1.5 )
	scrpos.y = scrpos.y * ( 2 - self.CLIronSightsProgress*1.5 )
	
	if !self.scrpos then self.scrpos = scrpos end
	
	self.scrpos.x = math.Approach( self.scrpos.x, scrpos.x, (scrpos.x-self.scrpos.x)*FrameTime()*7 )
	self.scrpos.y = math.Approach( self.scrpos.y, scrpos.y, (scrpos.y-self.scrpos.y)*FrameTime()*7 )
	
	scrpos = self.scrpos
	
	render.OverrideAlphaWriteEnable( true, true)
	surface.SetDrawColor(color_white)
	surface.DrawRect(-512,-512,1024,1024)
	render.OverrideAlphaWriteEnable( true, true)
	
	local ang = EyeAngles()
	
	local AngPos = self.Owner:GetViewModel():GetAttachment(1)
	
	if AngPos then
	
		ang = AngPos.Ang
		
		ang:RotateAroundAxis(ang:Right(),89.95)
		ang:RotateAroundAxis(ang:Up(), 0.2)
	
	end
	
	cd.angles = ang
	cd.origin = self.Owner:GetShootPos()
	
	cd.x = 0
	cd.y = 0
	cd.w = 512
	cd.h = 256
	cd.fov = 3
	cd.drawviewmodel = false
	cd.drawhud = false
	
	render.Clear( 0, 0, 0, 255, true, true )
	
	render.SetScissorRect(0,0,512,256,true)
	if self.CLIronSightsProgress>0.01 then
		render.RenderView(cd)
	end
	render.SetScissorRect(0,0,512,256,false)
	
	render.OverrideAlphaWriteEnable( false, true)
	
	
	cam.Start2D()
		draw.NoTexture()
		surface.SetMaterial(self.myshadowmask)
		surface.SetDrawColor(color_white)
		surface.DrawTexturedRect(scrpos.x,scrpos.y,512,256)
		surface.SetMaterial(self.myreticule)
		surface.DrawTexturedRect(0,0,512,256)		
		surface.SetDrawColor(color_black)
		draw.NoTexture()
		surface.DrawRect(scrpos.x-2048, -1024, 2048, 2048)
		surface.DrawRect(scrpos.x+512, -1024, 2048, 2048)
		surface.DrawRect(-1024, scrpos.y-2048, 2048, 2048)
		surface.DrawRect(-1024, scrpos.y+256, 2048, 2048)
		surface.SetDrawColor(ColorAlpha(color_black,255-255*( math.Clamp( self.CLIronSightsProgress-0.75,0,0.25 )*4 ) ) )
		surface.DrawRect(-1024, -1024,2048,2048)
	cam.End2D()
	
end

SWEP.IronSightsSensitivity = 0.25

]]--

SWEP.FireModeName = "Bolt-Action"
SWEP.DisableChambering = true

SWEP.Skins = { }

SWEP.AutoDetectMuzzleAttachment = true --For multi-barrel weapons, detect the proper attachment?

SWEP.MoveSpeed = 210/250 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = 100/250 --Multiply the player's movespeed by this.