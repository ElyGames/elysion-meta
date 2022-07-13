DEFINE_BASECLASS("tfa_bash_base")
SWEP.Skins = {}
SWEP.Skin = ""
SWEP.Callback = {}
local sp

function SWEP:Initialize()
	BaseClass.Initialize(self)
	sp = game.SinglePlayer()
	self:ReadSkin()

	if SERVER then
		self:CallOnClient("ReadSkin", "")
	end
end

function SWEP:AltAttack()
	if not self.Owner:KeyDown(IN_USE) then return BaseClass.AltAttack(self) end
	if not CLIENT then return end
	if not (IsFirstTimePredicted() or game.SinglePlayer()) then return end
	local bgcolor = Color(0, 0, 0, 255 * 0.78)
	local bordercol = Color(10, 10, 10, 255)
	local scrollbar_buttoncol = Color(96, 96, 96, 255 * 0.8)
	local scrollbar_gripcol = Color(162, 162, 162, 255 * 0.8)
	local btntextcol = Color(255, 255, 255, 255 * 0.9)
	local divcolor = Color(225, 225, 225, 225 * 0.8)
	local panelscale = 0.7

	surface.CreateFont("TFA_CSGO_SKIN", {
		font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
		size = 48,
		weight = 500,
		blursize = 0,
		scanlines = 0,
		antialias = true,
		underline = false,
		italic = false,
		strikeout = false,
		symbol = false,
		rotary = false,
		shadow = false,
		additive = false,
		outline = false
	})

	local labfont = {
		["font"] = "TFA_CSGO_SKIN",
		["charwidth"] = 42,
		["charheight"] = 48
	}

	local Frame = vgui.Create("DFrame")
	local scrollpanel = vgui.Create("DScrollPanel")
	local sbar = scrollpanel:GetVBar()

	function sbar:Paint(wv, hv)
		draw.RoundedBox(0, 0, 0, wv, hv, bgcolor)
	end

	function sbar.btnUp:Paint(wv, hv)
		draw.RoundedBox(0, 0, 0, wv, hv, scrollbar_buttoncol)
	end

	function sbar.btnDown:Paint(wv, hv)
		draw.RoundedBox(0, 0, 0, wv, hv, scrollbar_buttoncol)
	end

	function sbar.btnGrip:Paint(wv, hv)
		draw.RoundedBox(0, 0, 0, wv, hv, scrollbar_gripcol)
	end

	local scrw, scrh = ScrW(), ScrH()
	local w, h = scrw * panelscale, scrw * panelscale * (scrh / scrw) --790, 790*9/16
	Frame:SetPos((scrw - w) / 2, (scrh - h) / 2)
	Frame:SetSize(w, h)
	Frame:SetTitle("Skin Picker")
	Frame:SetVisible(true)
	Frame:SetDraggable(true)
	Frame:SetSizable(true)
	Frame:SetScreenLock(true)
	Frame:ShowCloseButton(true)
	Frame:MakePopup()
	Frame:SetBackgroundBlur(true)
	Frame.startTime = SysTime()
	Frame.btnMaxim:Hide(true)
	Frame.btnMinim:Hide(true)

	Frame.Paint = function(myself, wv, hv)
		local x, y = myself:GetPos()
		--local x,y = self:GetPos()[1],self:GetPos()[2]
		render.SetScissorRect(x, y, x + wv, y + hv, true)
		Derma_DrawBackgroundBlur(myself, myself.startTime - 60)
		render.SetScissorRect(x, y, x + wv, y + hv, false)
		--DrawBlurRect(x, y, wv, hv, 3, 2)
		draw.NoTexture()
		surface.SetDrawColor(bgcolor)
		surface.DrawRect(0, 0, wv, hv)
	end

	Frame:Center()
	local div2 = vgui.Create("DPanel")
	div2:SetParent(Frame)
	div2:SetSize(w, 2)
	div2:Dock(TOP)

	div2.Paint = function(myself, wv, hv)
		draw.NoTexture()
		surface.SetDrawColor(divcolor)
		surface.DrawRect(0, 0, wv, hv)
	end

	scrollpanel:SetParent(Frame)
	scrollpanel:Dock(FILL)
	scrollpanel.w = w
	keys = table.GetKeys(self.Skins)

	table.sort(keys, function(a, b)
		local namea = self.Skins[a].name
		local nameb = self.Skins[b].name
		local aval = string.lower(namea and namea or "")
		local bval = string.lower(nameb and nameb or "")

		return tostring(aval and aval or a) < tostring(bval and bval or b)
	end)

	table.RemoveByValue(keys, "Stock")
	table.insert(keys, 1, "Stock")

	if not self.Skins["Stock"] then
		self.Skins["Stock"] = {
			["name"] = "Stock",
			["tbl"] = {}
		}
	end

	table.RemoveByValue(keys, "BaseClass")
	local yy = 0
	local div

	for i = 1, #keys do
		local k = keys[i]
		local v = self.Skins[k]
		local tmpw = scrollpanel.w

		if not tmpw then
			tmpw = scrollpanel:GetSize()
		end

		local dbtn = vgui.Create("DButton")
		dbtn:SetParent(scrollpanel)
		local name = v.name and v.name or k

		if v.image then
			isimage = true
			dbtn:SetText("")
		else
			dbtn:SetText(name)
		end --file.Exists( "materials/".. (v.image and v.image or "doesn"texists"), "GAME" ) then

		dbtn:SetPos(30, yy + 2)
		dbtn:SetSize(100, 100)
		yy = yy + 100 + 2
		dbtn.skin = k
		dbtn:SetTextColor(btntextcol)

		dbtn.DoClick = function(self2)
			if IsValid(self) and self.Skins and self2.skin and self.Skins[self2.skin] and self.Skins[self2.skin].tbl then
				self.Skin = self2.skin
				self:UpdateSkin()
				self:SyncToServerSkin()
				self:SaveSkin()
			end
		end

		--[[
		if !isimage then
			dbtn.Paint = function(self,wv,hv)
				draw.NoTexture()
				surface.SetDrawColor(buttoncolor_inactive)
				surface.DrawRect(0,0,wv,hv)
			end
		else
		]]
		--
		dbtn.Paint = function(self2, wv, hv)
			draw.NoTexture()

			if not self2.mat then
				self2.mat = Material(v.image and v.image or "vgui/tfa_csgo/default_flat")
			end

			surface.SetMaterial(self2.mat)
			surface.SetDrawColor(color_white)
			surface.DrawTexturedRect(0, 0, wv, hv)
			surface.SetDrawColor(bordercol)
			draw.NoTexture()
			surface.DrawRect(0, 0, 2, hv)
			surface.DrawRect(wv - 2, 0, 2, hv)
			surface.DrawRect(0, 0, wv, 2)
			surface.DrawRect(0, hv - 2, wv, 2)
		end

		--end
		local dlbl = vgui.Create("DLabel")
		dlbl:SetParent(scrollpanel)
		dlbl:SetFont(labfont.font)
		local xpos = 30 + 100 + 2 + 32
		dlbl:SetPos(xpos, yy - 100)
		dlbl:SetSize(tmpw - xpos - 30, 100)
		dlbl:SetText(name)
		dlbl.skin = k

		dlbl.DoClick = function(self2)
			if IsValid(self) and self.Skins and self2.skin and self.Skins[self2.skin] and self.Skins[self2.skin].tbl then
				self.Skin = self2.skin
				self:UpdateSkin()
				self:SaveSkin()
				self:SyncToServerSkin()
			end
		end

		local extrapadding = 4
		div = vgui.Create("DPanel")
		div:SetParent(scrollpanel)
		div:SetSize(tmpw / 2, 2)
		div:SetPos(0, yy + 2 + extrapadding)

		div.Paint = function(self2, wv, hv)
			if not self2.img then
				self2.img = Material("vgui/spellkaster/divgrad")
			end

			draw.NoTexture()
			surface.SetDrawColor(divcolor)
			surface.SetMaterial(self2.img)
			surface.DrawTexturedRect(0, 0, wv, hv)
		end

		yy = yy + 4 + extrapadding * 2
	end

	if div and div.Remove then
		div:Remove()
	end
end

function SWEP:SaveSkin()
	if CLIENT then
		if not file.Exists("tfa_csgo/", "DATA") then
			file.CreateDir("tfa_csgo")
		end

		local f = file.Open("tfa_csgo/" .. self:GetClass() .. ".txt", "w", "DATA")
		f:Write(self.Skin and self.Skin or "")
		f:Flush()
	end
end

function SWEP:SyncToServerSkin(skin)
	if not skin or string.len(skin) <= 0 then
		skin = self.Skin
	end

	if not skin then return end
	if not CLIENT then return end
	if not TFA.CSGO then return end
	net.Start("TFA_CSGO_SKIN")
	net.WriteEntity(self)
	net.WriteString(skin)
	net.SendToServer()
end

function SWEP:ReadSkin()
	if CLIENT then
		local cl = self:GetClass()

		if not TFA_CSGO_SKINS then
			TFA_CSGO_SKINS = {}
		end

		if TFA_CSGO_SKINS[cl] then
			for k, v in pairs(TFA_CSGO_SKINS[cl]) do
				self.Skins[k] = v
			end
		end

		local path = "tfa_csgo/" .. cl .. ".txt"

		if file.Exists(path, "DATA") then
			local f = file.Read(path, "DATA")

			if f and v ~= "" then
				self.Skin = f
			end
		end

		self:SetNWString("skin", self.Skin)
		self:SyncToServerSkin()
	end

	self:UpdateSkin()
end

function SWEP:UpdateSkin()
	if (CLIENT and IsValid(LocalPlayer()) and LocalPlayer() ~= self.Owner) or (SERVER) then
		self:SetMaterial("")
		self.Skin = self:GetNWString("skin")

		if self.Skins and self.Skins[self.Skin] and self.Skins[self.Skin].tbl then
			self:SetSubMaterial(nil, nil)

			for k, str in ipairs(self.Skins[self.Skin].tbl) do
				if type(str) == "string" then
					self:SetSubMaterial(k - 1, str)

					return
				end
			end
		end
	end

	if not self.Skin then
		self.Skin = ""
	end

	if self.Skin and self.Skins and self.Skins[self.Skin] then
		self.MaterialTable = self.Skins[self.Skin].tbl

		for k, v in pairs(self.MaterialTable) do
			if type(v) == "string" and string.sub(v, 1, 4) == "http" then
				GetHTMLMaterialVL(v, function(matn)
					if IsValid(self) then
						self.MaterialTable[k] = matn
						self.MaterialCache = nil
						self.MaterialCached = nil
						self.MaterialsCache = nil
						self.MaterialsCached = nil
					end
				end)
			end
		end

		self.MaterialCache = nil
		self.MaterialCached = nil
		self.MaterialsCache = nil
		self.MaterialsCached = nil
	end
end

function SWEP:Think()
	if ((CLIENT and IsValid(LocalPlayer()) and LocalPlayer() ~= self.Owner) or SERVER) and self.Skin ~= self:GetNWString("skin") then
		self.Skin = self:GetNWString("skin")
		self:UpdateSkin()
	end
end