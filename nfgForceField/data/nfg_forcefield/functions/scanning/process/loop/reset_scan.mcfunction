# Global reset of scan vars

function nfg_forcefield:scanning/process/loop/finalize_suspend_states

# Reset tags for a new scan sweep, unless we have more unProcessedMobs to test
tag @e remove ff_thread_processed
tag @e remove ff_thread_start
tag @e remove ff_processed

# Re-allow Mobs in future scans, don't remove temp tag though, it'll get cleaned up in scan process
execute if score #_MobRecycle_triggered ff_calcs matches 1 run tag @e[type=#nfg_forcefield:zappable,tag=ff_suspend_temp] remove ff_suspend
execute if score #_MobRecycle_triggered ff_calcs matches 1 run tag @e[type=#nfg_forcefield:zappable,tag=ff_suspend_temp] remove ff_suspend_temp
scoreboard players set #_MobRecycle_triggered ff_calcs 0

## Reset scanning field score so we ensure a full reset
# Clear Current Scan FF until it actually loops (to avoid memory clutter)
data remove storage nfg:forcefield scanner.current
# Reset Hit Counts
scoreboard players set @e ff_scan_track 0
scoreboard players set @e ff_suspend_perm 0
scoreboard players set @e ff_suspend_temp 0

scoreboard players set #_scanff_idx ff_calcs 0
scoreboard players set #_scan_player_idx ff_calcs 0
scoreboard players set #_scan_state ff_calcs 1

# Copy ForceFields to temp location that we can destroy as we iterate as a queue
data modify storage nfg:forcefield scanner.list set from storage nfg:forcefield ForceFields

# Set Count of ForceFields from the iterative array (for loop index)
execute store result score #_scanff_idx ff_calcs run data get storage nfg:forcefield scanner.list
# Set Count of ForceFields from the iterative array (for max counts)
execute store result score #_scanff_count ff_calcs run data get storage nfg:forcefield scanner.list
