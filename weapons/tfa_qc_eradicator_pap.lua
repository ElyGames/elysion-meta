SWEP.Category				= "TFA Quake Champions"
SWEP.Author				= "Matsilagi"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Eradicator Railgun EX"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 73			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- Set false if you want no crosshair from hip
SWEP.Weight				= 30			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.BoltAction				= false		-- Is this a bolt action rifle?
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 54
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/tfa_qc/c_railgun_eradicator_64.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/tfa_qc/w_railgun_eradicator_64.mdl"	-- Weapon world model
SWEP.UseHands = true
SWEP.UseBallistics = false

SWEP.Base 				= "tfa_gun_base"
SWEP.Spawnable				= false
SWEP.AdminSpawnable			= true

SWEP.DisableChambering = true
SWEP.Primary.Sound			= Sound("TFA_Eradicator.2")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 32		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= -1		-- Size of a clip
SWEP.Primary.DefaultClip			= 25	-- Bullets you start with
SWEP.Primary.KickUp				= 1.5				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1.2			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.6		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun

SWEP.Primary.SpreadMultiplierMax = 9 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 2 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 7 --How much the spread recovers, per second.

SWEP.Primary.PenetrationMultiplier = 5

SWEP.data 				= {}
SWEP.data.ironsights		= 1

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 460	--base damage per bullet
SWEP.Primary.Spread		= .01	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0025 -- ironsight accuracy, should be the same for shotguns

SWEP.DamageType = bit.bor(DMG_BULLET,DMG_SHOCK,DMG_AIRBOAT)

SWEP.Secondary.IronFOV = 70

-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Makron's Headcannon"
--SWEP.NZPaPReplacement 	= "tfa_cso_dualinfinityfinal"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= true	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= true	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

-- enter iron sight info and bone mod info below

SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		{ ["time"] = 0, ["type"] = "lua", ["value"] = function(wep,vm)
			wep:SetNW2Bool("Charging", false)
		end, ["client"] = true, ["server"] = true },
	},
	[ACT_VM_PRIMARYATTACK] = {
		{ ["time"] = 0, ["type"] = "lua", ["value"] = function(wep,vm)
			wep:SetNW2Bool("Charging", true)
		end, ["client"] = true, ["server"] = true },
		{ ["time"] = 44 / 30, ["type"] = "lua", ["value"] = function(wep,vm)
			wep:SetNW2Bool("Charging", false)
		end, ["client"] = true, ["server"] = true },	
	}
}

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = 1,
        Right = 0.5,
        Forward = 0,
        },
        Ang = {
        Up = -2,
        Right = -5,
        Forward = 180
        },
		Scale = 1
}	

SWEP.TracerName = "tfa_tracer_eradicator_pap"
SWEP.TracerCount = 1
SWEP.ImpactDecal = "FadingScorch"--"Scorch"

SWEP.MuzzleFlashEffect = "tfa_muzzleflash_eradicator_pap"

SWEP.IronSightsPos = Vector(-4.08, -12.462, 0.449)
SWEP.IronSightsAng = Vector(2.813, 0, 0)

SWEP.RunSightsPos = Vector(2.73, -6.835, -0.491)
SWEP.RunSightsAng = Vector(-5.628, 28.141, -6.332)
SWEP.AllowSprintAttack = true

SWEP.InspectPos = Vector(4.11, -7.84, -4)
SWEP.InspectAng = Vector(20.402, 40.101, -9.146)

SWEP.NearWallSightsPos = Vector(3.344, -5.34, -2.671)-- Vector(0, -12.085, -4.237)
SWEP.NearWallSightsAng = Vector(-20.048, 68.24, -40.635)--Vector(70, 0, 0)

SWEP.BlowbackEnabled = false

SWEP.BlowbackEnabled = true
SWEP.BlowbackVector = Vector(0,-2,0)

DEFINE_BASECLASS(SWEP.Base)

function SWEP:Initialize( ... )
	self.SetNW2Bool = self.SetNW2Bool or self.SetNWBool
	self:SetNW2Bool("Charging", false)

	BaseClass.Initialize( self, ... )
end

