# User Selected OFF
execute if score #itemOff ff_config matches 1.. run data modify entity @s ArmorItems[0].tag.protections.mob set value 0

# User Selected Perimeter
execute if score #itemPerimeter ff_config matches 1.. run data modify entity @s ArmorItems[0].tag.protections.mob set value 1

# User Selected Volume
execute if score #itemVolume ff_config matches 1.. run data modify entity @s ArmorItems[0].tag.protections.mob set value 2

function nfg_forcefield:corners/configured/power_status/change/schedule_update
