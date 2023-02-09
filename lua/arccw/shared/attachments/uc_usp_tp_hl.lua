att.PrintName = "Free Man"
att.Icon = Material("entities/att/acwatt_uc_usp_tp_hl.png", "smooth mips")
att.Description = "You are the right man in the wrong place."
att.Desc_Pros = {
    --"+6% Coolness"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.Slot = "uc_usp_tp"

att.AutoStats = true
att.SortOrder = 999

att.LHIK = true
att.LHIKHide = true

att.Override_ActivePos = Vector(1, 5, .75)
att.Override_ActiveAng = Angle(-2, -2, 0)

att.RequireFlags = {"uc_usp_slide_match", "uc_usp_skin_nickel", "uc_tp_gong"}
att.HideIfBlocked = true

att.Free = true
att.IgnorePickX = true

att.Ignore = true