# Move ff_building_helper to player to follow!
tp @e[tag=ff_building_helper,sort=nearest,limit=1] ~ ~ ~

# Placement Helper Overlay (HUD while placing Corners)
execute if entity @s[tag=ff_building] run function nfg_forcefield:player/ff_building/placing_helper/tick
