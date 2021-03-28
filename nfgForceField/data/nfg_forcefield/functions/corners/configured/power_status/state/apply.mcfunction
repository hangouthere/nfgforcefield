# Power Status - Init
# Update various aspects of the Corner based on the Power Status
#####################################
# Started as: execute as @e[tag=ff_corner,tag=ff_configured,tag=ff_power_change] at @s

# Handle Power Ups (aka, tag=ff_power_change)
execute if entity @s[tag=ff_power_on] run function nfg_forcefield:corners/configured/power_status/state/on
execute if entity @s[tag=ff_power_off] run function nfg_forcefield:corners/configured/power_status/state/off

tag @s remove ff_power_change
