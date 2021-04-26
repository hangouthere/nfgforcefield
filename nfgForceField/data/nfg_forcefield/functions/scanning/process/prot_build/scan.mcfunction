# Get owner ID and store it for evaluation
execute store result score #ffOwnerId ff_calcs run data get storage nfg:forcefield scanner.current.id.owner

# Scan Player if they DON'T own the ForceField
execute unless score @s nfg_player_id = #ffOwnerId ff_calcs run function nfg_forcefield:scanning/process/prot_build/scan_stranger

# Ensure if teleported home from a safe zone, they are insta-cleared of protection
execute if score @s nfg_player_id = #ffOwnerId ff_calcs run function nfg_forcefield:scanning/process/prot_build/scan_owner
