# Make Corner Invulnerable, so no one can destroy it
data modify entity @s Invulnerable set value 1b

# Destroy the Marker, players aren't close enough anymore!
kill @e[tag=ff_demolish_marker,distance=..1]

# Remove Near Tag to allow re-processing, but only if the player isn't near another Corner
execute at @p[tag=ff_demolish_near] unless entity @e[tag=ff_corner,distance=..5] run tag @p remove ff_demolish_near
