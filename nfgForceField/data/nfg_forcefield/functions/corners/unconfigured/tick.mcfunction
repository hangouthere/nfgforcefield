execute if entity @s[tag=ff_init] run function nfg_forcefield:corners/unconfigured/placing/tick

# Configure Unconfig'd Corners (aka, just Init'd, but NOT Configured)
execute if entity @s[tag=!ff_init,tag=ff_end,tag=ff_no_errors] run function nfg_forcefield:corners/unconfigured/config/tick
