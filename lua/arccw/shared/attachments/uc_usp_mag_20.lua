att.PrintName = "USP 20-Round Extended Mag"
att.AbbrevName = "20-Round Extended Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "P93 20-Round Extended Mag"
end

att.SortOrder = 33
att.Icon = Material("entities/att/acwatt_ud_glock_mag_33.png", "smooth mips")
att.Description = "Extended magazine with a thickened base for improved ergonomics. Heavier and throws off weapon balance, but does allow you to fire for longer."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_usp_mag"

att.AutoStats = true

att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Override_ClipSize = 20

att.Mult_HipDispersion = 1.25
att.Mult_Sway = 1.5
att.Mult_ShootSpeedMult = 0.95

att.Hook_SelectReloadAnimation = function(wep, anim)
    --return anim .. "_20" -- Disabled until proper anims are made
end