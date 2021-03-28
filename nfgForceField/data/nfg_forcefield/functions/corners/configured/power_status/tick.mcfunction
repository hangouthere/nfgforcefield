# Power Status - Tick
# Pay attention to Power Updates
#####################################
# Started as: execute as @e[tag=ff_corner,tag=ff_configured] at @s

# Detect Mod Changes to the forcefield (ie, power status)
execute as @s[tag=!ff_power_modded] run function nfg_forcefield:corners/configured/power_status/change/detect

# Handle Mod Changes
execute as @s[tag=ff_power_change] run function nfg_forcefield:corners/configured/power_status/state/apply

# Remove Power Modded tag if there's no blocks near it. This stops excessive power on/off cycles.
execute unless entity @e[distance=..1,limit=1,type=item,nbt={Item:{Count:64b}}] run tag @s remove ff_power_modded
