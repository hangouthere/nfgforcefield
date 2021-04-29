# Store found ID
data modify storage nfg:forcefield operations.meta.id_found set from entity @s ArmorItems[0].tag.IDs.ff

# Remove from `operations.delete` array to avoid processing again
data remove storage nfg:forcefield operations.delete[0]
