# Create junk item to modify
summon item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b,tag:{Tags:["ff_return_item"]}}}

# Initiate transfer back to the player
execute as @e[type=item,nbt={Item:{tag:{Tags:["ff_return_item"]}}}] at @s run function nfg_forcefield:config/pages/return/return_item_transfer
