# Player is the Owner, handle near/far tracking!
execute if entity @s[tag=ff_owner] run function nfg_forcefield:corners/security/owner/track

# Treat `ff_admin` (that aren't also the Owner) nearly as an "owner" so that it won't bounce them back, and they have access to do admin things
execute if entity @s[tag=ff_admin,tag=!ff_owner,tag=!ff_building] run function nfg_forcefield:corners/security/ff_admin/track

# Player is NOT the Owner, handle near/far tracking (except for `ff_admins`, and OPs)!
execute if entity @s[gamemode=!creative,gamemode=!spectator,tag=!ff_building,tag=ff_stranger] unless entity @s[tag=ff_admin,tag=!ff_owner] run function nfg_forcefield:corners/security/stranger/track
