# Use a `ff_building_helper` to store data, future ticks will keep this stand near the player, and thus keep data nearby
execute at @s run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["ff_building_helper"],ArmorItems:[{id:"minecraft:dirt",Count:1b},{},{},{}]}

# Increment ffNextId for the next build, we don't care if it's accurate/sequential overall
# (ie, if this build is cancelled it won't be sequential anymore), just that it's unique
scoreboard players add #ffNextId ff_calcs 1

# Copy Template to build FF data
data modify storage nfg:forcefield operations.meta.ff_start set from storage nfg:forcefield template.buildFF

#####################

# Use dummy loot item to get player name
execute as @s run loot spawn ~ ~ ~ loot nfg_forcefield:get_player_head
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}},sort=nearest,limit=1] run data modify storage nfg:forcefield operations.meta.ff_start.IDs.playerName set from entity @s Item.tag.SkullOwner.Name

# Kill player head
kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}},sort=nearest,limit=1]

#####################

## Set initial values for this ForceField
# id.ff - Unique ForceField ID
execute store result storage nfg:forcefield operations.meta.ff_start.IDs.ff int 1 run scoreboard players get #ffNextId ff_calcs
# id.player - Owner ID (set to Player ID)
execute store result storage nfg:forcefield operations.meta.ff_start.IDs.player int 1 run scoreboard players get @s nfg_player_id
# corner.start[x,y,z]
data modify storage nfg:forcefield operations.meta.ff_start.corner.start set from entity @e[tag=ff_start,sort=nearest,limit=1] Pos

#####################

# Copy initial data to corner
data modify entity @e[tag=ff_start,sort=nearest,limit=1] ArmorItems[0].tag set from storage nfg:forcefield operations.meta.ff_start

# Copy initial data to `ff_building_helper`
data modify entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag set from storage nfg:forcefield operations.meta.ff_start

# Clear up junk storage
data remove storage nfg:forcefield operations.meta.ff_start
