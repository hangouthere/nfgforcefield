# Corners - Error: Check Players
# Checks if there's too many players near a freshly placed Corner.
# This is to alleviate ambiguous assignments as to who should be the builder.
#   (ie, another player can be closer to the corner that is freshly placed,
#    rather than the player that actually placed it)
#####################################
# Started as:

#execute store result score #_numPlayersNearby ff_calcs if entity @a[distance=..7]
execute store result score #_numPlayersNearby ff_calcs if entity @e[distance=..7]

# Detected that too many players are nearby
execute if score #_numPlayersNearby ff_calcs matches 3.. run function nfg_forcefield:corners/unconfigured/error_checking/detected_too_many_players
