SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.UC_CategoryPack = "5Urban One-offs"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/ud_shells/9.mdl"
SWEP.ShellScale = 1.6
--SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 5
SWEP.TracerNum = 1
SWEP.TracerWidth = 1
SWEP.ShootPitch = 100

-- Fake name --

SWEP.PrintName = "P93"

-- True name --

SWEP.TrueName = "USP Tactical"

-- Trivia --

SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = [[Versatile handgun designed for foreign and domestic law enforcement. It discards the ambitions of the P7 pattern for a more conventional form which has proved popular. This "Tactical" variant has a threaded barrel designed for sound suppressors.

Can be chambered for a variety of calibers, allowing its trademark performance to be fine-tuned for a number of roles.]]
SWEP.Trivia_Manufacturer = "Crowdley & Nelson"
SWEP.Trivia_Calibre = ".45 ACP"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "Germany"
SWEP.Trivia_Year = 1993

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Heckler & Koch"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_uc_usp.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_uc_usp.mdl"
SWEP.ViewModelFOV = 66
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

-- Damage parameters --

SWEP.Damage = 45 -- 3 shot short range kill (2 shot chest point-blank)
SWEP.DamageMin = 15 -- 7 shot long range kill
SWEP.RangeMin = 10
SWEP.Range = 80 -- 3 shot until ~40m
SWEP.Penetration = 9
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 315
SWEP.PhysBulletMuzzleVelocity = 315

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

SWEP.PhysTracerProfile = 7
SWEP.TracerNum = 0

-- Jamming --

--SWEP.Malfunction = true
SWEP.MalfunctionJam = true
--SWEP.MalfunctionMean = 21
SWEP.MalfunctionPostFire = true
SWEP.MalfunctionTakeRound = false

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 12

-- Recoil --

SWEP.Recoil = 1.25
SWEP.RecoilSide = 0.75

SWEP.RecoilRise = 0.25
SWEP.VisualRecoilMult = 1.0
SWEP.MaxRecoilBlowback = .5
SWEP.MaxRecoilPunch = .8

SWEP.Sway = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 420
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC --

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 70

-- Accuracy --

SWEP.AccuracyMOA = 5
SWEP.HipDispersion = 500
SWEP.MoveDispersion = 250
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "m1911"

-- Speed multipliers --

SWEP.SpeedMult = 0.965
SWEP.SightedSpeedMult = 0.875
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 1

-- Length --

SWEP.BarrelLength = 8
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(0.3, 3, 1.6)
SWEP.HolsterAng = Angle(-14, 0, -0.5)

SWEP.SprintPos = Vector(0.3, 3, 1)
SWEP.SprintAng = Angle(-5, 15, -20)

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.IronSightStruct = {
     Pos = Vector(-2.29, 10, 1.5),
     Ang = Angle(0.27, 0.07, 5.5),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0.3, 3, 1.3)
