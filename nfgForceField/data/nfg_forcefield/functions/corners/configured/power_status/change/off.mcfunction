# Switch to OFF
tag @s remove ff_power_on
tag @s add ff_power_off

data modify entity @s ArmorItems[0].tag.protections.powered set value 0

function nfg_forcefield:corners/configured/power_status/change/detected
