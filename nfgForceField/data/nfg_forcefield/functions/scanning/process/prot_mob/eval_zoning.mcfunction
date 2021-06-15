# Checks distance of mob to ForceField, and marks relation to FF

# Mark as processed (to avoid recalc)
tag @s add ff_processed

# Detect if in Track Zone
function nfg_forcefield:scanning/process/zone_test/track

# Mark as In Bounds to any ForceField (used later when cleaning up Suspensions)
execute if score #_hitDetected nfg_util matches 1 run scoreboard players add @s ff_scan_track 1

# If we are within Track Zone, and a special tag of `#nfg_forcefield:protect_zappable`, we want to kill entities that detect a hit
execute if entity @s[scores={ff_scan_track=1..},type=#nfg_forcefield:protect_zappable] run function nfg_forcefield:scanning/process/zone_test/protect
# Mark as killable
execute if entity @s[scores={ff_scan_track=1..},type=#nfg_forcefield:protect_zappable] if score #_hitDetected nfg_util matches 1 run scoreboard players add @s ff_scan_kill 1

# If we are within Track Zone, and "in reach", then test for Kill Zone!
execute if entity @s[scores={ff_scan_track=1..}] run function nfg_forcefield:scanning/process/zone_test/kill
# Mark as killable
execute if entity @s[scores={ff_scan_track=1..}] if score #_hitDetected nfg_util matches 1 run scoreboard players add @s ff_scan_kill 1

# If not within Track Zone, determine Suspend type
execute if entity @s[scores={ff_scan_track=0}] run function nfg_forcefield:scanning/process/zone_test/suspend
# Mark as in/out
execute if entity @s[scores={ff_scan_track=0}] if score #_hitDetected nfg_util matches 1 run scoreboard players add @s ff_suspend_temp 1
execute if entity @s[scores={ff_scan_track=0}] if score #_hitDetected nfg_util matches 0 run scoreboard players add @s ff_suspend_perm 1
