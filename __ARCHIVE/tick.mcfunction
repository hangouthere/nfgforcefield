# DEBUG tick
# Only executes if DEBUG _ff_settings == 1

execute as @e[type=armor_stand,tag=ff_coords] at @s run function nfg_forcefield:_debug/armorstand_coords

function nfg_forcefield:_debug/circle_maker/tick

#execute as @a at @s run function nfg_forcefield:_debug/test
