SWEP.Base				= "tfa_owtst_base"
SWEP.Category				= "TFA Overwatch" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer = "Talon" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= "TFA" --Author Tooltip
SWEP.Contact				= "" --Contact Info Tooltip
SWEP.Purpose				= "" --Purpose Tooltip
SWEP.Instructions				= "" --Instructions Tooltip
SWEP.Spawnable				= true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable			= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair			= true		-- Draw the crosshair?
SWEP.DrawCrosshairIS = false --Draw the crosshair in ironsights?
SWEP.PrintName				= "Widow's Kiss"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 2				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 73			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter if enabled in the GUI.
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.Weight				= 30			-- This controls how "good" the weapon is for autopickup.

--[[WEAPON HANDLING]]--

--Firing related
SWEP.Primary.Sound 			= Sound("TFA_OW_WKISS.1")				-- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound 			= nil				-- This is the sound of the weapon, when silenced.
SWEP.Primary.PenetrationMultiplier = 1 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage		= 55					-- Damage, in standard damage points.
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.DamageType = bit.bor(DMG_AIRBOAT,DMG_BULLET) --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.
SWEP.Primary.NumShots	= 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic			= true					-- Automatic/Semi Auto
SWEP.Primary.RPM				= 10*60					-- This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Semi				= nil					-- RPM for semi-automatic or burst fire.  This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Burst				= nil					-- RPM for burst fire, overrides semi.  This is in Rounds Per Minute / RPM
SWEP.Primary.BurstDelay				= nil					-- Delay between bursts, leave nil to autocalculate
SWEP.FiresUnderwater = false

SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?

-- Selective Fire Stuff

SWEP.SelectiveFire		= false --Allow selecting your firemode?
SWEP.DisableBurstFire	= false --Only auto/single?
SWEP.OnlyBurstFire		= false --No auto, only burst/single?
SWEP.DefaultFireMode 	= "" --Default to auto or whatev
SWEP.FireModeName = nil --Change to a text value to override it

--Ammo Related

SWEP.Primary.ClipSize			= 30					-- This is the size of a clip
SWEP.Primary.DefaultClip			= 120					-- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo			= "ar2"					-- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.DisableChambering = true --Disable round-in-the-chamber

--Recoil Related
SWEP.Primary.KickUp			= 0.3					-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 0.2					-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.2					-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.1 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

--Firing Cone Related

SWEP.Primary.Spread		= .02					--This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .001	-- Ironsight accuracy, should be the same for shotguns

SWEP.Primary.SpreadMultiplierMax = 3 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 1/2 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 3 --How much the spread recovers, per second.

--Range Related
SWEP.Primary.Range = -1 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = -1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.


--Penetration Related

SWEP.MaxPenetrationCounter=4 --The maximum number of ricochets.  To prevent stack overflows.

--Misc
SWEP.IronRecoilMultiplier=0.5 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchRecoilMultiplier=0.65  --Multiply recoil by this factor when we're crouching.  This is proportional, not inversely.
SWEP.JumpRecoilMultiplier=1.3  --Multiply recoil by this factor when we're crouching.  This is proportional, not inversely.
SWEP.WallRecoilMultiplier=1.1  --Multiply recoil by this factor when we're changing state e.g. not completely ironsighted.  This is proportional, not inversely.
SWEP.ChangeStateRecoilMultiplier=1.3  --Multiply recoil by this factor when we're crouching.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier=0.5--Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
SWEP.ChangeStateAccuracyMultiplier=1.5 --Less is more.  A change of state is when we're in the progress of doing something, like crouching or ironsighting.  Accuracy * 2 = Half as accurate.  Accuracy * 5 = 1/5 as accurate
SWEP.JumpAccuracyMultiplier=2--Less is more.  Accuracy * 2 = Half as accurate.  Accuracy * 5 = 1/5 as accurate
SWEP.WalkAccuracyMultiplier=1.35--Less is more.  Accuracy * 2 = Half as accurate.  Accuracy * 5 = 1/5 as accurate
SWEP.IronSightTime = 0.35 --The time to enter ironsights/exit it.
SWEP.NearWallTime = 0.25 --The time to pull up  your weapon or put it back down
SWEP.ToCrouchTime = 0.05 --The time it takes to enter crouching state
SWEP.WeaponLength = 40 --Almost 3 feet Feet.  This should be how far the weapon sticks out from the player.  This is used for calculating the nearwall trace.
SWEP.MoveSpeed = 1 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = 0.8 --Multiply the player's movespeed by this when sighting.
SWEP.SprintFOVOffset = 3.75 --Add this onto the FOV when we're sprinting.

