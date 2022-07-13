SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Destiny Weapons"
SWEP.Manufacturer 					= ""
SWEP.Author							= "Delta"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "Retraced Path"
SWEP.Type							= "An early prototype that brought the potential for future Trace Rifles into sharper focus."
SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 60
SWEP.Slot							= 2
SWEP.SlotPos						= 100

SWEP.Rarity = "Legendary"
SWEP.DisableLUT = true

SWEP.FiresUnderwater 				= true

SWEP.IronInSound 					= nil
SWEP.IronOutSound 					= nil
SWEP.CanBeSilenced					= false
SWEP.DisableChambering 				= true
SWEP.SelectiveFire = false -- Allow selecting your firemode?


SWEP.Primary.ClipSize				= 100
SWEP.Primary.DefaultClip			= 100*10
SWEP.Primary.RPM					= 1000
SWEP.Primary.Ammo					= "ar2"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.Range 					= 4000
SWEP.Primary.RangeFalloff 			= -1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= true
SWEP.Primary.Delay				    = 0
SWEP.FireSoundAffectedByClipSize = false

SWEP.Primary.Sound 					= Sound ("TFA_RETRACEDPATH_LOOP.1")
SWEP.Primary.LoopSound 				= Sound ("TFA_RETRACEDPATH_LOOP.1")
SWEP.Primary.LoopSoundTail 			= Sound ("TFA_RETRACEDPATH_LOOPEND.1")
SWEP.Primary.ReloadSound 			= Sound ("TFA_RETRACEDPATH_RELOAD.1")
SWEP.Primary.LoopSoundAutoOnly 		= true

SWEP.Primary.PenetrationMultiplier 	= 1
SWEP.Primary.Damage					= 45
SWEP.Primary.HullSize 				= 2
SWEP.DamageType 					= DMG_DISSOLVE

SWEP.DoMuzzleFlash 					= false
SWEP.MuzzleFlashEffect 				= "tfa_muzzleflash_rifle"

SWEP.IronRecoilMultiplier			= 0.8
SWEP.CrouchRecoilMultiplier			= 0.85
SWEP.JumpRecoilMultiplier			= 2
SWEP.WallRecoilMultiplier			= 1.1
SWEP.ChangeStateRecoilMultiplier	= 1.2
SWEP.CrouchAccuracyMultiplier		= 0.8
SWEP.ChangeStateAccuracyMultiplier	= 1
SWEP.JumpAccuracyMultiplier			= 10
SWEP.WalkAccuracyMultiplier			= 1.5
SWEP.NearWallTime 					= 0.5
SWEP.SprintFOVOffset 				= 2

SWEP.ViewModel						= "models/weapons/retracedpath/c_retraced_path.mdl"
SWEP.WorldModel						= nil
SWEP.ViewModelFOV					= 58
SWEP.ViewModelFlip					= false
SWEP.MaterialTable 					= nil
SWEP.UseHands 						= true
SWEP.HoldType 						= "ar2"
SWEP.ReloadHoldTypeOverride 		= "ar2"

SWEP.ShowWorldModel = false

SWEP.BlowbackEnabled 				= true
SWEP.BlowbackVector 				= Vector(0, -1, 0)
SWEP.BlowbackCurrentRoot			= 0
SWEP.BlowbackCurrent 				= 1
SWEP.BlowbackBoneMods 				= nil
SWEP.Blowback_Only_Iron 			= true
SWEP.Blowback_PistolMode 			= false
SWEP.Blowback_Shell_Enabled 		= false
SWEP.Blowback_Shell_Effect 			= "None"

SWEP.Tracer							= 0
SWEP.TracerName 					= nil
SWEP.TracerCount 					= 1
SWEP.TracerLua 						= false
SWEP.TracerDelay					= 0
SWEP.ImpactEffect 					= "FadingScorch"

SWEP.IronSightTime 					= 0.4
SWEP.Primary.KickUp					= 0.05
SWEP.Primary.KickDown				= 0.05
SWEP.Primary.KickHorizontal			= 0.02
SWEP.Primary.StaticRecoilFactor 	= 0.4
SWEP.Primary.Spread					= 0.008
SWEP.Primary.IronAccuracy 			= 0.008
SWEP.Primary.SpreadMultiplierMax 	= 1.5
SWEP.Primary.SpreadIncrement 		= 0.35
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= 1
SWEP.IronSightsMoveSpeed 			= 0.75

