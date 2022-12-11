att.PrintName = "6\" LP93 Slide"
att.AbbrevName = "6\" Long Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "6\" USP Elite Slide"
    att.AbbrevName = "6\" Elite Slide"
end

att.Icon = Material("entities/att/acwatt_uc_usp_slide_long.png", "smooth mips")
att.Description = "A somewhat uncommon long polymer slide.\nThe longer barrel improves precision but is awkward to handle."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_usp_slide"
att.SortOrder = 6

att.AutoStats = true

att.Mult_DrawTime = 1.15
att.Mult_HolsterTime = 1.15
att.Add_BarrelLength = 2

att.Mult_Sway = 1.25
att.Mult_HipDispersion = 1.15
att.Mult_SightTime = 1.1

att.Mult_AccuracyMOA = 0.85
att.Mult_Recoil = 0.85
att.Mult_Range = 1.25