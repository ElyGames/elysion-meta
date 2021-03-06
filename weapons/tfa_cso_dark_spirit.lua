SWEP.Base = "tfa_melee_base"
SWEP.Category = "TFA CS:O Melees"
SWEP.PrintName = "Twin Shadow Axes"
SWEP.Author				= "Kamikaze" --Author Tooltip
SWEP.Type	= "Epic grade melee weapon"
SWEP.ViewModel = "models/weapons/tfa_cso/c_dark_spirit.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_dark_spirit.mdl"
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 85
SWEP.UseHands = true
SWEP.HoldType = "melee"
SWEP.DrawCrosshair = true
SWEP.Primary.Knockback = 0 

SWEP.Primary.Directional = false

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.DisableIdleAnimations = false

SWEP.Secondary.CanBash = false

--[[INSPECTION]]--

SWEP.InspectPos = Vector (0,0,0) --Replace with a vector, in style of ironsights position, to be used for inspection
SWEP.InspectAng = Vector (0,0,0) --Replace with a vector, in style of ironsights angle, to be used for inspection
SWEP.InspectionLoop = true --Setting false will cancel inspection once the animation is done.  CS:GO style.


-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Heavy Sashimis"
--SWEP.NZPaPReplacement 	= "tfa_cso_dualsword"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.
SWEP.PaPMats			= {}

SWEP.Precision = 50
SWEP.Secondary.MaxCombo = -1
SWEP.Primary.MaxCombo = -1

SWEP.WElements = {
    ["dark_spirit"] = { type = "Model", model = "models/weapons/tfa_cso/w_dark_spirit.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(8, -2, 20), angle = Angle(0, -180, 10), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.Offset = {
        Pos = {
        Up = -20,
        Right = 0,
        Forward = 7.5,
        },
        Ang = {
        Up = -30,
        Right = 180,
        Forward = -10
        },
        Scale = 1
}

SWEP.EventTable = {
	[ACT_VM_RECOIL1] = {
		{time = 1 / 30, type = "sound", value = Sound("DarkSpirit.Combo")}
	},
}

sound.Add({
	['name'] = "DarkSpirit.Idle",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dark_spirit/idle.ogg" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.Combo",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dark_spirit/combo.ogg" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.Draw",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dark_spirit/draw.ogg" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.Slash1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dark_spirit/slash1.ogg"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.Slash2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dark_spirit/slash2.ogg"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.Slash3",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dark_spirit/slash3.ogg"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.Slash4",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dark_spirit/slash4.ogg"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.DualSlash1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dark_spirit/dualslash1.ogg"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.DualSlash2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/dark_spirit/dualslash2.ogg"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.HitFleshSlash1",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dark_spirit/slash_hit1.ogg"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.HitFleshSlash2",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dark_spirit/slash_hit2.ogg"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.HitFleshSlash3",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dark_spirit/slash_hit3.ogg"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.HitWall1",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dark_spirit/stone1.ogg" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.HitWall2",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dark_spirit/stone2.ogg" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.HitMetal1",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dark_spirit/metal1.ogg" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "DarkSpirit.HitMetal2",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dark_spirit/metal2.ogg" },
	['pitch'] = {100,100}
})

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_HITLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 120, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-120,0,35), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 400, --This isn't overpowered enough, I swear!!
		['dmgtype'] = bit.bor(DMG_SLASH,DMG_ALWAYSGIB), --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.01, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.01,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.11, --time before next attack
		['hull'] = 32, --Hullsize
		['direction'] = "F", --Swing dir,
		['hitflesh'] = "DarkSpirit.HitFleshSlash1",
		['hitworld'] = "DarkSpirit.HitWall1",
		['maxhits'] = 25
	},
	{
		['act'] = ACT_VM_HITRIGHT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 120, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-45,0,-120), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 400, --This isn't overpowered enough, I swear!!
		['dmgtype'] = bit.bor(DMG_SLASH,DMG_ALWAYSGIB), --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.01, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.01,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.11, --time before next attack
		['hull'] = 32, --Hullsize
		['direction'] = "F", --Swing dir,
		['hitflesh'] = "DarkSpirit.HitFleshSlash2",
		['hitworld'] = "DarkSpirit.HitWall2",
		['maxhits'] = 25
	},
	{
		['act'] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 120, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(120,0,120), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 400, --This isn't overpowered enough, I swear!!
		['dmgtype'] = bit.bor(DMG_SLASH,DMG_ALWAYSGIB), --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.01, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.01,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.11, --time before next attack
		['hull'] = 32, --Hullsize
		['direction'] = "F", --Swing dir,
		['hitflesh'] = "DarkSpirit.HitFleshSlash1",
		['hitworld'] = "DarkSpirit.HitWall1",
		['maxhits'] = 25
	},
	{
		['act'] = ACT_VM_PULLBACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 120, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(120,0,-40), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 400, --This isn't overpowered enough, I swear!!
		['dmgtype'] = bit.bor(DMG_SLASH,DMG_ALWAYSGIB), --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.01, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.01,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.11, --time before next attack
		['hull'] = 32, --Hullsize
		['direction'] = "F", --Swing dir,
		['hitflesh'] = "DarkSpirit.HitFleshSlash2",
		['hitworld'] = "DarkSpirit.HitWall2",
		['maxhits'] = 25
	}
}

