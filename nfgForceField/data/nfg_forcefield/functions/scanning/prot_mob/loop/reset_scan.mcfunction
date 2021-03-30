# Global reset of scan vars

# Reset tags for a new scan sweep, unless we have more unProcessedMobs to test
tag @e remove ff_processed
tag @e remove ff_processed_mob_thread_processed
tag @e remove ff_processed_mob_thread_start
tag @e remove ff_processed_mob_in
tag @e remove ff_processed_mob_out
tag @e remove ff_processed_mob

# Reset scanning field score so we ensure a full reset
scoreboard players set _scan_ffCount _nfg_test 0
scoreboard players set _scan_playerCount _nfg_test 0

# Copy ForceFields to temp location that we can destroy as we iterate as a queue
data modify storage nfg:forcefield _scan_ForceFields set from storage nfg:forcefield ForceFields

# Set Count of ForceFields in iterative array
execute store result score _scan_ffCount _ff_calcs run data get storage nfg:forcefield _scan_ForceFields

# Enforce ForceField Loop
scoreboard players set _scan_playerCount _ff_calcs 0

# Enforce Player Loop
scoreboard players set _scan_stateMobScan _ff_calcs 2