--[[PROJECTILES]]--

SWEP.ProjectileEntity = nil --Entity to shoot
SWEP.ProjectileVelocity = 0 --Entity to shoot's velocity
SWEP.ProjectileModel = nil --Entity to shoot's model

--[[VIEWMODEL]]--

SWEP.ViewModel			= "models/weapons/tfa_ow/c_widowskiss.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 65		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= false		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.MaterialTable = nil --Make sure the viewmodel and the worldmodel have the same material ids.  Next, fill this in with your desired submaterials.
SWEP.UseHands = true --Use gmod c_arms system.
SWEP.VMPos = Vector(0,0,0) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0,0,0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.

SWEP.VMBodyGroups = nil --{
	--[0] = 1,
	--[1] = 4,
	--[2] = etc.
--}

--[[WORLDMODEL]]--

SWEP.WorldModel			= "models/weapons/tfa_ow/w_widowskiss.mdl" -- Weapon world model path

SWEP.WMBodyGroups = nil--{
	--[0] = 1,
	--[1] = 4,
	--[2] = etc.
--}

SWEP.HoldType 				= "ar2"		-- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

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

SWEP.ThirdPersonReloadDisable=false --Disable third person reload?  True disables.

--[[SCOPES]]--

SWEP.IronSightsSensitivity = 1 --Useful for a RT scope.  Change this to 0.25 for 25% sensitivity.  This is if normal FOV compenstaion isn't your thing for whatever reason, so don't change it for normal scopes.
SWEP.BoltAction			= false  --Unscope/sight after you shoot?
SWEP.Scoped				= false  --Draw a scope overlay?

SWEP.ScopeOverlayThreshold = 0.99 --Percentage you have to be sighted in to see the scope.
SWEP.BoltTimerOffset = 0.25 --How long you stay sighted in after shooting, with a bolt action.

SWEP.ScopeScale = 0.5 --Scale of the scope overlay
SWEP.ReticleScale = 0.7 --Scale of the reticle overlay

--GDCW Overlay Options.  Only choose one.

SWEP.Secondary.UseACOG			= false	 --Overlay option
SWEP.Secondary.UseMilDot			= false			 --Overlay option
SWEP.Secondary.UseSVD			= false		 --Overlay option
SWEP.Secondary.UseParabolic		= false		 --Overlay option
SWEP.Secondary.UseElcan			= false	 --Overlay option
SWEP.Secondary.UseGreenDuplex		= false		 --Overlay option

SWEP.Secondary.ScopeTable =	{
	scopetex = surface and surface.GetTextureID("vgui/widowskiss_scope2") or 0
}

--[[SHOTGUN CODE]]--

SWEP.Shotgun = false --Enable shotgun style reloading.

SWEP.ShellTime			= .35 -- For shotguns, how long it takes to insert a shell.

--[[SPRINTING]]--

SWEP.RunSightsPos = Vector(2, -2, -1)
SWEP.RunSightsAng = Vector(-10.865, 20.738, -20.478)

--[[IRONSIGHTS]]--

SWEP.data 				= {}
SWEP.data.ironsights			= 1 --Enable Ironsights
SWEP.Secondary.IronFOV			= 30					-- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.

SWEP.IronSightsPos = Vector (0,-2,0) --Change this, using SWEP Creation Kit preferably
SWEP.IronSightsAng = Vector (0,0,0) --Change this, using SWEP Creation Kit preferably

--[[INSPECTION]]--

--SWEP.InspectPos = Vector(0,0,0) --Replace with a vector, in style of ironsights position, to be used for inspection
--SWEP.InspectAng = Vector(0,0,0) --Replace with a vector, in style of ironsights angle, to be used for inspection

--[[VIEWMODEL ANIMATION HANDLING]]--

