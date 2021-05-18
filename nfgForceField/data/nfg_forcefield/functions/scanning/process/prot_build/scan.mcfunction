# If powered ON, we have some work to do!
execute if score #modeProtBuildScan ff_calcs matches 1.. run function nfg_forcefield:scanning/process/prot_build/powered

# If powered OFF, we just play like they're an owner (for NOW!)
execute if score #modeProtBuildScan ff_calcs matches 0 run function nfg_forcefield:scanning/process/prot_build/scan_owner
