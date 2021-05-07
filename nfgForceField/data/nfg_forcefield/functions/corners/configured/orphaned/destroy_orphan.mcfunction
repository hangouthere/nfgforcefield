kill @e[tag=ff_demolish_marker,limit=1,sort=nearest]

kill @s

# Copy re-sorted list to proper location
data modify storage nfg:forcefield operations.delete set from storage nfg:forcefield operations.meta.list
# Remove from `operations.delete` array to avoid processing again
data remove storage nfg:forcefield operations.delete[0]
