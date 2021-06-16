# Power Status - Power Mods
# Handle updating the power status based on world events

# Switch to ON, if not already ON
execute if entity @s[tag=!ff_power_on] run execute at @e[distance=..1,limit=1,type=item,nbt={Item:{Count:64b, id: "minecraft:emerald_block"}}] run function nfg_forcefield:corners/configured/power_status/change/on

# Switch to OFF, if not already OFF
execute if entity @s[tag=!ff_power_off] run execute at @e[distance=..1,limit=1,type=item,nbt={Item:{Count:64b, id: "minecraft:redstone_block"}}] run function nfg_forcefield:corners/configured/power_status/change/off