SWEP.ShootWhileDraw=false --Can you shoot while draw anim plays?
SWEP.AllowReloadWhileDraw=false --Can you reload while draw anim plays?
SWEP.SightWhileDraw=false --Can we sight in while the weapon is drawing / the draw anim plays?
SWEP.AllowReloadWhileHolster=true --Can we interrupt holstering for reloading?
SWEP.ShootWhileHolster=true --Cam we interrupt holstering for shooting?
SWEP.SightWhileHolster=false --Cancel out "iron"sights when we holster?
SWEP.UnSightOnReload=true --Cancel out ironsights for reloading.
SWEP.AllowReloadWhileSprinting=false --Can you reload when close to a wall and facing it?
SWEP.AllowReloadWhileNearWall=false --Can you reload when close to a wall and facing it?
SWEP.SprintBobMult=1.5 -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this > 1 probably for sprinting.
SWEP.IronBobMult=0  -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this < 1 for sighting, 0 to outright disable.
SWEP.IronBobMultWalk=0.2  -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this < 1 for sighting, 0 to outright disable.
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS!!!!11111oneONEELEVEN


--[[VIEWMODEL BLOWBACK]]--

SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "ShellEject"


--[[VIEWMODEL PROCEDURAL ANIMATION]]--

SWEP.DoProceduralReload = false--Animate first person reload using lua?
SWEP.ProceduralReloadTime = 1 --Procedural reload time?

--[[HOLDTYPES]]--

SWEP.IronSightHoldTypeOverride=""  --This variable overrides the ironsights holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
SWEP.SprintHoldTypeOverride=""  --This variable overrides the sprint holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.

--[[ANIMATION]]--

SWEP.ForceDryFireOff = true --Disables dryfire.  Set to false to enable them.
SWEP.DisableIdleAnimations = false --Disables idle animations.  Set to false to enable them.
SWEP.ForceEmptyFireOff = true --Disables empty fire animations.  Set to false to enable them.

--If you really want, you can remove things from SWEP.actlist and manually enable animations and set their lengths.

SWEP.SequenceEnabled = {} --Self explanitory.  This can forcefully enable or disable a certain ACT_VM
SWEP.SequenceLength = {}  --This controls the length of a certain ACT_VM
SWEP.SequenceLengthOverride={} --Override this if you want to change the length of a sequence but not the next idle

--[[EFFECTS]]--

--Muzzle Smoke

SWEP.SmokeParticles = { pistol = "smoke_trail_controlled",  --These are particle effects INSIDE a pcf file, not PCF files, that are played when you shoot.
	smg = "smoke_trail_tfa",
	grenade = "smoke_trail_tfa",
	ar2 = "smoke_trail_tfa",
	shotgun = "smoke_trail_wild",
	rpg = "smoke_trail_tfa",
	physgun = "smoke_trail_tfa",
	crossbow = "smoke_trail_tfa",
	melee = "smoke_trail_tfa",
	slam = "smoke_trail_tfa",
	normal = "smoke_trail_tfa",
	melee2 = "smoke_trail_tfa",
	knife = "smoke_trail_tfa",
	duel = "smoke_trail_tfa",
	camera = "smoke_trail_tfa",
	magic = "smoke_trail_tfa",
	revolver = "smoke_trail_tfa",
	silenced = "smoke_trail_controlled"
}

--Muzzle Flash

SWEP.MuzzleAttachment			= "1" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
--SWEP.MuzzleAttachmentRaw = 1 --This will override whatever string you gave.  This is the raw attachment number.  This is overridden or created when a gun makes a muzzle event.
SWEP.ShellAttachment			= "2" 		-- Should be "2" for CSS models or "shell" for hl2 models

SWEP.DoMuzzleFlash = true --Do a muzzle flash?
SWEP.CustomMuzzleFlash = true --Disable muzzle anim events and use our custom flashes?
SWEP.AutoDetectMuzzleAttachment = false --For multi-barrel weapons, detect the proper attachment?
SWEP.MuzzleFlashEffect = nil --Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.

--Shell eject override

SWEP.LuaShellEject = true
SWEP.LuaShellEjectDelay = 0
SWEP.LuaShellEffect = "RifleShellEject" --Defaults to blowback

--Tracer Stuff

SWEP.Tracer				= 0		--Bullet tracer.  TracerName overrides this.
SWEP.TracerName 		= nil 	--Change to a string of your tracer name.  Can be custom.
								--There is a nice example at https://github.com/garrynewman/garrysmod/blob/master/garrysmod/gamemodes/base/entities/effects/tooltracer.lua
SWEP.TracerCount 		= 3 	--0 disables, otherwise, 1 in X chance


