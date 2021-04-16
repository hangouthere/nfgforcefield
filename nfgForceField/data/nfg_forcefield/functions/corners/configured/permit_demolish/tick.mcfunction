# Corners - Demolishion Detection
# Creates temp entity to detect if the corner is broken by player.
#####################################

# Get ID
execute store result score #_ff_curr_ownerId _ff_calcs run data get entity @s ArmorItems[0].tag._ff.id.owner

# Handle detection mechanism creation/destruction tracking
execute if score #_ff_curr_ownerId _ff_calcs = @p _nfg_player_id run function nfg_forcefield:corners/configured/permit_demolish/track_corner_owner
