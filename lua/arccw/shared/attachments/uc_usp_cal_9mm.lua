att.PrintName = "USP9 9x19mm Parabellum Conversion"
att.AbbrevName = "9x19mm Parabellum"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "P93-9 9x19mm Parabellum Conversion"
end

att.SortOrder = 9
att.Icon = Material("entities/att/uc_bullets/9x19.png", "smooth mips")
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

att.Mult_PhysBulletMuzzleVelocity = 355 / 315

--att.Mult_ClipSize = 15 / 12
att.Add_ClipSize = 3
att.Override_ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
att.Override_ShellScale = 1

att.Override_PhysTracerProfile = 0
att.Override_PhysTracerProfile_Priority = -1
att.Override_TracerNum = 1
att.Override_TracerNum_Priority = -1

local path = ")^weapons/arccw_uc_usp/"

att.Hook_GetShootSound = function(wep, sound) -- Temporary
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp.ogg"
    else
        return {path .. "fire-9-01.ogg", path .. "fire-9-02.ogg", path .. "fire-9-03.ogg", path .. "fire-9-04.ogg", path .. "fire-9-05.ogg", path .. "fire-9-06.ogg"}
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        return -- fallback to script
    else
        return {path .. "fire-9-dist-01.ogg", path .. "fire-9-dist-02.ogg", path .. "fire-9-dist-03.ogg", path .. "fire-9-dist-04.ogg", path .. "fire-9-dist-05.ogg", path .. "fire-9-dist-06.ogg"}
    end
end