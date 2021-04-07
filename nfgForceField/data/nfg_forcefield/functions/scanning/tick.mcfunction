# Scanning [Tick]
# For each ForceField, we want to scan based on its type

# Scan ForceFields for Operations (you know, the whole point of this thing!)
execute if entity @a[limit=1] run function nfg_forcefield:scanning/process/tick

# Debug Draw baddies
execute if score #DEBUG _ff_calcs matches 1 run function nfg_forcefield:scanning/debug_draw
