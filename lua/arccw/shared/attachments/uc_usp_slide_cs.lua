att.PrintName = "5\" K&M .45 Op. CS Slide"
att.AbbrevName = "5\" Op. CS Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "5\" USP Op. CS Slide"
end

att.Icon = Material("entities/att/acwatt_uc_usp_slide_cs.png", "smooth mips")
att.Description = "International contract slide with an ejection port on the left.\nGold-Sorcery™ makes it more precise when a suppressor is threaded onto the barrel, and allows the bullet to exert more force into brain tissue.\nThe extensive additions slow down firing registration, increasing the time required to cycle."
att.Desc_Pros = {
    "uc.usp.cs.1",
    "uc.usp.cs.2"
}
att.Desc_Cons = {
}
att.AutoStats = true 
att.SortOrder = 5
att.Slot = "uc_usp_slide"

att.A_Hook_Add_AccuracyMOA = function(wep,data)
    if data and wep:GetBuff_Override("Silencer") then
        data.add = data.add - 2
    end
end

att.Hook_BulletHit = function(wep,data)
    if SERVER and data.tr and data.tr.HitGroup == HITGROUP_HEAD then
        data.damage = data.damage * 1.25
    end
end

att.Mult_RPM = .75