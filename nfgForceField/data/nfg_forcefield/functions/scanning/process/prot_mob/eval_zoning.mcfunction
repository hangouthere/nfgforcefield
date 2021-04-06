# Checks distance of mob to ForceField, and marks relation to FF

# Mark as processed (to avoid recalc)
tag @s add ff_processed

# Detect if in Track Zone
function nfg_forcefield:scanning/process/prot_mob/zone_test_track

# If we are within Track Zone, and "in reach", then test for Kill Zone!
execute if entity @s[scores={_ff_scan_track=1..},type=#nfg_forcefield:protect_zappable] run function nfg_forcefield:scanning/process/prot_mob/zone_test_protect

# If we are within Track Zone, and "in reach", then test for Kill Zone!
execute if entity @s[scores={_ff_scan_track=1..}] run function nfg_forcefield:scanning/process/prot_mob/zone_test_kill

# If not within Track Zone, determine Suspend type
execute if entity @s[scores={_ff_scan_track=0}] run function nfg_forcefield:scanning/process/prot_mob/zone_test_suspend
