# Make Corner Invulnerable, so no one can destroy it
data modify entity @e[tag=ff_corner,distance=..0.5,sort=nearest,limit=1] Invulnerable set value 1b

# Destroy the Marker, Players aren't close enough anymore!
kill @e[tag=ff_demolish_marker,distance=..0.5,sort=nearest,limit=1]
