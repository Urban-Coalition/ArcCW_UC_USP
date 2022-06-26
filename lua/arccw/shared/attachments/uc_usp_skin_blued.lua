att.PrintName = "USP Blued Steel Finish"
att.AbbrevName = "Blued Steel"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "P93 Blued Steel Finish"
end
att.Icon = Material("entities/att/acwatt_uc_usp_skin_blued.png","mips smooth")
att.Description = "Whether you enforce or engage the law of the land, you are a warrior of a bygone era.\n\n\"Alright, let's move out.\""
att.Slot = "uc_usp_skin"
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.SortOrder = 2

att.IgnorePickX = true
att.Free = true