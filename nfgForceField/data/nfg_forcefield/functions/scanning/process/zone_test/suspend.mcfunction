# Checks if in the [temp] Suspend Zone

# Assumptions:
# - in1 is always (0,0,0)

# Use calculated W2L Bounds as in2 for hit detection box
execute store result score in2_x nfg_util run data get storage nfg:forcefield scanner.current.zone.suspend.bounds.x
execute store result score in2_y nfg_util run data get storage nfg:forcefield scanner.current.zone.suspend.bounds.y
execute store result score in2_z nfg_util run data get storage nfg:forcefield scanner.current.zone.suspend.bounds.z

# Set #_W2Loffset_x from `wsl.offset`, which allows us to convert mobs to Local Space when we iterate them
execute store result score #_W2Loffset_x nfg_util run data get storage nfg:forcefield scanner.current.zone.suspend.offset.x
execute store result score #_W2Loffset_y nfg_util run data get storage nfg:forcefield scanner.current.zone.suspend.offset.y
execute store result score #_W2Loffset_z nfg_util run data get storage nfg:forcefield scanner.current.zone.suspend.offset.z

function nfg_forcefield:scanning/process/hit_test

