kill @e[tag=ff_demolish_marker,limit=1,sort=nearest]
kill @e[tag=ff_tooltip_line,distance=..8]

execute as @a[distance=..16] run function nfg_forcefield:helper/player/cleanup_state

# Copy re-sorted list to proper location
data modify storage nfg:forcefield operations.delete set from storage nfg:forcefield operations.meta.search.list
# Remove from `operations.delete` array to avoid processing again
data remove storage nfg:forcefield operations.delete[0]

kill @s
