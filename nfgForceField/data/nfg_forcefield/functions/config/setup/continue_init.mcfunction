# Ensure valid state for entering Configurator
function nfg_forcefield:config/setup/setup_player

# Summon the Configurator
execute at @e[tag=ff_config_marker,sort=nearest,limit=1] run function nfg_forcefield:config/setup/setup_configurator