SWEP.ActiveAng = Angle(0, 0, -0.5)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, 0, 0)
SWEP.CrouchAng = Angle(0, 0, -8)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-8.7, 2.5, -4.2),
    ang        =    Angle(-6, -6, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

local path = ")^weapons/arccw_uc_usp/"
local path1 = ")^weapons/arccw_ur/1911/"
local common = ")^/arccw_uc/common/"
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.ShootSoundSilenced = {
    path .. "fire-sup-01.ogg",
    path .. "fire-sup-02.ogg",
    path .. "fire-sup-03.ogg",
    path .. "fire-sup-04.ogg",
    path .. "fire-sup-05.ogg",
    path .. "fire-sup-6.ogg"
}
SWEP.DistantShootSound = nil
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"
SWEP.ShootDrySound = path .. "dryfire.ogg"

SWEP.DistantShootSoundOutdoors = {
    path .. "fire-dist-01.ogg",
    path .. "fire-dist-02.ogg",
    path .. "fire-dist-03.ogg",
    path .. "fire-dist-04.ogg",
    path .. "fire-dist-05.ogg",
    path .. "fire-dist-06.ogg"
}
SWEP.DistantShootSoundIndoors = {
    common .. "fire-dist-int-pistol-01.ogg",
    common .. "fire-dist-int-pistol-02.ogg",
    common .. "fire-dist-int-pistol-03.ogg",
    common .. "fire-dist-int-pistol-04.ogg",
    common .. "fire-dist-int-pistol-05.ogg",
    common .. "fire-dist-int-pistol-06.ogg"
}
SWEP.DistantShootSoundOutdoorsSilenced = {
    common .. "sup_tail.ogg" -- i know .45ACP is subsonic i'll make atts change this when i'm not feeling lazy
}
SWEP.DistantShootSoundIndoorsSilenced = {
    common .. "sup_tail.ogg"
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 1
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3", [4] = "Bullet4",    [5] = "Bullet5",    [6] = "Bullet6", [7] = "Bullet7"
}

SWEP.DefaultBodygroups = "000000000"

SWEP.AttachmentElements = {
    ["pistol_rail"] = {
        VMBodygroups = {
            {ind = 4,bg = 1},
        }
        -- todo: pistol rail
    },
    ["uc_usp_slide_compact"] = {
        VMBodygroups = {
            {ind = 0,bg = 1},
            {ind = 1,bg = 1},
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, -2.9, .18),
                vang = Angle(0, 90, 0),
            }
        },
        NameChange = "CP93",
        TrueNameChange = "USPCT",
    },
    ["uc_usp_slide_ext"] = {
        VMBodygroups = {
            {ind = 1,bg = 4},
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, -4.26, .18),
                vang = Angle(0, 90, 0),
            }
        },
        NameChange = "LP93",
        TrueNameChange = "USP Elite",
    },
    ["uc_usp_slide_match"] = {
        VMBodygroups = {
            {ind = 1,bg = 2},
            {ind = 3,bg = 1},
        },
        NameChange = "P93 Match",
        TrueNameChange = "USP Match",
    },
    ["uc_usp_slide_cs"] = {
        VMBodygroups = {
            {ind = 1,bg = 3},
        },
        NameChange = "K&M .45",
        TrueNameChange = "USP Agency",
    },
    ["uc_usp_mag_ext"] = {
        VMBodygroups = {
            {ind = 2,bg = 1},
        }
    },
    ["uc_usp_skin_nickel"] = {
        VMSkin = 1
    },
    ["uc_usp_skin_blued"] = {
        VMSkin = 2,
        VMBodygroups = {
            --{ind = 1,bg = 3},
        },
    }
}

SWEP.Hook_NameChange = function(wep,name)

end

-- Animations --

