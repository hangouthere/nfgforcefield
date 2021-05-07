tag @s add ff_power_changed
tag @s add ff_mod_detected

# Schedule and update, unless this process was forced!
execute unless score #isUpdateForced ff_calcs matches 1 run function nfg_forcefield:corners/configured/power_status/change/schedule_update

# Clear forced semaphore
scoreboard players reset #isUpdateForced ff_calcs
