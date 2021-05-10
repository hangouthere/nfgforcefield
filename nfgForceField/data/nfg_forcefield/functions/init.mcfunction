# Ensure we init after `nfg_util`

execute unless score #_doneInit nfg_util matches 1 run schedule function nfg_forcefield:init 2t replace
execute if score #_doneInit nfg_util matches 1 run function nfg_forcefield:init_
