att.PrintName = "USP9 9x19mm Parabellum Conversion"
att.AbbrevName = "9x19mm Parabellum"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "P93-9 9x19mm Parabellum Conversion"
end

att.SortOrder = 9
att.Icon = Material("entities/att/acwatt_uc_usp_bullets_9mm.png", "smooth mips")
att.Description = "A popular alternative caliber to .45 ACP. With a reduced diameter, the round achieves greater muzzle velocity and magazine capacity."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_usp_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = "9x19mm Parabellum"

att.Mult_Damage = 30 / 45
att.Mult_DamageMin = 17 / 15
att.Mult_Penetration = 6 / 9
att.Mult_RangeMin = 15 / 10
att.Mult_RPM = 1.05
att.Mult_ReloadTime = .9

att.Mult_Recoil = 0.8
att.Mult_RecoilSide = 0.75


--att.Mult_ClipSize = 15 / 12
att.Add_ClipSize = 3
att.Override_ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
att.Override_ShellScale = 1

att.Hook_GetShootSound = function(wep, sound) -- Temporary
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp.ogg"
    else
        return "weapons/arccw_ud/glock/fire.ogg"
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire.ogg" end
end