SWEP.Secondary.Attacks = {
		{
		['act'] = ACT_VM_MISSLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 125, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-150,0,-20), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 2400, --Nope!! Not overpowered!!
		['dmgtype'] = bit.bor(DMG_SLASH,DMG_ALWAYSGIB), --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.1, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.1,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.9, --time before next attack
		['hull'] = 128, --Hullsize
		['direction'] = "F", --Swing dir
		['hitflesh'] = "DarkSpirit.HitFleshSlash3",
		['hitworld'] = "DarkSpirit.HitWall1",
		['maxhits'] = 25
	},
	{
		['act'] = ACT_VM_MISSRIGHT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 120, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(150,0,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 2400, --Nope!! Not overpowered!!
		['dmgtype'] = bit.bor(DMG_SLASH,DMG_ALWAYSGIB), --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.1, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.1,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.9, --time before next attack
		['hull'] = 128, --Hullsize
		['direction'] = "F", --Swing dir
		['hitflesh'] = "DarkSpirit.HitFleshSlash3",
		['hitworld'] = "DarkSpirit.HitWall2",
		['maxhits'] = 25
	}
}

SWEP.InspectionActions = {ACT_VM_RECOIL1}

DEFINE_BASECLASS(SWEP.Base)
if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_dark_spirit")
	SWEP.DrawWeaponSelection = TFA_CSO_DrawWeaponSelection
end

---SWEP.combo = 0
---SWEP.comboleft = 3  --left need
---SWEP.comboright = 2  -- right need 

--[[function SWEP:PrimaryAttack( ... )
if self.combo < self.comboleft  then
 self.combo = self.combo + 1 

elseif self.combo > self.comboleft then
 self.combo = 0
 
end

return BaseClass.PrimaryAttack(self,...)
end

function SWEP:SecondaryAttack( ... )
if  self.combo < self.comboright + self.comboleft  then
 self.combo = self.combo + 1 

elseif self.combo >= self.comboright + self.comboleft then


 self.combo = 0


  self:Reload()  ----skill code  need to change
 
 
end

return BaseClass.SecondaryAttack(self,...)
end]]--

function SWEP:Reload( ... )
	if self:GetNextPrimaryFire() > CurTime() or self:GetNextSecondaryFire() > CurTime() then return end
	self:SetNextPrimaryFire(CurTime()+ 2)
	self:SetNextSecondaryFire(CurTime()+ 2)
	timer.Simple(0.8,function() if self:IsValid() then
	   ---timer.Simple(0.8,function() if self:IsValid() and self.Owner:GetActiveWeapon():GetClass() == "tfa_cso_dark_spirit.lua" then---
	   util.BlastDamage( self.Owner, self.Owner,self.Owner:GetPos(),225, 4000 )  --damage
	   self.Owner:AnimRestartGesture(0, ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE, true)
	   for k, v in pairs(ents.FindInSphere(self:GetPos(),250)) do
		  if IsValid( v ) then
			 if v == self then continue end
			 if v == self.Owner then continue end
			 if v:GetMoveType() != MOVETYPE_NOCLIP and (v:IsNPC() or v:IsNextBot() or v:IsPlayer()) then
				local dif = v:GetPos() - self:GetPos()
				local forceApplied = ( dif * 2000  )
				v:SetVelocity( forceApplied + Vector(0,0,100))
			 end
		  end
	   end
	   local effectdata = EffectData()
	   effectdata:SetOrigin( self.Owner:GetPos() )
	   util.Effect( "exp_dark_spirit", effectdata )  -- easy effect
	end
	end)
	return BaseClass.Reload(self,...)
 end
 
 hook.Add( "PlayerShouldTakeDamage", "antiselfdamage", function( ply, attacker )
	 if ply == attacker and ply:GetActiveWeapon():GetClass() == "tfa_cso_dark_spirit" then
		return false
	 end
 end )