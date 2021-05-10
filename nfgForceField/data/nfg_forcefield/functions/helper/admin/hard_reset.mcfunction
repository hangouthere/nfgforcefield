say Hard Resetting nfgUtils/nfgForceField...

kill @e[type=!player]
kill @e[type=!player]
data modify storage nfg:forcefield ForceFields set value []
scoreboard players set #_doneInit nfg_util 0
scoreboard players set #_doneInit ff_calcs 0

reload
