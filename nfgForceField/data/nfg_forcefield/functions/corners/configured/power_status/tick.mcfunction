# Power Status - Tick
# Pay attention to Power Updates
#####################################
# Started as: execute as @e[tag=ff_corner,tag=ff_configured] at @s

# Detected Power Mods to change things
function nfg_forcefield:corners/configured/power_status/power_mods

# Remove Power Modded tag if there's no blocks near it. This stops excessive power on/off cycles.
execute unless entity @e[distance=..1,limit=1,type=item,nbt={Item:{Count:64b}}] run tag @s remove ff_power_modded
