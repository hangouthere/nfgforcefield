# Check if in Bounds, Perim or Volume based on settings
execute if score #modeProtBuildScan ff_calcs matches 1 run scoreboard players set #_evalVolume nfg_util 0
execute if score #modeProtBuildScan ff_calcs matches 2 run scoreboard players set #_evalVolume nfg_util 1

# Get owner ID and store it for evaluation
execute store result score #scan_ownerId ff_calcs run data get storage nfg:forcefield scanner.current.IDs.player
execute store result score #scan_ffId ff_calcs run data get storage nfg:forcefield scanner.current.IDs.ff

# Scan Player if they DON'T own the ForceField
execute unless score @s nfg_player_id = #scan_ownerId ff_calcs run function nfg_forcefield:scanning/process/prot_build/scan_stranger

# Ensure if teleported home from a safe zone, they are insta-cleared of protection
execute if score @s nfg_player_id = #scan_ownerId ff_calcs run function nfg_forcefield:scanning/process/prot_build/scan_owner