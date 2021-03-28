# Inventory: Give Build Protection
# Only gives items if they don't have them already
#####################################
# Started as: Admin Helper Book (User Clicked Option)

# Give Build Protection Starting Corner
execute unless entity @p[nbt={Inventory:[{tag:{EntityTag:{Tags:["ff_start","ff_prot_build"]}}}]}] run give @p armor_stand{display:{Name:'[{"text":"nfgForceField","color":"gold"},{"text":" - ","color":"white"},{"text":"Build Protection ","color":"light_purple"},{"text":"Starting Corner","color":"yellow"}]',Lore:['[{"text":"Build Protection","color":"light_purple"},{"text":" disables ","color":"white"},{"text":"Players","color":"gold"},{"text":" from ","color":"white"},{"text":"Placing/Breaking ","color":"dark_red"},{"text":"blocks within a ","color":"white"},{"text":"perimeter","color":"green"},{"text":".","color":"white"}]']},EntityTag:{CustomNameVisible:1b,Invulnerable:1b,Glowing:1b,Small:1b,Invisible:0b,NoBasePlate:1b,Tags:["ff_init","ff_corner","ff_start","ff_prot_build"],Pose:{Head:[75f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:diamond_helmet",Count:1b}],CustomName:'[{"text":"nfgForceField","color":"gold"},{"text":" - ","color":"white"},{"text":"Starting ","color":"yellow"},{"text":"Build Protection ","color":"light_purple"}]'}} 1

execute unless entity @p[nbt={Inventory:[{tag:{EntityTag:{Tags:["ff_end"]}}}]}] run function nfg_forcefield:inventory/give_ending_corner
