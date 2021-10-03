local ROLE = {}

ROLE.nameraw = "bouncer"
ROLE.name = "Bouncer"
ROLE.nameplural = "Bouncers"
ROLE.nameext = "a Bouncer"
ROLE.nameshort = "bnc"

ROLE.desc = [[You are {rol}!
To help you protect your fellow innocents, you have been given a bat.]]

ROLE.team = ROLE_TEAM_INNOCENT

ROLE.shop = nil
ROLE.loadout = {"weapon_ttt_homebat"}

ROLE.startingcredits = nil

ROLE.startinghealth = 175
ROLE.maxhealth = 175

ROLE.isactive = nil
ROLE.selectionpredicate = nil
ROLE.shouldactlikejester = nil

ROLE.translations = {}

ROLE.convars = {}

RegisterRole(ROLE)

if SERVER then
    AddCSLuaFile()
end

if CLIENT then
    hook.Add("TTTTutorialRoleText", "BouncerTutorialRoleText", function(role, titleLabel, roleIcon)
        if role == ROLE_BOUNCER then
            local roleColor = ROLE_COLORS[ROLE_INNOCENT]
            return "The " .. ROLE_STRINGS[ROLE_BOUNCER] .. " is a member of the <span style='color: rgb(" .. roleColor.r .. ", " .. roleColor.g .. ", " .. roleColor.b .. ")'>innocent team</span> who spawns with extra health and a bat."
        end
    end)
end