SWEP.Animations = {
    ["idle_empty"] = {
        Source = "idle_empty",
        Time = 10 / 30,
    },
    ["idle"] = {
        Source = "idle",
        Time = 10 / 30,
    },
    ["idle_jammed"] = {
        Source = "idle_jam",
        Time = 10 / 30,
    },
    ["ready"] = {
        Source = "fix",
        Time = 1.6,
        MinProgress = 1.2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        ShellEjectAt = false,
        ProcDraw = true,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            {s = path .. "draw.ogg", t = 0},
            { s = path .. "slidepull.ogg",t = 28 / 60},
            { s = path .. "slidedrop1.ogg",t = 35 / 60},
        },
    },
    ["draw"] = {
        Source = "draw",
        Time = .75,
        MinProgress = .4,
        SoundTable = {
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            --{s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = .75,
        MinProgress = .4,
        SoundTable = {
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            --{s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["draw_jam"] = {
        Source = "draw_jam",
        Time = .75,
        MinProgress = .4,
        SoundTable = {
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            --{s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["holster"] = {
        Source = "holster",
        Time = 18 / 30,
        SoundTable = {
            {s = common .. "cloth_2.ogg", t = 0},
            {s = path .. "holster.ogg", t = 0.2}, -- Not Temporary
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 18 / 30,
        SoundTable = {
            {s = common .. "cloth_2.ogg", t = 0},
            {s = path .. "holster.ogg", t = 0.2}, -- Not Temporary
        },
    },
    ["holster_jam"] = {
        Source = "holster_jam",
        Time = 18 / 30,
        SoundTable = {
            {s = common .. "cloth_2.ogg", t = 0},
            {s = path .. "holster.ogg", t = 0.2}, -- Not Temporary
        },
    },

    ["fire"] = {
        Source = "fire",
        Time = 30 / 30,
        ShellEjectAt = 0,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 24 / 30,
        ShellEjectAt = 0,
        SoundTable = {{ s = path .. "mech_last.ogg", t = 0 }},
    },
    ["fire_jammed"] = {
        Source = "fire_jam",
        Time = 30 / 30,
        MinProgress = 0.5,
        ShellEjectAt = false,
        SoundTable = {
            --{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }
        },
    },

    -- 12-R Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        MinProgress = 1.3525,
        Time = 65 / 30,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.62,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magpouch_pull_small.ogg", t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 10 / 60, c = ca },
            { s = path .. "magout1.ogg", t = 26 / 60, c = ca },
            { s = rottle, t = 10 / 60, c = ca },
            { s = rottle, t = 55 / 60, c = ca },
            { s = common ..  "magpouch_replace_small.ogg", t = 80 / 60, c = ca },
            { s = path .. "magin1.ogg", t = 42 / 60, c = ca },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        MinProgress = 1.75,
        Time = 75 / 30,
        LastClip1OutTime = 0.76,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.55,
        LHIKOut = 0.7,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            { s = path .. "magout1.ogg", t = 16 / 60, c = ca },
            { s = rottle, t = 10 / 60, c = ca },
            { s = common .. "magpouch_pull_small.ogg", t = 29 / 60, c = ca },
            { s = common .. "pistol_magdrop.ogg", t = 40 / 60, c = ca },
            { s = rottle, t = 55 / 60, c = ca },
            { s = path .. "magin1.ogg", t = 64 / 60, c = ca },
            { s = rottle, t = 90 / 60, c = ca },
            { s = path .. "slidedrop1.ogg", t = 94 / 60, c = ca },
        },
    },

    -- 17-R Reloads --

    ["reload_ext"] = {
        Source = "reload_ext",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        MinProgress = 1.3525,
        Time = 65 / 30,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.62,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magpouch_pull_small.ogg", t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 10 / 60, c = ca },
            { s = path .. "magout1.ogg", t = 26 / 60, c = ca },
            { s = rottle, t = 10 / 60, c = ca },
            { s = rottle, t = 55 / 60, c = ca },
            { s = common ..  "magpouch_replace_small.ogg", t = 80 / 60, c = ca },
            { s = path .. "magin1.ogg", t = 42 / 60, c = ca },
        },
    },
    ["reload_empty_ext"] = {
        Source = "reload_empty_ext",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        MinProgress = 1.75,
        Time = 75 / 30,
        LastClip1OutTime = 0.76,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.55,
        LHIKOut = 0.7,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            { s = path .. "magout1.ogg", t = 16 / 60, c = ca },
            { s = rottle, t = 10 / 60, c = ca },
            { s = common .. "magpouch_pull_small.ogg", t = 29 / 60, c = ca },
            { s = common .. "pistol_magdrop.ogg", t = 40 / 60, c = ca },
            { s = rottle, t = 55 / 60, c = ca },
            { s = path .. "magin1.ogg", t = 64 / 60, c = ca },
            { s = rottle, t = 90 / 60, c = ca },
            { s = path .. "slidedrop1.ogg", t = 94 / 60, c = ca },
        },
    },

 -- Jam Animations --

    ["fix"] = {
        Source = "fix",
        --Time = 40 / 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        ShellEjectAt = 30 / 60,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = path .. "slidepull.ogg",t = 28 / 60},
            { s = path .. "slidedrop1.ogg",t = 35 / 60},
        },
    },

    ["fix_empty"] = {
        Source = "fix_empty",
        --Time = 40 / 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        ShellEjectAt = 30 / 60,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = path .. "slidepull.ogg",t = 28 / 60},
        },
    },

    ["idle_jam"] = {
        Source = "idle_jam",
        -- time = 35 / 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
       -- SoundTable = {
        -- },
    },

    ["fire_jam"] = {
        Source = "fire_jam",
        -- time = 35 / 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
       -- SoundTable = {
        -- },
    },




    -- -- Inspecc --

    ["enter_inspect"] = {
        Source = "enter_inspect",
        time = 35 / 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        SoundTable = {
        },
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        time = 72 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        time = 66 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        -- SoundTable = {
        --     { s = rottle, t = 0 / 60, c = ca },
        --     { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
        --     { s = path .. "magout1.ogg", t = 8 / 60, c = ca },
        --     { s = rottle, t = 100 / 60, c = ca },
        --     { s = path .. "magin_miss.ogg", t = 106 / 60, c = ca },
        --     { s = path .. "magin1.ogg", t = 114 / 60, c = ca },
        --     { s = path .. "rack1.ogg", t = 155 / 60, c = ca },
        --     { s = rottle, t = 160 / 60, c = ca },
        --     { s = path .. "rack2.ogg", t = 178 / 60, c = ca },
        -- },
    },

    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        time = 35 / 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
        SoundTable = {
        },
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        time = 72 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        time = 66 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        -- SoundTable = {
        --     { s = rottle, t = 0 / 60, c = ca },
        --     { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
        --     { s = path .. "magout1.ogg", t = 8 / 60, c = ca },
        --     { s = rottle, t = 100 / 60, c = ca },
        --     { s = path .. "magin_miss.ogg", t = 106 / 60, c = ca },
        --     { s = path .. "magin1.ogg", t = 114 / 60, c = ca },
        --     { s = rottle, t = 160 / 60, c = ca },
        -- },
    },

    ["enter_inspect_jam"] = {
        Source = "enter_inspect_jam",
        time = 35 / 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
        SoundTable = {
        },
    },
    ["idle_inspect_jam"] = {
        Source = "idle_inspect_jam",
        time = 72 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_jam"] = {
        Source = "exit_inspect_jam",
        time = 66 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        -- SoundTable = {
        --     { s = rottle, t = 0 / 60, c = ca },
        --     { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
        --     { s = path .. "magout1.ogg", t = 8 / 60, c = ca },
        --     { s = rottle, t = 100 / 60, c = ca },
        --     { s = path .. "magin_miss.ogg", t = 106 / 60, c = ca },
        --     { s = path .. "magin1.ogg", t = 114 / 60, c = ca },
        --     { s = rottle, t = 160 / 60, c = ca },
        -- },
    },
}

-- ADS animation blending, thanks fesiug --

SWEP.Hook_Think = ArcCW.UC.ADSReload


-- Attachments --

SWEP.RejectAttachments = {
    --["uc_tp_gong"] = true
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic_lp"},
        DefaultAttName = "Iron Sights",
        Bone = "vm_charge",
        Offset = {
            vpos = Vector(-0.01, -.6, -.3),
            vang = Angle(90, 0, -90),
        },
        VMScale = Vector(.8,.8,.8),
        WMScale = VMScale,
        InstalledEles = {"pistol_rail"},
    },
    {
        PrintName = "Slide",
        Slot = {"uc_usp_slide"},
        DefaultAttIcon = Material("entities/att/acwatt_uc_usp_slide_default.png","mips smooth"),
        DefaultAttName = "5\" Tactical Slide",
    },
    {
        PrintName = "Caliber",
        Slot = {"uc_usp_caliber"},
        DefaultAttIcon = Material("entities/att/acwatt_uc_usp_bullets_45acp.png","mips smooth"),
        DefaultAttName = ".45 ACP",
        Bone = "vm_pivot",
        Offset = {
            vpos = Vector(3.07, -3.8, -27),
            vang = Angle(90, 0, -90),
        },
        DefaultFlags = {"cal_subsonic"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "vm_barrel",
        Offset = {
            vpos = Vector(0, -3.6, .275),
            vang = Angle(0, 90, 0),
        },
        ExcludeFlags = {"usp_match"},
        VMScale = Vector(.8, .8, .8)
    },
    {
        PrintName = "Tactical",
        InstalledEles = {"tac_rail"},
        Slot = {"tac_pistol"},
        Bone = "vm_pivot",
        Offset = {
            vpos = Vector(0, -.25, 3.75),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"usp_match"},
    },
    {
        PrintName = "Magazine",
        Slot = {"uc_usp_mag"},
        DefaultAttIcon = Material("entities/att/acwatt_uc_usp_mag_default.png","mips smooth"),
        DefaultAttName = "12-Round Mag",
    },
    {
        PrintName = "Stock",
        Slot = {"uc_stock", "go_stock_pistol_bt"},
        VMScale = Vector(1.1, 1.1, 1.1),
        Bone = "vm_pivot",
        Offset = {
            vpos = Vector(-0.05, 2.7, -3),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"FMJ\" Full Metal Jacket",
        DefaultAttIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Slot = "uc_ammo",
    },
    {
        PrintName = "Powder Load",
        Slot = "uc_powder",
        DefaultAttName = "Standard Load"
    },
    {
        PrintName = "Training Package",
        Slot = {"uc_tp","uc_usp_tp"},
        DefaultAttName = "Basic Training"
    },
    {
        PrintName = "Internals",
        Slot = "uc_fg", -- Fire group
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Charm",
        Slot = {"charm","fml_charm"},
        FreeSlot = true,
        Bone = "vm_charge",
        Offset = {
            vpos = Vector(0.42, -0.1, 5),
            vang = Angle(90, 0, -100),
        },
        VMScale = Vector(.6,.6,.6),
    },
    {
        PrintName = "Finish",
        Slot = {"uc_usp_skin"},
        DefaultAttName = "Black",
        DefaultAttIcon = Material("entities/att/acwatt_uc_usp_skin_default.png","mips smooth"),
        FreeSlot = true,
    },
}
