# Check if in Bounds, Perim or Volume based on settings
execute if score #modeProtBuildScan ff_calcs matches 1 run scoreboard players set #_evalVolume nfg_util 0
execute if score #modeProtBuildScan ff_calcs matches 2 run scoreboard players set #_evalVolume nfg_util 1
