# Corners - Tick
# Per tick, detect, error-check, and evaluate Corners!
#####################################
# Started as: execute as @e[tag=ff_corner] at @s

# Unconfigured Corner Handling
execute if entity @s[tag=!ff_configured] run function nfg_forcefield:corners/unconfigured/tick

# Handle configured Corners (ie, power mods, tooltips, etc)
execute if entity @s[tag=!ff_init,tag=ff_configured] run function nfg_forcefield:corners/configured/tick

# Security System for Corners
execute if entity @p[distance=..9] run function nfg_forcefield:corners/security/tick
