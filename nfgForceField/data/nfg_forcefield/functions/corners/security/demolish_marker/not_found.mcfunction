## Onto the next one (maybe?)

# Deduct 1 from #_demoff_idx
scoreboard players remove #_demoff_idx ff_calcs 1

# Copy head to tail...
execute if data storage nfg:forcefield ForceFields[0] run data modify storage nfg:forcefield ForceFields append from storage nfg:forcefield ForceFields[0]
# Delete head to index to the next one
execute if data storage nfg:forcefield ForceFields[0] run data remove storage nfg:forcefield ForceFields[0]

# If we haven't hit our last index (ie, 0), keep looping!
execute unless score #_demo_found ff_calcs matches 0 if score #_demoff_idx ff_calcs matches 0.. run function nfg_forcefield:corners/security/demolish_marker/findff_id

# Wipe out value if it was not found :(
execute unless score #_demo_found ff_calcs matches 0 if score #_demoff_idx ff_calcs matches 0 run data remove storage nfg:forcefield operations.meta.id_found
