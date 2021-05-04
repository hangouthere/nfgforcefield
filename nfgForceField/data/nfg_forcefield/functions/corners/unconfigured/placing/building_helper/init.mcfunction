#alias entity ff_building_helper @e[tag=ff_building_helper,sort=nearest,limit=1]
#alias entity ff_building_helper_full @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag

# Increment ffNextId for the next build, we don't care if it's accurate/sequential overall
# (ie, if this build is cancelled it won't be sequential anymore), just that it's unique
scoreboard players add #ffNextId ff_calcs 1

# Use a ff_building_helper to store data, future ticks will keep this stand near the player, and thus keep data nearby
execute at @p run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Tags:["ff_building_helper"],ArmorItems:[{id:"minecraft:dirt",Count:1b},{},{},{}]}

# Copy Template to build FF data
data modify entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag set from storage nfg:forcefield template.buildFF

## Set initial values for this ForceField
# id.ff - Unique ForceField ID
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag.IDs.ff int 1 run scoreboard players get #ffNextId ff_calcs
# id.owner - Owner ID (set to Player ID)
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag.IDs.owner int 1 run scoreboard players get @p[tag=ff_building] nfg_player_id
# corner.start[x,y,z]
data modify entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag.corner.start set from entity @s Pos

# Copy initial data to corner
data modify entity @e[tag=ff_corner,tag=ff_start,sort=nearest,limit=1] ArmorItems[0].tag set from entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag
