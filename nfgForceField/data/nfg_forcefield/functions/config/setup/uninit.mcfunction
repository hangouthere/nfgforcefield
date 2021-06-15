kill @e[tag=ff_config_marker,sort=nearest,limit=1]

execute if entity @s[gamemode=!creative,gamemode=!spectator] run function nfg_forcefield:inventory/give_config_marker