SWEP.TracerLua 			= false --Use lua effect, TFA Muzzle syntax.  Currently obsolete.
SWEP.TracerDelay		= 0.01 --Delay for lua tracer effect

--Impact Effects

SWEP.ImpactEffect = nil--Impact Effect
SWEP.ImpactDecal = nil--Impact Decal

--[[RENDER TARGET]]--

SWEP.RTMaterialOverride = nil -- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.

SWEP.RTOpaque = false -- Do you want your render target to be opaque?

SWEP.RTCode = function( self ) --This is the function to draw onto your rendertarget

	return

end

--[[AKIMBO]]--

SWEP.Akimbo = false --Akimbo gun?  Alternates between primary and secondary attacks.
SWEP.AnimCycle = 0 -- Start on the right

--[[TTT]]--

local gm = engine.ActiveGamemode()
if string.find(gm,"ttt") or string.find(gm,"terrorist") then
	SWEP.Kind = WEAPON_HEAVY
	SWEP.AutoSpawnable = false
	SWEP.AllowDrop = true
	SWEP.AmmoEnt = "item_ammo_smg1_ttt"
end


--[[MISC INFO FOR MODELERS]]--

--[[

Used Animations (for modelers):

ACT_VM_DRAW - Draw
ACT_VM_DRAW_EMPTY - Draw empty
ACT_VM_DRAW_SILENCED - Draw silenced, overrides empty

ACT_VM_IDLE - Idle
ACT_VM_IDLE_SILENCED - Idle empty, overwritten by silenced
ACT_VM_IDLE_SILENCED - Idle silenced

ACT_VM_PRIMARYATTACK - Shoot
ACT_VM_PRIMARYATTACK_EMPTY - Shoot last chambered bullet
ACT_VM_PRIMARYATTACK_SILENCED - Shoot silenced, overrides empty
ACT_VM_PRIMARYATTACK_1 - Shoot ironsights, overriden by everything besides normal shooting
ACT_VM_DRYFIRE - Dryfire

ACT_VM_RELOAD - Reload / Tactical Reload / Insert Shotgun Shell
ACT_SHOTGUN_RELOAD_START - Start shotgun reload, unless ACT_VM_RELOAD_EMPTY is there.
ACT_SHOTGUN_RELOAD_FINISH - End shotgun reload.
ACT_VM_RELOAD_EMPTY - Empty mag reload, chambers the new round.  Works for shotguns too, where applicable.
ACT_VM_RELOAD_SILENCED - Silenced reload, overwrites all


ACT_VM_HOLSTER - Holster
ACT_VM_HOLSTER_SILENCED - Holster empty, overwritten by silenced
ACT_VM_HOLSTER_SILENCED - Holster silenced

]]--

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

--Convar support

SWEP.ConDamageMultiplier = 1

--Sound Events

SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		{ ['time'] = 0.0, ['type'] = "sound", ['value'] = Sound("TFA_OW_WKISS.Deploy") }
	},
	[ACT_VM_RELOAD] = {
		{ ['time'] = 0.0, ['type'] = "sound", ['value'] = Sound("TFA_OW_WKISS.DoorRelease") },
		{ ['time'] = 0.265, ['type'] = "sound", ['value'] = Sound("TFA_OW_WKISS.MagOut") },
		{ ['time'] = 0.5525, ['type'] = "sound", ['value'] = Sound("TFA_OW_WKISS.MagIn") },
		{ ['time'] = 0.82, ['type'] = "sound", ['value'] = Sound("TFA_OW_WKISS.DoorLock") }
	}
}

SWEP.IronInSound = "TFA_OW_WKISS.ScopeIn"
SWEP.IronOutSound = "TFA_OW_WKISS.ScopeOut"

--Widow's Kiss Vars

SWEP.ChargeCrosshair =	{
	[1] = surface and surface.GetTextureID("vgui/widowskiss_scopecenter_1") or 0,
	[2] = surface and surface.GetTextureID("vgui/widowskiss_scopecenter_2") or 0,
	[3] = surface and surface.GetTextureID("vgui/widowskiss_scopecenter_3") or 0,
	[4] = surface and surface.GetTextureID("vgui/widowskiss_scopecenter_4") or 0
}

