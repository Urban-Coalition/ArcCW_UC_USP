att.PrintName = "4\" CP93 Compact Slide"
att.AbbrevName = "4\" Compact Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "4\" USPCT Compact Slide"
end

att.Icon = Material("entities/att/acwatt_uc_usp_slide_compact.png", "smooth mips")
att.Description = "A shortened slide reduces the amount of holster to clear and further improves agility to the detriment of long-range performance and recoil control."
att.Desc_Pros = {
}
att.Desc_Cons = {
    --"uc.noubs"
}
att.Desc_Neutrals = {
}
att.Slot = "uc_usp_slide"
att.SortOrder = 4

att.AutoStats = true

att.Mult_DrawTime = 0.85
att.Mult_HolsterTime = 0.85
att.Add_BarrelLength = -1

att.Mult_Sway = 0.75
att.Mult_HipDispersion = 0.85
att.Mult_SightTime = 0.85

att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.8
att.Mult_Recoil = 1.2
