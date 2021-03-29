# Corners - UnConfigured [Tick]
# Per tick, evaluate unconfigured Corners! These are on their way to configuration since they've been initialized!
# As players are building a ForceField, they are in this state, and show an ActionBar for the user to aid in placement.
#####################################
# Started as: execute as @s[tag=ff_corner] at @s | execute if entity @s[tag=!ff_init,tag=!ff_configured,tag=ff_no_errors]

# Placement Helper Overlay (HUD while placing Corners)
execute if entity @a[tag=ff_placing_lock] run function nfg_forcefield:corners/unconfigured/placing_helper/tick

# Configure Unconfig'd Corners (aka, just Init'd, but NOT Configured)
execute if entity @s[tag=!ff_init,tag=ff_end] run function nfg_forcefield:corners/unconfigured/config/tick