SWEP.ChargeCrosshairOL =	{
	[1] = surface and surface.GetTextureID("vgui/widowskiss_scopecenter_1_ol") or 0,
	[2] = surface and surface.GetTextureID("vgui/widowskiss_scopecenter_2_ol") or 0,
	[3] = surface and surface.GetTextureID("vgui/widowskiss_scopecenter_3_ol") or 0,
	[4] = surface and surface.GetTextureID("vgui/widowskiss_scopecenter_4_ol") or 0
}

SWEP.ChargeTime = 1.0
SWEP.ShootChargeDelay = 0.5

SWEP.Primary.KickUp_Charged = 1
SWEP.Primary.Damage_Scoped = 30
SWEP.Primary.Damage_Charged = 150
SWEP.Primary.Sound_Scoped = Sound("TFA_OW_WKISS.2")
SWEP.Primary.RPM_Scoped = 120


function SWEP:CanInterruptShooting()
	return true
end


SWEP.ChargeSound = "TFA_OW_WKISS.ScopeCharge"


SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, Hybrid = stop mdl animation, Lua = hybrid but continue idle

SWEP.IronAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_DEPLOY, --Number for act, String/Number for sequence
		["transition"] = true
	}, --Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_IDLE_DEPLOYED
	}, --Looping Animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_UNDEPLOY, --Number for act, String/Number for sequence
		["transition"] = true
	}
}

--Custom Code
local RealFrameTime
local l_RT = RealTime
local lastkiss
local sv_cheats_cv = GetConVar("sv_cheats")
local host_timescale_cv = GetConVar("host_timescale")
local isscoped = false

function SWEP:WidowsKiss()
	--Proper frametime
	if not lastkiss then
		lastkiss = l_RT()
	end

	tsv = 1

	if sv_cheats_cv:GetBool() then
		tsv = tsv * host_timescale_cv:GetFloat()
	end

	tsv = tsv * game.GetTimeScale()
	RealFrameTime = (l_RT() - lastkiss) * tsv
	lastkiss = l_RT()

	if self:GetNW2Float("Charge") == nil then
		self:SetNW2Float("Charge", 0)
	end

	self.OldCharge = self.OldCharge or self:GetNW2Float("Charge")

	if self.DefaultDamage == nil then
		self.DefaultDamage = self.Primary.Damage
	end

	if self.DefaultKickUp == nil then
		self.DefaultKickUp = self.Primary.KickUp
	end

	if self.DefaultRPM == nil then
		self.DefaultRPM = self.Primary.RPM
	end

	if self.DefaultSound == nil then
		self.DefaultSound = self.Primary.Sound
	end

	isscoped = self:IsCurrentlyScoped()

	if isscoped then
		local cancharge = not ( self:GetStatus() == TFA.Enum.STATUS_SHOOTING )

		if cancharge then
			local oc = self:GetNW2Float("Charge")
			self:SetNW2Float("Charge", math.Approach(self:GetNW2Float("Charge"), 1, RealFrameTime / self.ChargeTime))

			if not self.HasPlayedChargeSound then
				if not ( game.SinglePlayer() and CLIENT ) then
					self:EmitSound(self.ChargeSound)
				end
				self.HasPlayedChargeSound = true
			end
			--print("stop")
		else
			if self:GetNW2Float("Charge") > 0 then
				if SERVER or game.SinglePlayer() then
					self:SetNW2Float("Charge", 0)
				end

				if IsFirstTimePredicted() and (not game.SinglePlayer() or SERVER) then
					self:StopSound(self.ChargeSound)
				end
				self.HasPlayedChargeSound = false
			end
		end

		self.Primary.Damage = Lerp(self:GetNW2Float("Charge"), self.Primary.Damage_Scoped, self.Primary.Damage_Charged)
		self.Primary.RPM = self.Primary.RPM_Scoped

		if self:GetNW2Float("Charge") > 0.5 then
			self.Primary.Sound = self.Primary.Sound_Scoped
		else
			self.Primary.Sound = self.DefaultSound
		end

		self.Primary.KickUp = Lerp(self:GetNW2Float("Charge"), self.DefaultKickUp, self.Primary.KickUp_Charged)
		self.Primary.KickDown = self.Primary.KickUp
		self.Primary.Automatic = false
	else
		if self:GetNW2Float("Charge") > 0 then
			self:SetNW2Float("Charge", 0)
			self:StopSound(self.ChargeSound)
		end

		self.Primary.Damage = self.DefaultDamage
		self.Primary.RPM = self.DefaultRPM
		self.Primary.Sound = self.DefaultSound
		self.Primary.KickUp = self.DefaultKickUp
		self.Primary.KickDown = self.Primary.KickUp
		self.Primary.Automatic = true
		self.HasPlayedChargeSound = false
	end
	if self.OldCharge ~= self:GetNW2Float("Charge") then
		self:ClearStatCache()
	end
	self.OldCharge = self:GetNW2Float("Charge")