function SWEP:DrawWorldModel()
	local ply = self:GetOwner()
	local wpn = self:GetClass()

	if IsValid(ply) and ply.SetupBones then
		ply:SetupBones()
		ply:InvalidateBoneCache()
		self:InvalidateBoneCache()
	end

	if (self.ShowWorldModel == nil or self.ShowWorldModel or not self:OwnerIsValid()) then
		if game.SinglePlayer() or CLIENT then
			if IsValid(ply) and self.Offset and self.Offset.Pos and self.Offset.Ang then
				local handBone = ply:LookupBone("ValveBiped.Bip01_R_Hand")

				if handBone then
					--local pos, ang = ply:GetBonePosition(handBone)
					local pos, ang
					local mat = ply:GetBoneMatrix(handBone)

					if mat then
						pos, ang = mat:GetTranslation(), mat:GetAngles()
					else
						pos, ang = ply:GetBonePosition(handBone)
					end

					pos = pos + ang:Forward() * self.Offset.Pos.Forward + ang:Right() * self.Offset.Pos.Right + ang:Up() * self.Offset.Pos.Up
					ang:RotateAroundAxis(ang:Up(), self.Offset.Ang.Up)
					ang:RotateAroundAxis(ang:Right(), self.Offset.Ang.Right)
					ang:RotateAroundAxis(ang:Forward(), self.Offset.Ang.Forward)
					self:SetRenderOrigin(pos)
					self:SetRenderAngles(ang)
					--if self.Offset.Scale and ( !self.MyModelScale or ( self.Offset and self.MyModelScale!=self.Offset.Scale ) ) then
					self:SetModelScale(self.Offset.Scale or 1, 0)
					self.MyModelScale = self.Offset.Scale
					--end
				end
			else
				self:SetRenderOrigin(nil)
				self:SetRenderAngles(nil)

				if not self.MyModelScale or self.MyModelScale ~= 1 then
					self:SetModelScale(1, 0)
					self.MyModelScale = 1
				end
			end
		end

		self:ProcessBodygroups()

		if self:GetNW2Bool("Charging", true) then
			self:SetBodygroup(2, 1)
		else
			self:SetBodygroup(2, 0)
		end

		self:DrawModel()
	end

	if self.SetupBones then
		self:SetupBones()
	end

	self:UpdateWMBonePositions(self)
	if (not self.WElements) then return end
	--self.WElements = self:GetStat("WElements")
	self:CreateModels(self.WElements)

	if (not self.wRenderOrder) then
		self.wRenderOrder = {}

		for k, v in pairs(self.WElements) do
			if (v.type == "Model") then
				table.insert(self.wRenderOrder, 1, k)
			elseif (v.type == "Sprite" or v.type == "Quad") then
				table.insert(self.wRenderOrder, k)
			end
		end
	end

	bone_ent = self:GetOwner() and self:GetOwner() or self

	for k, name in pairs(self.wRenderOrder) do
		local v = self.WElements[name]

		if (not v) then
			self.wRenderOrder = nil
			break
		end

		if (v.hide) then continue end
		local aktiv = self:GetStat("WElements." .. name .. ".active")
		if aktiv ~= nil and aktiv == false then continue end
		local pos, ang

		if (v.bone) then
			pos, ang = self:GetBoneOrientation(self.WElements, v, bone_ent)
		else
			pos, ang = self:GetBoneOrientation(self.WElements, v, bone_ent, "ValveBiped.Bip01_R_Hand")
		end

		if (not pos) then continue end
		local model = v.curmodel
		local sprite = v.spritemat

		if (v.type == "Model" and IsValid(model)) then
			if not v.bonemerge then
				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z)
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				model:SetAngles(ang)
			end

			-- //model:SetModelScale(v.size)
			local matrix = Matrix()
			matrix:Scale(v.size)
			model:EnableMatrix("RenderMultiply", matrix)

			if (v.material == "") then
				model:SetMaterial("")
			elseif (model:GetMaterial() ~= v.material) then
				model:SetMaterial(v.material)
			end

			if (v.skin and v.skin ~= model:GetSkin()) then
				model:SetSkin(v.skin)
			end

			if (v.bodygroup) then
				for l, n in pairs(v.bodygroup) do
					if (model:GetBodygroup(l) ~= n) then
						model:SetBodygroup(l, n)
					end
				end
			end

			if (v.surpresslightning) then
				render.SuppressEngineLighting(true)
			end

			render.SetColorModulation(v.color.r / 255, v.color.g / 255, v.color.b / 255)
			render.SetBlend(v.color.a / 255)

			if v.bonemerge then
				model:SetParent(self)

				if not model:IsEffectActive(EF_BONEMERGE) then
					model:AddEffects(EF_BONEMERGE)
				end
			elseif model:IsEffectActive(EF_BONEMERGE) then
				model:RemoveEffects(EF_BONEMERGE)
				model:SetParent(nil)
			end

			model:DrawModel()
			render.SetBlend(1)
			render.SetColorModulation(1, 1, 1)

			if (v.surpresslightning) then
				render.SuppressEngineLighting(false)
			end
		elseif (v.type == "Sprite" and sprite) then
			local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
			render.SetMaterial(sprite)
			render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
		elseif (v.type == "Quad" and v.draw_func) then
			local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
			ang:RotateAroundAxis(ang:Up(), v.angle.y)
			ang:RotateAroundAxis(ang:Right(), v.angle.p)
			ang:RotateAroundAxis(ang:Forward(), v.angle.r)
			cam.Start3D2D(drawpos, ang, v.size)
			v.draw_func(self)
			cam.End3D2D()
		end
	end
end

function SWEP:Think( ... )
	if self:GetNW2Bool("Charging", true) and self.railsoundpap then 
		self.railsoundpap:Stop()
	else
		self.railsoundpap = CreateSound(self.Weapon, "weapons/qcrailgun/railgun-idle2.ogg")
		self.railsoundpap:Play()
	end
	
	if (not IsValid(self.Owner) or not self.Owner:Alive() or not self.Owner:IsPlayer()) and self.railsound then
		self.railsound:Stop()
	end
	
	return BaseClass.Think(self,...)
end

function SWEP:Deploy( ... )
	if (self.Owner:Alive() or IsValid(self.Owner) and IsValid(self.Weapon)) and not self.railsoundpap then
		self.railsoundpap = CreateSound(self.Weapon, "weapons/qcrailgun/railgun-idle2.ogg")
		self.railsoundpap:Play()
	end
	return BaseClass.Deploy(self,...)
end

function SWEP:Holster( ... )
	if (self.Owner:Alive() or IsValid(self.Owner) or not IsValid(self.Weapon)) and self.railsoundpap then self.railsoundpap:Stop() end
	return BaseClass.Holster(self,...)
end

function SWEP:OnRemove( ... )
	if self.railsoundpap then 
		self.railsoundpap:Stop()
	end
	return BaseClass.OnRemove(self,...)
end