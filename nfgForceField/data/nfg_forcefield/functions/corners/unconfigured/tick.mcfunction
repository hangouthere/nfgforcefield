execute if entity @s[tag=ff_init] run function nfg_forcefield:corners/unconfigured/placing/tick

# Configure Unconfig'd End Corners (aka, just placed, just Init'd, but NOT Configured [assumed because of execution context])
execute if entity @s[tag=!ff_init,tag=ff_end,tag=ff_no_errors] run function nfg_forcefield:corners/unconfigured/config_end/tick

# Configure Unconfig'd Start Corners (usually in same tick as End Corner, except when they're in unloaded chunks)
execute if data storage nfg:forcefield operations.create[0] if entity @s[tag=!ff_init,tag=ff_start,tag=ff_no_errors] run function nfg_forcefield:corners/unconfigured/config_start/tick
