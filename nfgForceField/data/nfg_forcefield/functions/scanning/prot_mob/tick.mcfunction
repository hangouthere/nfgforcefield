# Same as Mode03, but spread across Ticks:
#   - Each FF is scanned sequentially across ticks
#       - Each Player is handled sequentially across ticks
#           - All Mobs near a Player are handled in bundles across ticks

#######################
# _scan_ffCount - Iteration Countdown for number of ForceFields
# _scan_playerCount - Iteration Countdown for number of Players
# _scan_stateMobScan - Enum State for scanning state. 1 = Scanning, 2 = Initialized/Done Scanning

# Reset if no more ForceFields can be scanned... (Handles initial state, ie: no _scan_ffCount)
execute unless score _scan_stateMobScan _ff_calcs matches 1 unless score _scan_ffCount _ff_calcs matches 1.. run function nfg_forcefield:scanning/prot_mob/loop/reset_scan

# All Players were Scanned, meaning our ForceField is fully scanned... Loop to the next one!
execute unless score _scan_stateMobScan _ff_calcs matches 1 if score _scan_playerCount _ff_calcs matches 0 run function nfg_forcefield:scanning/prot_mob/loop/forcefield

# Mob Scan is initialized, or just finished scanning for a Player, so loop to next Player
execute if score _scan_stateMobScan _ff_calcs matches 2 run function nfg_forcefield:scanning/prot_mob/loop/players

# Scan at a Player is in-progress, continue next batch on this tick
execute if score _scan_stateMobScan _ff_calcs matches 1 run function nfg_forcefield:scanning/prot_mob/loop/mob_detection

# Perform Zap!
execute as @e[tag=ff_processed_mob_in] at @s run function nfg_forcefield:scanning/prot_mob/loop/zap_hostiles
