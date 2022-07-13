include("shared.lua")

function SWEP:SyncMeter(o)
	local vm, clip = o:GetViewModel(), self.Primary.DefaultClip - self:Ammo1()
	local fix,fix1,fix2 = 70, 70, -74
	local bone1 = vm:LookupBone("tag_control_dial_1")
	local bone2 = vm:LookupBone("tag_control_dial_2")
	local bone3 = vm:LookupBone("tag_control_dial_3")
	if bone1 == nil or clip == nil then return end
	vm:ManipulateBoneAngles(bone1,Angle(math.Truncate(clip*0.01)*-36 + fix,0,0))
	vm:ManipulateBoneAngles(bone2,Angle(math.Truncate(clip*0.1)*-36 + fix1,0,0))
	vm:ManipulateBoneAngles(bone3,Angle(clip*-36 + fix2,0,0))
end

function SWEP:Think2()
	local own = self:GetOwner()
	self:SyncMeter(own)
	
	if own:KeyReleased(IN_ATTACK) then
		self:StopParticles()
	end
end

function SWEP:OnRemove()
	local own = self:GetOwner()
	if IsValid(own) then
		local vm = own:GetViewModel()
		local bone1 = vm:LookupBone("tag_control_dial_1")
		local bone2 = vm:LookupBone("tag_control_dial_2")
		local bone3 = vm:LookupBone("tag_control_dial_3")
		if !bone1 then return end
		vm:ManipulateBoneAngles(bone1,Angle(0,0,0))
		vm:ManipulateBoneAngles(bone2,Angle(0,0,0))
		vm:ManipulateBoneAngles(bone3,Angle(0,0,0))
	end
end