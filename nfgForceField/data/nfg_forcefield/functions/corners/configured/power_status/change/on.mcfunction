# Switch to ON
tag @s remove ff_power_off
tag @s add ff_power_on

data modify entity @s ArmorItems[0].tag.protections.powered set value 1

function nfg_forcefield:corners/configured/power_status/change/detected
