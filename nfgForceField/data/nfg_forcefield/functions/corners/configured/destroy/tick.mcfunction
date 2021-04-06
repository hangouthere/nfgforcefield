# Corners - Destroy Detection
# Creates temp entity to detect if the corner is broken by player.
#####################################
# Started as: execute as @e[tag=ff_corner,tag=ff_configured] at @s

# Utilize temp entity for detection of Corner existence
execute if entity @p[distance=..4] run function nfg_forcefield:corners/configured/destroy/near

# Disable detection
execute if entity @p[distance=4..6] run function nfg_forcefield:corners/configured/destroy/medium
