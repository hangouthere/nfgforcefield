# Corners - Demolishion Detection
# Creates temp entity to detect if the corner is broken by player.
#####################################

# Get ID
execute store result score #ff_curr_ownerId ff_calcs run data get entity @s ArmorItems[0].tag.IDs.owner

# Handle detection mechanism creation/destruction tracking
execute if score #ff_curr_ownerId ff_calcs = @p[distance=..8] nfg_player_id run function nfg_forcefield:corners/configured/permit_demolish/track_corner_owner
