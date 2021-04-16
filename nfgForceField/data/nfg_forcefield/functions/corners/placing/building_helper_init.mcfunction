#alias entity ff_building_helper @e[tag=ff_building_helper,sort=nearest,limit=1]
#alias entity ff_building_helper_full @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff

# Increment _ffNextId for the next build, we don't care if it's accurate/sequential overall
# (ie, if this build is cancelled it won't be sequential anymore), just that it's unique
scoreboard players add #_ffNextId _ff_calcs 1

# Use a ff_building_helper to store data, future ticks will keep this stand near the player, and thus keep data nearby
execute at @p run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Tags:["ff_building_helper"],ArmorItems:[{id:"minecraft:dirt",Count:1b},{},{},{}]}

# Copy Template to build FF data
data modify entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff set from storage nfg:forcefield _tmpl.buildFF

## Set initial values for this ForceField
# id.ff - Unique ForceField ID
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.id.ff int 1 run scoreboard players get #_ffNextId _ff_calcs
# id.owner - Owner ID (set to Player ID)
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.id.owner int 1 run scoreboard players get @p[tag=ff_building] _nfg_player_id
# corner.start[x,y,z]
data modify entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.corner.start set from entity @s Pos

# Copy initial data to corner
data modify entity @e[tag=ff_corner,sort=nearest,limit=1] ArmorItems[0].tag set from entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag
