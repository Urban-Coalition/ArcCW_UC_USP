att.PrintName = "USP 17-Round Magazine Extension"
att.AbbrevName = "17-Round Extended Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "P93 17-Round Magazine Extension"
end

att.SortOrder = 33
att.Icon = Material("entities/att/acwatt_uc_usp_mag_extended.png", "smooth mips")
att.Description = "Aftermarket magazine extension with a thickened base for improved ergonomics. Heavier and throws off weapon balance, but does allow you to fire for longer."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_usp_mag"

att.AutoStats = true

att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Add_ClipSize = 5

att.Mult_HipDispersion = 1.25
att.Mult_Sway = 1.5
att.Mult_ShootSpeedMult = 0.95

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_ext"
end