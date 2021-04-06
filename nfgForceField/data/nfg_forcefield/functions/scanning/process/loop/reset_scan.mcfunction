# Global reset of scan vars

execute if score #DEBUG _ff_calcs matches 1 run say --------------------------------- RESET

function nfg_forcefield:scanning/process/loop/finalize_suspend_states

# Reset tags for a new scan sweep, unless we have more unProcessedMobs to test
tag @e remove ff_thread_processed
tag @e remove ff_thread_start
# TODO: See if this is the right thing to do or not.... i feel we should remove them all? If not leave a note why, khtx
tag @e[tag=!ff_bounds_track_in,tag=!ff_bounds_kill_in] remove ff_processed
#tag @e remove ff_processed
tag @e remove ff_bounds_track_in
tag @e remove ff_bounds_kill_out

# Re-allow Mobs in future scans, don't remove temp tag though, it'll get cleaned up in scan process
execute if score #_MobRecycle_triggered _ff_calcs matches 1 run tag @e[type=#nfg_forcefield:zappable,tag=ff_suspend_temp] remove ff_suspend
execute if score #_MobRecycle_triggered _ff_calcs matches 1 run tag @e[type=#nfg_forcefield:zappable,tag=ff_suspend_temp] remove ff_suspend_temp
scoreboard players set #_MobRecycle_triggered _ff_calcs 0

## Reset scanning field score so we ensure a full reset
# Clear Current Scan FF until it actually loops (to avoid memory clutter)
data modify storage nfg:forcefield _scan.current set value {}
# Reset Hit Counts
scoreboard players set @e _ff_scan_track 0
scoreboard players set @e _ff_suspend_perm 0
scoreboard players set @e _ff_suspend_temp 0

scoreboard players set #_scan_ff_idx _ff_calcs 0
scoreboard players set #_scan_player_idx _ff_calcs 0
scoreboard players set #_scan_stateMobSearch _ff_calcs 2

# Copy ForceFields to temp location that we can destroy as we iterate as a queue
data modify storage nfg:forcefield _scan.ForceFields set from storage nfg:forcefield ForceFields

# Set Count of ForceFields from the iterative array (for loop index)
execute store result score #_scan_ff_idx _ff_calcs run data get storage nfg:forcefield _scan.ForceFields
# Set Count of ForceFields from the iterative array (for max counts)
execute store result score #_scan_ff_count _ff_calcs run data get storage nfg:forcefield _scan.ForceFields
