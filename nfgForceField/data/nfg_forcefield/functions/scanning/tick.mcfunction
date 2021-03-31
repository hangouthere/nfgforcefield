# Scanning [Tick]
# For each ForceField, we want to scan based on its type

# For each Corner, we scan for Broken ForceFields!
execute as @e[tag=ff_corner,tag=ff_configured] run function nfg_forcefield:scanning/destroy_broken/tick

# TODO: GET RID OF THIS
function nfg_forcefield:scanning/debug_draw

# Scan ForceFields for Operations (you know, the whole point of this thing!)
execute if entity @a[limit=1] run function nfg_forcefield:scanning/process/tick
