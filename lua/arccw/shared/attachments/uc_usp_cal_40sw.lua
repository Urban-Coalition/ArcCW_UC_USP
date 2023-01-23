att.PrintName = "USP40 .40 Smith & Wesson Conversion"
att.AbbrevName = ".40 Smith & Wesson"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "P93-40 .40 Smith & Wesson Conversion"
end

att.SortOrder = 8
att.Icon = Material("entities/att/uc_bullets/40sw.png", "smooth mips")
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

--att.Mult_ClipSize = 13 / 12
att.Add_ClipSize = 1
att.Override_ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
att.Override_ShellScale = 1

att.Override_PhysTracerProfile = 0
att.Override_PhysTracerProfile_Priority = -1
att.Override_TracerNum = 1
att.Override_TracerNum_Priority = -1

local path = ")^weapons/arccw_uc_usp/"

att.Hook_GetShootSound = function(wep, sound) -- Temporary
    if wep:GetBuff_Override("Silencer") then
        return {path .. "fire-40-sup-01.ogg", path .. "fire-40-sup-02.ogg", path .. "fire-40-sup-03.ogg", path .. "fire-40-sup-04.ogg", path .. "fire-40-sup-05.ogg", path .. "fire-40-sup-06.ogg"}
    else
        return {path .. "fire-40-01.ogg", path .. "fire-40-02.ogg", path .. "fire-40-03.ogg", path .. "fire-40-04.ogg", path .. "fire-40-05.ogg", path .. "fire-40-06.ogg"}
    end
end

local tail = ")^/arccw_uc/common/40sw/"

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            tail .. "fire-dist-40sw-pistol-ext-01.ogg",
            tail .. "fire-dist-40sw-pistol-ext-02.ogg",
            tail .. "fire-dist-40sw-pistol-ext-03.ogg",
            tail .. "fire-dist-40sw-pistol-ext-04.ogg",
            tail .. "fire-dist-40sw-pistol-ext-05.ogg",
            tail .. "fire-dist-40sw-pistol-ext-06.ogg"
        }
    end
end

-- att.GivesFlags = {"cal_subsonic"}
-- att.ExcludeFlags = {"powder_subsonic"}