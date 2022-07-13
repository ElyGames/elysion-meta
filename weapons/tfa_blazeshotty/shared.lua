SWEP.Category               = "TFA Shotguns"
SWEP.Author             = "Sluggies"
SWEP.Contact                = ""
SWEP.Purpose                = "set shit on fire fam"
SWEP.Instructions               = "Shoot"
SWEP.MuzzleAttachment           = "1"   -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.PrintName              = "NVC Flare Shotgun"       -- Weapon name (Shown on HUD)  
SWEP.Slot               = 3             -- Slot in the weapon selection r
SWEP.SlotPos                = 1000      -- Position in the slot
SWEP.DrawAmmo               = true      -- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox          = false     -- Should draw the weapon info box
SWEP.BounceWeaponIcon           =   false   -- Should the weapon icon bounce?
SWEP.DrawCrosshair          = true      -- set false if you want no crosshair
SWEP.Weight             = 30            -- rank relative to other weapons. bigger is better
SWEP.AutoSwitchTo           = true      -- Auto switch to if we pick it up
SWEP.AutoSwitchFrom         = true      -- Auto switch from if you pick up a better weapon
SWEP.HoldType               = "shotgun"
SWEP.Shotgun                = true
SWEP.ViewModelFOV           = 75
SWEP.ViewModelFlip          = true
SWEP.ViewModel              = "models/weapons/c_shot_blazeshotty.mdl"   -- Weapon view model
SWEP.WorldModel             = "models/weapons/w_shot_m3super90.mdl" -- Weapon world model
SWEP.Base                   = "tfa_gun_base"
SWEP.Spawnable              = true
SWEP.UseHands = true
SWEP.AdminSpawnable         = true
SWEP.Primary.Sound          = Sound("TFA_NVC_SHOTTY.1")      -- script that calls the primary fire sound
SWEP.Primary.RPM                = 80        -- This is in Rounds Per Minute
SWEP.Primary.ClipSize           = 6         -- Size of a clip
SWEP.Primary.DefaultClip            = 15    -- Default number of bullets in a clip
SWEP.Primary.KickUp         = 2.05               -- Maximum up recoil (rise)
SWEP.Primary.KickDown           = 1.325       -- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal         = 0.074  -- Maximum up recoil (stock)
SWEP.Primary.Automatic          = false     -- Automatic/Semi Auto
SWEP.Primary.Ammo           = "buckshot"
SWEP.Secondary.IronFOV          = 75        -- How much you 'zoom' in. Less is more!
SWEP.ShellTime          = .45
SWEP.Primary.NumShots   = 9     -- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage     = 15    -- Base damage per bullet
SWEP.Primary.Spread     = .080  -- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.IronSightsMoveSpeed = .70
SWEP.FiresUnderwater = false
SWEP.DamageType = bit.bor(DMG_DIRECT, DMG_BURN)	 --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.
SWEP.Primary.DamageTypeHandled = true
SWEP.DisableChambering = true -- Disable round-in-the-chamber
SWEP.Primary.IronAccuracy = .080    -- Ironsight accuracy, should be the same for shotguns


SWEP.Tracer				= 4		--Bullet tracer.  TracerName overrides this.
								--There is a nice example at https://github.com/garrynewman/garrysmod/blob/master/garrysmod/gamemodes/base/entities/effects/tooltracer.lua
SWEP.TracerCount 		= 1 	--0 disables, otherwise, 1 in X chance

SWEP.IronSightsPos = Vector(7.879, 0.15, 0.995) * 1.25
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.RunSightsPos = Vector(-5.829, -12.462, -0.603)
SWEP.RunSightsAng = Vector(0, -68.945, -0.5)

SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		{time = 10 / 30, type = "sound", value = "TFA_NVC_SHOTTY.Pump"},
	},
	[ACT_VM_RELOAD] = {
		{time = 0, type = "sound", value = "TFA_NVC_SHOTTY.InsertShell"},
	},
	[ACT_SHOTGUN_RELOAD_FINISH] = {
		{time = 12 / 40, type = "sound", value = "TFA_NVC_SHOTTY.Pump"},
	},
}

if TFA and TFA.AddFireSound then
	TFA.AddFireSound("TFA_NVC_SHOTTY.1", "weapons/nvc_flare_shotty/m3-1.ogg", false, ")")
end

if TFA and TFA.AddWeaponSound then
	TFA.AddWeaponSound("TFA_NVC_SHOTTY.InsertShell", "weapons/nvc_flare_shotty/m3_insertshell.ogg", "")
	TFA.AddWeaponSound("TFA_NVC_SHOTTY.Pump", "weapons/nvc_flare_shotty/m3_pump.ogg", "")
end

--[[ATTACHMENTS]]--

SWEP.Attachments = {
	[1] = { offset = { 0, 0 }, atts = { "ins2_br_heavy" }, order = 1 },
	[2] = { offset = { 0, 0 }, atts = { "sg_blastmodule","sg_focusmodule" }, order = 2 },
}
