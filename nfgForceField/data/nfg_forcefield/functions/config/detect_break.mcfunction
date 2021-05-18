# Kill junk that was left behind from breaking the chest
kill @e[sort=nearest,distance=..8,type=item,nbt={Item:{tag:{ff:{config:1b}}}}]
kill @e[sort=nearest,distance=..8,type=item,nbt={Item:{id:"minecraft:chest"}}]

# Give the Player an Item to place another Configurator
function nfg_forcefield:inventory/give_configure_marker

# Destroy the `ff_config_marker`
kill @e[tag=ff_config_marker,sort=nearest,limit=1]

tag @s remove ff_configuring
