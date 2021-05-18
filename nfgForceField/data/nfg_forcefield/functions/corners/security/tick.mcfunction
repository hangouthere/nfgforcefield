# Get Player ID of the Corner, and eval if it matches the current user
execute store result score #ff_curr_playerId ff_calcs run data get entity @s ArmorItems[0].tag.IDs.player

# User is the Owner, handle near/far tracking!
execute if score #ff_curr_playerId ff_calcs = @p[distance=..8] nfg_player_id run function nfg_forcefield:corners/security/owner/track

# Treat `ff_admin` as an "owner" in that it won't bounce them back (unless they're building and error, of course)
execute if entity @p[distance=..8,tag=ff_admin,tag=!ff_building] run function nfg_forcefield:corners/security/owner/track

# User is NOT the Owner, handle near/far tracking (except for `ff_admins`)!
execute unless entity @p[tag=ff_admin,tag=!ff_building] unless entity @p[gamemode=creative] unless entity @p[gamemode=spectator] unless score #ff_curr_playerId ff_calcs = @p[distance=..16] nfg_player_id run function nfg_forcefield:corners/security/stranger/track
