# If powered ON, we have some work to do!
execute if score #modeProtBuildScan ff_calcs matches 1.. run function nfg_forcefield:scanning/process/prot_build/powered
