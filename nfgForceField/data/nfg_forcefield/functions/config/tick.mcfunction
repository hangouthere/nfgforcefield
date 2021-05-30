# Player is near Config Marker, but the marker is not yet init'd... Setup Configurator!
execute if entity @a[distance=..5,tag=!ff_config_init] run function nfg_forcefield:config/setup/init

# Process if Config is Inactive (ie, player not using Chest)
execute as @p[tag=ff_config_inactive] run function nfg_forcefield:config/state/inactive

# Process if Config is Active (ie, player is using Chest)
execute as @p[tag=ff_config_active] run function nfg_forcefield:config/state/active

# Process if Config has been Init'd (active or inactive!)
execute as @p[tag=ff_config_init] run function nfg_forcefield:config/state/initialized

# Player is Locked in a Configurator
execute as @p[tag=ff_config_active_lock] run function nfg_forcefield:config/state/locked
