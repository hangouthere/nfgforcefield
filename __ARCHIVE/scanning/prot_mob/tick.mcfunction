# Scanning - Protect against Mobs [Tick]
# Determines if Mobs are within a Perimeter, and disposes of them!
#####################################
# Started as: execute as @e[tag=ff_corner,tag=ff_configured,tag=ff_start,tag=ff_prot_mob] at @s

# Reset tags for a new scan sweep, unless we have more unProcessedMobs to test
# Reset unless we detect UNPROCESSED mobs
execute unless entity @e[type=#nfg_util:hostile_mobs,tag=!ff_processed_mob] run function nfg_forcefield:scanning/prot_mob/reset

# Retrieve needed values from Corner
function nfg_forcefield:scanning/prot_mob/retrieve_ff_meta

########################################################################
## Play with LIMIT below
########################################################################

# On all unidentified hostile mobs, we want to eval for grouping
execute as @e[type=#nfg_util:hostile_mobs,tag=!ff_processed_mob,limit=40] at @s run function nfg_forcefield:scanning/prot_mob/check_radius
