particle dust 0 1 0 2 ~ ~1 ~ 0 4 0 1 10

# Make Corner Invulnerable, so no one can destroy it
data modify entity @e[tag=ff_corner,distance=..0.5,sort=nearest,limit=1] Invulnerable set value 1b

# Destroy the Marker, Players aren't close enough anymore!
kill @e[tag=ff_demolish_marker,distance=..0.5,sort=nearest,limit=1]

# Remove Near Tag to allow re-processing, but only if the Player isn't near another Corner
execute at @s unless entity @e[tag=ff_demolish_marker,distance=..7] run tag @s remove ff_demolish_near
