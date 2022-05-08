att.PrintName = "USP Nickel Finish"
att.AbbrevName = "Nickel"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "P93 Nickel Finish"
end
--att.Icon = Material("entities/att/acwatt_ur_deagle_finish_chrome.png","mips smooth")
att.Description = "Your oppressors had best get a good look at the last thing they will see.\n\n\"As a consequence of your action, this entity will continue, and this entity will not.\""
att.Slot = "uc_usp_skin"
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.SortOrder = 2

att.IgnorePickX = true