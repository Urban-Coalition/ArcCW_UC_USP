att.PrintName = "7\" P93 Match Slide"
att.AbbrevName = "7\" Match Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "7\" USP Match Slide"
end

att.Icon = Material("entities/att/acwatt_uc_usp_slide_match.png", "smooth mips")
att.Description = "Competition slide with a large barrel weight affixed to the end. This counterweight reduces recoil significantly, but leaves little room for further customization.\n\nA popular choice for free men."
att.Desc_Cons = {
    "uc.nomuzzle",
    "uc.noubs"
}
att.AutoStats = true 
att.SortOrder = 7

att.Hook_SelectFireAnimation = function(wep, anim)
    return anim .. "_match"
end

att.Slot = "uc_usp_slide"

att.Mult_Recoil = .7

att.Mult_SightTime = 1.4
att.Add_BarrelLength = 4

att.GivesFlags = {"usp_match"}