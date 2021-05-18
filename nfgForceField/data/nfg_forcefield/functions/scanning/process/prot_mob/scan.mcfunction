# If powered ON, we have some work to do!
execute if score #modeProtMobScan ff_calcs matches 1.. run function nfg_forcefield:scanning/process/prot_mob/powered

# If powered OFF, skip processing any set state to go to the next ForceField
execute if score #modeProtMobScan ff_calcs matches 0 run function nfg_forcefield:scanning/process/prot_mob/unpowered
