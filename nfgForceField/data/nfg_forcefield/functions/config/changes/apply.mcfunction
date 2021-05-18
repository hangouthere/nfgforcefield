# Handle Page Changes
execute if score #hasPaginate ff_config matches 1 run function nfg_forcefield:config/changes/detected_page_change

# Handle Protection Shape Changes
execute if score #hasProtBuildCfg ff_config matches 1 run function nfg_forcefield:config/changes/prot_build/detected_change
execute if score #hasProtMobCfg ff_config matches 1 run function nfg_forcefield:config/changes/prot_mob/detected_change
