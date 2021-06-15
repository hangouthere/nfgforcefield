tellraw @a [{"text":"Hard Resetting nfgUtils/nfgForceField...","color":"red"}]

kill @e[tag=ff_corner]
kill @e[tag=ff_tooltip_line]

data modify storage nfg:forcefield ForceFields set value []

scoreboard players set #_doneInit nfg_util 0
scoreboard players set #_doneInit ff_calcs 0

execute as @a run function nfg_forcefield:helper/player/cleanup_state

reload
