# Power Status - Init
# Update various aspects of the Corner based on the Power Status

# Handle Power Ups (aka, tag=ff_power_changed)
execute if entity @s[tag=ff_power_on] run function nfg_forcefield:corners/configured/power_status/state/on
execute if entity @s[tag=ff_power_off] run function nfg_forcefield:corners/configured/power_status/state/off

tag @s remove ff_power_changed
