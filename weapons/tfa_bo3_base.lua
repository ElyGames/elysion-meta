SWEP.Base = "tfa_bash_base"
DEFINE_BASECLASS(SWEP.Base)

function SWEP:Sway(pos, ang, ftv, ...)
	local spos, sang = BaseClass.Sway(self, pos * 1, ang * 1, ftv, ...)

	if self.IronSightsProgress > .01 then
		spos = Lerp(self.IronSightsProgress * .8, spos, pos)
		sang = Lerp(self.IronSightsProgress * .8, sang, ang)
	end

	return spos, sang
end

if SERVER then
	function SWEP:OwnerChanged(...)
		if self.PickupSoundOnDraw then
			if IsValid(self:GetOwner()) and self:GetOwner():IsPlayer() then
				local pickupsnd = self:GetStat("PickupSound")

				if pickupsnd and pickupsnd ~= "" then
					self:EmitSound(pickupsnd)
				end
			end
		end
		return BaseClass.OwnerChanged(self, ...)
	end

	function SWEP:EquipAmmo(ply, ...)
		local pickupsnd = self:GetStat("PickupSound")

		if pickupsnd and pickupsnd ~= "" then
			self:EmitSound(pickupsnd)
		end

		return BaseClass.EquipAmmo(self, ply, ...)
	end
end

if CLIENT then
	function SWEP:OnCustomizationOpen()
		self:EmitSound("weapon_bo3_ui.open")
	end

	function SWEP:OnCustomizationClose()
		self:EmitSound("weapon_bo3_ui.close")
	end
end
