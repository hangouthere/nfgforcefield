# Create Demolition Marker to compare existence against corners later.
# If the Corner goes missing while this Marker exists, that means the user destroyed the Corner.
summon armor_stand ~ ~ ~ {Small:0b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["ff_demolish_marker"],ArmorItems:[{id:"minecraft:dirt",Count:1b}]}

# Copy NBT data from Corner to Marker for later use.
data modify entity @e[tag=ff_demolish_marker,limit=1,sort=nearest] ArmorItems[0].tag set from entity @s ArmorItems[0].tag

# Make Corner NOT Invulnerable, so the Owner can destroy it
data modify entity @s Invulnerable set value 0b

# Add Near Tag to avoid over-processing
tag @p[distance=..8] add ff_demolish_near
