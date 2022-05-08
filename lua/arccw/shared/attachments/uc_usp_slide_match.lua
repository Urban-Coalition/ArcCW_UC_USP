att.PrintName = "6\" P93 Match Slide"
att.AbbrevName = "6\" Match Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "6\" USP Match Slide"
end

att.Icon = Material("entities/att/acwatt_ud_glock_slide_subcompact.png", "smooth mips")
att.Description = "Competition slide with a large barrel weight affixed to the end. This counterweight reduces recoil significantly, but leaves little room for further customization.\n\nAlso a popular choice among free men."
att.Desc_Cons = {
    "uc.nomuzzle",
    "uc.noubs"
}
att.AutoStats = true 
att.SortOrder = 7

att.Slot = "uc_usp_slide"

att.Mult_Recoil = .7

att.Mult_SightTime = 1.4
att.Add_BarrelLength = 2

att.GivesFlags = {"usp_match"}