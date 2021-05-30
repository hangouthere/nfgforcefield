# Perform Corner Checks
execute as @p[distance=..5] at @s run function nfg_forcefield:config/setup/attempt_corner_config

## If no errors, check for local player count errors
execute as @p[distance=..5,tag=ff_no_errors] run function nfg_forcefield:config/setup/check_players_nearby

# There were errors from attempting a Corner Config, try inside a bound FF
execute as @p[distance=..5,tag=!ff_no_errors,tag=!ff_too_many_players] at @s run function nfg_forcefield:config/setup/attempt_bound_config

# If no errors, continue init!
execute as @p[distance=..5,tag=ff_no_errors] run function nfg_forcefield:config/setup/continue_init

# Destroy self if there's not any NON Errored players nearby
execute unless entity @p[distance=..5,tag=ff_no_errors] run function nfg_forcefield:config/setup/uninit

# Remove specific error tags
tag @a remove ff_too_many_players
tag @a remove ff_not_owner
