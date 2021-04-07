# Store found ID
data modify storage nfg:forcefield _scan.found_id set from entity @s ArmorItems[0].tag._ff.id

# Remove from `_scan.deleted` array to avoid processing again
data remove storage nfg:forcefield _scan.deleted[0]

