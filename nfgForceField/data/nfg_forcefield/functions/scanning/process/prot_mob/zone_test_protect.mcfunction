# Checks if in the Protect Zone

# Assumptions:
# - in1 is always (0,0,0)

# Use calculated W2L Bounds as in2 for hit detection box
execute store result score in2_x nfg_calcs run data get storage nfg:forcefield scanner.current.zone.protect.bounds.x
execute store result score in2_y nfg_calcs run data get storage nfg:forcefield scanner.current.zone.protect.bounds.y
execute store result score in2_z nfg_calcs run data get storage nfg:forcefield scanner.current.zone.protect.bounds.z

# Set #_W2Loffset_x from `wsl.offset`, which allows us to convert mobs to Local Space when we iterate them
execute store result score #_W2Loffset_x nfg_calcs run data get storage nfg:forcefield scanner.current.zone.protect.offset.x
execute store result score #_W2Loffset_y nfg_calcs run data get storage nfg:forcefield scanner.current.zone.protect.offset.y
execute store result score #_W2Loffset_z nfg_calcs run data get storage nfg:forcefield scanner.current.zone.protect.offset.z

function nfg_forcefield:scanning/process/hit_test

# Mark as in/out
execute if score #_hitDetected nfg_calcs matches 1 run scoreboard players add @s ff_scan_kill 1
