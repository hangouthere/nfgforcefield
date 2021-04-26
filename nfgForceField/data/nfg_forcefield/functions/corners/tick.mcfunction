# Corners - Tick
# Per tick, detect, error-check, and evaluate Corners!
#####################################
# Started as: execute as @e[tag=ff_corner] at @s

execute store result score #ff_curr_ownerId ff_calcs run data get entity @s ArmorItems[0].tag.IDs.owner

# Unconfigured Corner Handling
execute if entity @s[tag=!ff_configured] run function nfg_forcefield:corners/unconfigured/tick

# Handle configured Corners (ie, power mods, tooltips, etc)
execute if entity @s[tag=!ff_init,tag=ff_configured,tag=ff_no_errors] run function nfg_forcefield:corners/configured/tick
