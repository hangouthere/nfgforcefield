# Make Corner Invulnerable, so no one can destroy it
data modify entity @e[tag=ff_corner,distance=..1,limit=1] Invulnerable set value 1b

# Destroy the Marker, Players aren't close enough anymore!
kill @e[tag=ff_demolish_marker,distance=..1]

# Remove Near Tag to allow re-processing, but only if the Player isn't near another Corner
execute unless entity @e[tag=ff_corner,distance=..5] at @s run tag @p remove ff_demolish_near
