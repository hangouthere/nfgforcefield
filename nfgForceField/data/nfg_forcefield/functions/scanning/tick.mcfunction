# Scanning [Tick]
# For each ForceField, we want to scan based on its type

# TODO: Update this to build type scans when completed!
# For each Starting Corner, we scan for Build Types!
execute as @e[tag=ff_corner,tag=ff_configured,tag=ff_start,tag=ff_prot_build] at @s run function nfg_forcefield:scanning/prot_mob/tick

# For each Starting Corner, we scan for Mob Types!
execute as @e[tag=ff_corner,tag=ff_configured,tag=ff_start,tag=ff_prot_mob] at @s run function nfg_forcefield:scanning/prot_mob/tick

# For each Corner, we scan for Broken ForceFields!
execute as @e[tag=ff_corner,tag=ff_configured] run function nfg_forcefield:scanning/destroy_broken/tick
