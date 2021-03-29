# Corners - Tick
# Per tick, detect, error-check, and evaluate Corners!
#####################################
# Started as: execute as @e[tag=ff_corner] at @s

# Newly Placed Corners (Starting AND Ending) handling...
execute if entity @s[tag=ff_init,tag=!ff_configured] run function nfg_forcefield:corners/placing/tick

# Placed, un-errored AND un-configured Corners need to configure
execute if entity @s[tag=!ff_init,tag=!ff_configured,tag=ff_no_errors] run function nfg_forcefield:corners/unconfigured/tick

# Handle configured corners (ie, power mods, tooltips, etc)
execute if entity @s[tag=!ff_init,tag=ff_configured,tag=ff_no_errors] run function nfg_forcefield:corners/configured/tick
