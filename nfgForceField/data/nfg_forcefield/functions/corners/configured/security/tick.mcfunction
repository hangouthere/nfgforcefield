# Corners - Demolishion Detection
# Creates temp entity to detect if the corner is broken by player.
#####################################

# Get Owner ID of the Corner, and eval if it matches the current user
execute store result score #ff_curr_ownerId ff_calcs run data get entity @s ArmorItems[0].tag.IDs.owner

# User is the Owner, handle near/far tracking!
execute if score #ff_curr_ownerId ff_calcs = @p[distance=..8] nfg_player_id run function nfg_forcefield:corners/configured/security/owner/track

# User is NOT the Owner, handle near/far tracking!
execute unless score #ff_curr_ownerId ff_calcs = @p[distance=..16] nfg_player_id run function nfg_forcefield:corners/configured/security/stranger/track