end

DEFINE_BASECLASS(SWEP.Base)

--[[
SWEP.StatCache_Blacklist = BaseClass.StatCache_Blacklist or {
	["ViewModelBoneMods"] = true,
	["MaterialTable"] = true,
	["Bodygroups_V"] = true,
	["Bodygroups_W"] = true,
	["Skin"] = true
}
]]--

function SWEP:Think2()
	BaseClass.Think2(self)
	self:WidowsKiss()
end

SWEP.lastacttime = -1

function SWEP:PrimaryAttack()
	if self.IronSightsProgress < 0.1 or self:IsCurrentlyScoped() then
		if self:CanPrimaryAttack() then
			self:SetNW2Float("Charge",0)
			self.HasPlayedChargeSound = false
		end
		return BaseClass.PrimaryAttack(self)
	end
end

function SWEP:TakePrimaryAmmo( x, y )
	if x < 0 or y then
		BaseClass.TakePrimaryAmmo(self,x,y)
		return
	end
	if self:IsCurrentlyScoped() then
		BaseClass.TakePrimaryAmmo(self,3)
	else
		BaseClass.TakePrimaryAmmo(self,1)
	end
end

function SWEP:ChooseShootAnim()
	if self:IsCurrentlyScoped() then
		self:SetNextIdleAnim(-1)
		return
	end
	return	BaseClass.ChooseShootAnim(self)
end

local quad, innercrossh
function SWEP:DrawHUD()
	BaseClass.DrawHUD(self)

	if self:GetIronSights() and self.IronSightsProgress > self.ScopeOverlayThreshold then
		self.DrawCrosshair = false
		local w, h = ScrW(), ScrH()
		local tbl = self.Secondary.ScopeTable

		for k, v in pairs(tbl) do
			surface.SetTexture(v)
			surface.SetDrawColor(color_white)
			surface.DrawTexturedRect(0, 0, w, h)
		end
		innercrossh = h / 8

		quad = {
			texture = self.ChargeCrosshairOL[4],
			color = Color(255, 255, 255, 255),
			x = w / 2 - innercrossh / 2,
			y = h / 2 + h / 6 - 32 / 2 - 32 - innercrossh,
			w = innercrossh,
			h = innercrossh
		}

		draw.TexturedQuad(quad)

		if self:GetNW2Float("Charge") >= 0.25 then

			quad = {
				texture = self.ChargeCrosshair[math.floor(self:GetNW2Float("Charge") / 0.25)],
				color = Color(255, 255, 255, 255),
				x = w / 2 - innercrossh / 2,
				y = h / 2 + h / 6 - 32 / 2 - 32 - innercrossh,
				w = innercrossh,
				h = innercrossh
			}

			draw.TexturedQuad(quad)
		end
		draw.SimpleText(math.Round(self:GetNW2Float("Charge") * 100) .. "%", "DermaLarge", w / 2, h / 2 + h / 6 - 32 / 2, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)

		return true
	end
end

local l_Lerp = Lerp

function SWEP:TranslateFOV(fov)
	if self.Callback.TranslateFOV then
		local val = self.Callback.TranslateFOV(self, fov)
		if val then return val end
	end

	local nfov = l_Lerp(math.max(self.IronSightsProgress - self.ScopeOverlayThreshold, 0) / (1 - self.ScopeOverlayThreshold), fov, fov * (self.Secondary.IronFOV / 90))

	return l_Lerp(self.SprintProgress, nfov, nfov + self.SprintFOVOffset)
end

SWEP.Secondary.BashDelay = 0.0

function SWEP:IsCurrentlyScoped()
	return l_Lerp(math.max(self.IronSightsProgress - self.ScopeOverlayThreshold, 0) / (1 - self.ScopeOverlayThreshold), 0, 1) > 0.1
end

function SWEP:Deploy()
	BaseClass.Deploy(self)
	self.HasPlayedChargeSound = false
	return true
end