SWEP.IronSightsPos = Vector(-4.822, -4.5, -.5)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(5.226, -6, 0)
SWEP.RunSightsAng = Vector(-18, 36, -13.5)
SWEP.InspectPos = Vector(5.5, -8, -.5) //Vector(8, -4.8, -3)
SWEP.InspectAng = Vector(18.291, 30.954, 17.587) //Vector(11.199, 38, 0)

SWEP.VMPos = Vector(-.8, -4.5, 0) -- The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(1.2, 1, -0.5) -- The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false -- Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse

SWEP.CrouchPos = Vector(-.8, -5, .3)
SWEP.CrouchAng = Vector(1.5, .5, 0)

SWEP.MuzzleAttachment           = "muzzle"       -- Should be "1" for CSS models or "muzzle" for hl2 models

SWEP.LuaShellEject = false --Enable shell ejection through lua?


SWEP.Attachments = {
	//[1] = { offset = { 0, 0 }, atts = { "destiny_eye_of_osiris", }, order = 1 }	
}

SWEP.ViewModelBoneMods = {
	--[[ ["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-12, 0, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 3, 0) },
	["MuzzleBone.001"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
--]] }

SWEP.VElements = {
	["reticle"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ReticleBone", rel = "", pos = Vector(0.01, -6, 0), angle = Angle(90, 0, 90), size = Vector(0.008, .008, 0), color = Color(255, 200, 200, 255), surpresslightning = false, material = "reticle/destiny2_reddot", skin = 0, bodygroup = {}, active = true },
}

SWEP.WElements = {
	["world"] = { type = "Model", model = SWEP.ViewModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-11, 6, -4), angle = Angle(-12.5, 1, 180), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = { [1] = 0 } }
}

SWEP.ThirdPersonReloadDisable = false

SWEP.SequenceRateOverride= { 
	[ACT_VM_RELOAD] = .975,
	[ACT_VM_FIDGET] = .8
}

SWEP.StatCache_Blacklist = {
	["Primary.Damage"] = true,
	["DamageType"] = true
}


SWEP.ViewModelPunchPitchMultiplier = 0 -- Default value is 0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights = nil -- Default value is 0.09

SWEP.ViewModelPunch_MaxVertialOffset = 1 -- Default value is 3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights = 0//1 -- Default value is 1.95
SWEP.ViewModelPunch_VertialMultiplier = 1 -- Default value is 1
SWEP.ViewModelPunch_VertialMultiplier_IronSights = nil -- Default value is 0.25

SWEP.ViewModelPunchYawMultiplier = 3 -- Default value is 0.6
SWEP.ViewModelPunchYawMultiplier_IronSights = nil -- Default value is 0.25

SWEP.RetracedEmit = Material("models/retracedpath/retracedpathbody")
SWEP.RetracedFX = Material("models/retracedpath/retracedpathemit2")

DEFINE_BASECLASS( SWEP.Base )

local obj
local muzzlepos
local l_CT = CurTime
local rgb
local timer1 = 0
local t = 0

function SWEP:Initialize(...)

	obj = self:LookupAttachment( "muzzle" )
	muzzlepos = self:GetAttachment( obj ).Pos
	//self:SetNWFloat("d2_prome_range", 40)

	return BaseClass.Initialize(self, ...)
end

function SWEP:Think(...)

	//local fAnimSpeedFast, fAnimSpeedMedium = FrameTime() * 8, FrameTime() * 6
	
	if CLIENT then

		if self:GetStatus() == TFA.Enum.STATUS_SHOOTING then
			self.RetracedFX:SetVector("$color2", Vector(1, 1, 1))
			t = math.Clamp(t + .004, 0, 6) 
			self.RetracedEmit:SetVector("$selfillumtint", Vector(t, t/10, 0))
		else
			self.RetracedFX:SetVector("$color2", Vector(0,0,0))
			t = math.Clamp(t - .007, 0, 6) 
			self.RetracedEmit:SetVector("$selfillumtint", Vector(t, t/10, 0))
		end

		if self:GetIronSights() then
			local E = self:GetIronSightsProgress()
			self.VElements["reticle"].color = Color(255, 255, 255, (255*self:GetIronSightsProgress()))
			
		else
			self.VElements["reticle"].color = Color(255, 255, 255, 0)
			
			//self.PrometheusRet:SetVector("$Color2", Vector(0, 0, 0))
		end

		if timer1 < 360 then
			timer1 = timer1 + .6
		else
			timer1 = 0
		end
		//print(timer1)
		//lerp = LerpAngle( fAnimSpeedFast*10, self.ViewModelBoneMods["MuzzleBone.001"].angle, Angle(360, 0, 0) )

		//self.ViewModelBoneMods["MuzzleBone.001"].angle = Angle(-timer1, 0, 0)

		rgb = math.Remap(self:Clip1(), 0, self:GetMaxClip1(), 0, 1)

		--[[ self.PrometheusAmmo0:SetVector("$Color2", Vector(1, rgb+.3, rgb+.3))
		self.PrometheusAmmo1:SetVector("$Color2", Vector(1, rgb+.3, rgb+.3))
		self.PrometheusAmmo2:SetVector("$Color2", Vector(1, rgb+.3, rgb+.3))
		self.PrometheusScreen:SetVector("$Color2", Vector(1, rgb, rgb))--]] 
	end

	if self:GetStatus() == TFA.GetStatus("shooting") then
		self:Beam()
	end

	if self:GetStatus() == TFA.GetStatus("shooting") then
		if SERVER then
			//self.Primary_TFA.Damage = self:GetStat("Primary.Damage") + .145
			//PrintMessage(HUD_PRINTTALK, self.Primary_TFA.Damage)
		end
	else
		if SERVER then
			//self:SetNWFloat("d2_prome_range", 40)
			self.Primary_TFA.Damage = 1
		end
	end

	return BaseClass.Think(self, ...)
end

function SWEP:PrimaryAttack(...)
	if self:CanPrimaryAttack(true) then
		//ParticleEffectAttach("prometheus_muzzle", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
	end
	return BaseClass.PrimaryAttack(self, ...)
end


function SWEP:DealAoeDamage( dmgtype, dmgamt, src, range, attacker, forcemul )
	
	if ( !forcemul ) then
		forcemul = 1
	end
	
	local dmg = DamageInfo()
	dmg:SetDamageType( dmgtype )
	if ( !attacker || !IsValid( attacker ) ) then
		dmg:SetAttacker( self:GetOwner() )
	else
		dmg:SetAttacker( attacker )
	end
	dmg:SetInflictor( self )
	dmg:SetDamageForce( Vector( 0, 0, 0 ) * forcemul )
	dmg:SetDamage( dmgamt )
	
	util.BlastDamageInfo( dmg, src, range )

end

function SWEP:TriggerAttack(tableName, clipID)
	local self2 = self:GetTable()
	local ply = self:GetOwner()

	local fnname = clipID == 2 and "Secondary" or "Primary"

	if TFA.Enum.ShootReadyStatus[self:GetShootStatus()] then
		self:SetShootStatus(TFA.Enum.SHOOT_IDLE)
	end

	self["SetNext" .. fnname .. "Fire"](self, l_CT() + self:GetFireDelay())

	self:SetStatus(TFA.Enum.STATUS_SHOOTING, self["GetNext" .. fnname .. "Fire"](self)+.05)
	
	self:IncreaseRecoilLUT()

	local ifp = IsFirstTimePredicted()

	local _, tanim = self:ChooseShootAnim(ifp)

	if (not sp) or (not self:IsFirstPerson()) then
		ply:SetAnimation(PLAYER_ATTACK1)
	end

	if self:GetStat(tableName .. ".Sound") and ifp and not (sp and CLIENT) then
		if ply:IsPlayer() and self:GetStat(tableName .. ".LoopSound") and (not self:GetStat(tableName .. ".LoopSoundAutoOnly", false) or self2.Primary_TFA.Automatic) then
			self:EmitGunfireLoop()
		else
			local tgtSound = self:GetStat(tableName .. ".Sound")

			if self:GetSilenced() then
				tgtSound = self:GetStat(tableName .. ".SilencedSound", tgtSound)
			end

			if (not sp and SERVER) or not self:IsFirstPerson() then
				tgtSound = self:GetSilenced() and self:GetStat(tableName .. ".SilencedSound_World", tgtSound) or self:GetStat(tableName .. ".Sound_World", tgtSound)
			end

			self:EmitGunfireSound(tgtSound)
		end

		self:EmitLowAmmoSound()
	end

	self2["Take" .. fnname .. "Ammo"](self, self:GetStat(tableName .. ".AmmoConsumption"))

	if self["Clip" .. clipID](self) == 0 and self:GetStat(tableName .. ".ClipSize") > 0 then
		self["SetNext" .. fnname .. "Fire"](self, math.max(self["GetNext" .. fnname .. "Fire"](self), l_CT() + (self:GetStat(tableName .. ".DryFireDelay", self:GetActivityLength(tanim, true)))))
	end



	//self:Beam()
	//self:ShootBulletInformation()
	self:UpdateJamFactor()
	local _, CurrentRecoil = self:CalculateConeRecoil()
	self:Recoil(CurrentRecoil, ifp)

	-- shouldn't this be not required since recoil state is completely networked?
	if sp and SERVER then
		self:CallOnClient("Recoil", "")
	end

	if self:GetStat(tableName .. ".MuzzleFlashEnabled", self:GetStat("MuzzleFlashEnabled")) and (not self:IsFirstPerson() or not self:GetStat(tableName .. ".AutoDetectMuzzleAttachment", self:GetStat("AutoDetectMuzzleAttachment"))) then
		self:ShootEffectsCustom()
	end

	self:DoAmmoCheck(clipID)

end

local tr
function SWEP:Beam()

	if self:GetStatus() == TFA.GetStatus("shooting") then
		if(IsFirstTimePredicted()) then
			local ply = self:GetOwner()
			local ang = self:GetAimAngle()
			tr = util.QuickTrace(ply:GetShootPos(), ang:Forward()*0x7FFF, ply)

			if GetConVar("sv_tfa_fixed_crosshair"):GetBool() then
				tr = util.QuickTrace(ply:GetShootPos(), ply:EyeAngles():Forward()*0x7FFF, ply)
			else
				tr = util.QuickTrace(ply:GetShootPos(), ang:Forward()*0x7FFF, ply)
			end
			
			util.ParticleTracerEx( 
				"retraced_tracer", --particle system
				self:GetAttachment( self:LookupAttachment( "muzzle" ) ).Pos, --startpos
				tr.HitPos, //self:GetAimAngle():Forward(), --endpos
				false, --do whiz effect
				self:EntIndex(), --entity index
				self:LookupAttachment( "muzzle" ) --attachment
			)
			
			self:DoImpactEffect(self:GetOwner():GetEyeTrace())
			
			if file.Exists( "particles/hl2mmod_muzzleflashes.pcf", "THIRDPARTY" ) or file.Exists( "particles/hl2mmod_muzzleflashes.pcf", "WORKSHOP" ) then
				ParticleEffectAttach("hl2mmod_muzzleflash_smg1", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
			end
			ParticleEffectAttach("retraced_muzzle", 4, self.OwnerViewModel, self.OwnerViewModel:LookupAttachment("muzzle"))
			
			//if(self.Owner:GetEyeTrace().Entity:IsNPC() or self.Owner:GetEyeTrace().Entity:IsPlayer()) then
				
			local traceData = {
				start = ply:GetShootPos() + ply:GetForward() * 50,
				endpos = ply:GetShootPos() + ply:GetForward() * 10000,
				mask = MASK_SOLID,
				collisiongroup = COLLISION_GROUP_PLAYER,
				mins = Vector( -10, -10, -10),
				maxs = Vector( 10, 10, 10),
				filter = function( ent )
					if (ent:IsNPC() or ent:IsPlayer() or ent:IsNextBot()) then
						return true
					end
				end
			}
	
			local tr2 = util.TraceLine(traceData)
			//print(tr.Entity)

			local damageInfo = DamageInfo()
			damageInfo:SetDamage(self.Primary.Damage)
			damageInfo:SetAttacker( ply )
			damageInfo:SetInflictor( self )
			
			if(IsValid ( tr2.Entity )) then
				if tr2.Entity:GetClass() == "npc_strider" then
					self.DamageType = DMG_GENERIC
				elseif tr.Entity:GetClass() == "npc_helicopter" then 
					self.DamageType = DMG_AIRBOAT
				else
					self.DamageType = DMG_DISSOLVE
				end
			end
			damageInfo:SetDamageType(self.DamageType)
			damageInfo:ScaleDamage(1)
			//print(damageInfo)

			if(IsValid ( tr2.Entity ) and self.Weapon:Clip1() > 0 ) and self:CanPrimaryAttack() then
				tr2.Entity:DispatchTraceAttack(damageInfo, tr, tr.HitNormal)
				//print(tr.Entity:GetClass())
			end

			if self.Primary_TFA.Damage > 10 then
				if(IsValid ( tr2.Entity )) then
					//tr2.Entity:Ignite(3)
				end
			end
		end

		if CLIENT then
			local ply = self:GetOwner()
			local ang = self:GetAimAngle()
			local tr

			if GetConVar("sv_tfa_fixed_crosshair"):GetBool() then
				tr = util.QuickTrace(ply:GetShootPos(), ply:EyeAngles():Forward()*0x7FFF, ply)
			else
				tr = util.QuickTrace(ply:GetShootPos(), ang:Forward()*0x7FFF, ply)
			end

			local mLight = DynamicLight( self:EntIndex() )
			if ( mLight ) then
				mLight.pos = tr.HitPos
				mLight.r = 255
				mLight.g = 90
				mLight.b = 0
				mLight.brightness = 2
				mLight.Size = 200
				mLight.Decay = 1024
				mLight.Style = 1
				mLight.DieTime = CurTime() + 1
			end

			local wep = self:GetOwner():GetViewModel()
			local matrix = wep:GetBoneMatrix(wep:LookupBone( "muzzlebone" ))
			local pos = matrix:GetTranslation()
			local ang = matrix:GetAngles()
			if pos == self:GetPos() then
				pos = wep:GetBoneMatrix(wep:LookupBone( "muzzlebone" )):GetTranslation()
			end

			local muzzleLight = DynamicLight( self:EntIndex()+1 )
			if ( muzzleLight ) then
				muzzleLight.pos = pos
				muzzleLight.r = 255
				muzzleLight.g = 90
				muzzleLight.b = 0
				muzzleLight.brightness = 2
				muzzleLight.Size = 100
				muzzleLight.Decay = 1024
				muzzleLight.Style = 1
				muzzleLight.DieTime = CurTime() + 1
			end 

		end
	end
end



function SWEP:DoImpactEffect( tr, nDamageType )

	if ( tr.HitSky ) then return end -- Do not draw effects vs. the sky.

	local ply = self:GetOwner()
	local ang = self:GetAimAngle()
	local tr = util.QuickTrace(ply:GetShootPos(), ang:Forward()*0x7FFF, ply)
	
	if GetConVar("sv_tfa_fixed_crosshair"):GetBool() then
		tr = util.QuickTrace(ply:GetShootPos(), ply:EyeAngles():Forward()*0x7FFF, ply)
	else
		tr = util.QuickTrace(ply:GetShootPos(), ang:Forward()*0x7FFF, ply)
	end

	//self:SetNWFloat("d2_prome_range", self:GetNWFloat("d2_prome_range")+.41)
	

	ParticleEffect( "prometheus_hit", tr.HitPos, self.Owner:EyeAngles(), self ) -- draw the particle
	
	//self:DealAoeDamage( DMG_BURN, (self.Primary_TFA.Damage*.1), tr.HitPos, self:GetNWFloat("d2_prome_range"), self:GetOwner(), 1 )
	

	return false

end

function SWEP:OnRemove(...)
	
	self:StopSound("TFA_RETRACEDPATH_LOOP.1")
	
	return BaseClass.OnRemove(self, ...)
end
function SWEP:Holster(...)
	
	self:StopSound("TFA_RETRACEDPATH_LOOP.1")
	
	return BaseClass.Holster(self, ...)
end






	--[[
	if(IsFirstTimePredicted()) then
		
		local vm = self:GetOwner():GetViewModel()
		local obj = vm:LookupAttachment( "muzzle" )
		local spread

		spread = VectorRand() * 0

		local lastOrigin = self.Owner:EyePos()
		local lastTrace = util.TraceLine({
			start = lastOrigin,
			endpos = lastOrigin + (self.Owner:GetAimVector() + spread) * 999999,
			filter = self.Owner
		})

		local ef = EffectData()
		ef = EffectData()
		ef:SetOrigin(lastOrigin)
		ef:SetStart(lastTrace.HitPos)
		ef:SetEntity(self)
		ef:SetAttachment(self:LookupAttachment( "muzzle" ))
		ef:SetScale(.7)
		ef:SetNormal(lastTrace.HitNormal)
		util.Effect("PrometheusBeam", ef)

		local i = 0
		local imax = 6
		local dmg = 10

		local bullet = {};
		bullet.Num = 1;
		bullet.Src = self.Owner:GetShootPos();
		bullet.Dir = self.Owner:GetAimVector() + spread;
		bullet.Tracer = 0
		//bullet.Force = 100
		bullet.Damage = self.Primary.Damage

		bullet.Callback = function( attacker, tr, dmginfo )
			dmginfo:SetDamageType( bit.bor( DMG_GENERIC, DMG_DISSOLVE ) );
		end


		self.Owner:FireBullets(bullet)	
		local _, CurrentRecoil = self:CalculateConeRecoil()
		self:Recoil(CurrentRecoil, ifp)
	end]]
