att.PrintName = "USP40 .40 Smith & Wesson Conversion"
att.AbbrevName = ".40 Smith & Wesson"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "P93-40 .40 Smith & Wesson Conversion"
end

att.SortOrder = 8
att.Icon = Material("entities/att/acwatt_ud_glock_caliber.png", "smooth mips")
att.Description = "Stubby caliber which the USP was designed around. Retains damage over distance better than other calibers."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_usp_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".40 Smith & Wesson"

att.Mult_Damage = 30 / 45
att.Mult_DamageMin = 23 / 15
att.Mult_Penetration = 8 / 9
att.Mult_RangeMin = 20 / 10

att.Mult_Recoil = 0.85
att.Mult_RecoilSide = 0.75


att.Mult_ClipSize = 13 / 12
att.Override_ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
att.Override_ShellScale = 1

att.Hook_GetShootSound = function(wep, sound) -- Temporary
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_40.ogg"
    else
        return "weapons/arccw_ud/glock/fire_40.ogg"
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return { "weapons/arccw_ud/glock/fire_dist_40.ogg" }
    end
end