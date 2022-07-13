SWEP.Gun = ("clt_glck18fde") 
SWEP.Category				= "Clout's CSGO Weapons"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.PrintName				= "Glock 18 - Fade"		
SWEP.Slot				= 2			
SWEP.SlotPos				= 3			
SWEP.DrawAmmo				= true		
SWEP.DrawWeaponInfoBox		= false		
SWEP.BounceWeaponIcon   	= false	
SWEP.DrawCrosshair			= true		
SWEP.Weight					= 30		
SWEP.AutoSwitchTo			= true		
SWEP.AutoSwitchFrom			= true		
SWEP.HoldType 				= "pistol"		


SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= true
SWEP.ViewModel				= "models/weapons/v_glck18fdeclt.mdl"	
SWEP.WorldModel				= "models/weapons/w_pist_glock18.mdl"	
SWEP.ShowWorldModel			= false
SWEP.Base				= "clout_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("clt_glck-1")
SWEP.Primary.SilencedSound 	= Sound("")		
SWEP.Primary.RPM			= 400			
SWEP.Primary.ClipSize			= 20		
SWEP.Primary.DefaultClip		= 120		
SWEP.Primary.KickUp				= 0.4	
SWEP.Primary.KickDown			= 0.4	
SWEP.Primary.KickHorizontal		= 0.5	
SWEP.Primary.Automatic			= false	
SWEP.Primary.Ammo			= "pistol"		

SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= false
SWEP.CanBeSilenced		= false

SWEP.Secondary.IronFOV			= 65			

SWEP.data 				= {}				
SWEP.data.ironsights			= 1

SWEP.Primary.Damage		= 17	
SWEP.Primary.Spread		= .04	
SWEP.Primary.IronAccuracy = .02 


SWEP.IronSightsPos = Vector(4.38, -3.997, 2.65)
SWEP.IronSightsAng = Vector(1.125, 0, 0)
SWEP.SightsPos = Vector(4.38, -3.997, 2.65)
SWEP.SightsAng = Vector(1.125, 0, 0)
SWEP.RunSightsPos = Vector(-1.41, -1.407, -4.091)
SWEP.RunSightsAng = Vector(36.583, 0, 0)

SWEP.WElements = {
	["clt_glck18_wrld"] = { type = "Model", model = "models/weapons/w_glck18fdeclt.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.239, 0.642, 0.488), angle = Angle(-3.707, -5.283, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
