particle dust 1 0 0 2 ~ ~1 ~ 0 4 0 1 10

# Create Demolition Marker to compare existence against corners later.
# If the Corner goes missing while this Marker exists, that means the Player destroyed the Corner.
summon armor_stand ~ ~ ~ {Small:0b,Invisible:0b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["ff_demolish_marker"],ArmorItems:[{id:"minecraft:dirt",Count:1b}]}

# Copy NBT data from Corner to Marker for later use.
data modify entity @e[tag=ff_demolish_marker,limit=1,sort=nearest] ArmorItems[0].tag set from entity @e[tag=ff_corner,distance=..0.5,sort=nearest,limit=1] ArmorItems[0].tag

execute if score #DEBUG ff_calcs matches 55 run tellraw @a ["Demolish Setup for: ", {"entity":"@e[tag=ff_corner,distance=..0.5,sort=nearest,limit=1]","nbt":"ArmorItems[0].tag.IDs"}]

# Make Corner NOT Invulnerable, so the Owner can destroy it (we're positioned at the current Secure Corner)
data modify entity @e[tag=ff_corner,distance=..0.5,sort=nearest,limit=1] Invulnerable set value 0b

# Add Near Tag to avoid over-processing
tag @s add ff_demolish_near
