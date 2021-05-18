# Player is near, but not configuring... Setup Configurator!
execute if entity @p[distance=..5,tag=!ff_configuring] run function nfg_forcefield:config/setup/init

execute as @p[tag=ff_configuring] run function nfg_forcefield:config/configuring
