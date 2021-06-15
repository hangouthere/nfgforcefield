# Perform Corner Checks
function nfg_forcefield:config/setup/attempt_corner_config

# There were errors from attempting a Corner Config, try inside a bound FF
execute if entity @s[tag=!ff_no_errors] at @s run function nfg_forcefield:config/setup/attempt_bound_config

# Check ownership if we're still without errors
execute if entity @s[tag=ff_no_errors,tag=ff_stranger,gamemode=!creative] run function nfg_forcefield:config/setup/check_ownership

# If no errors, continue init!
execute if entity @s[tag=ff_no_errors] run function nfg_forcefield:config/setup/continue_init

# Destroy self if Errored out
execute if entity @s[tag=!ff_no_errors] run function nfg_forcefield:config/setup/uninit

# Remove error tags
tag @s remove ff_no_errors
