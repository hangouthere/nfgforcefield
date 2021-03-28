# Inventory: Give Mob Protection
# Only gives items if they don't have them already
#####################################
# Started as: Admin Helper Book (User Clicked Option)

# Give Mob Protection Starting Corner
execute unless entity @p[nbt={Inventory:[{tag:{EntityTag:{Tags:["ff_start","ff_prot_mob"]}}}]}] run give @p armor_stand{display:{Name:'[{"text":"nfgForceField","color":"gold"},{"text":" - ","color":"white"},{"text":"Mob Protection ","color":"red"},{"text":"Starting Corner","color":"yellow"}]',Lore:['[{"text":"Mob Protection","color":"red"},{"text":" removes ","color":"white"},{"text":"Mobs","color":"dark_red"},{"text":" from within a ","color":"white"},{"text":"volume","color":"green"},{"text":" of space.","color":"white"}]']},EntityTag:{CustomNameVisible:1b,Invulnerable:1b,Glowing:1b,Small:1b,Invisible:0b,NoBasePlate:1b,Tags:["ff_init","ff_corner","ff_start","ff_prot_mob"],Pose:{Head:[75f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:diamond_helmet",Count:1b}],CustomName:'[{"text":"nfgForceField","color":"gold"},{"text":" - ","color":"white"},{"text":"Starting ","color":"yellow"},{"text":"Mob Protection ","color":"red"}]'}} 1

execute unless entity @p[nbt={Inventory:[{tag:{EntityTag:{Tags:["ff_end"]}}}]}] run function nfg_forcefield:inventory/give_ending_corner
