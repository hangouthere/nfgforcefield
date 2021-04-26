# Make Corner Invulnerable, so no one can destroy it
data modify entity @s Invulnerable set value 1b

# Destroy the Marker, players aren't close enough anymore!
kill @e[tag=ff_demolish_marker,limit=1,distance=..1]

# Remove Near Tag to allow re-processing
tag @p remove ff_demolish_near
