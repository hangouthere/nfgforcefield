# Stop the Chest Open sound 🤮
execute as @a[tag=ff_config_active_pending_lock] at @s run stopsound @a[distance=..16] * block.chest.open

# Increment tick count of sound stoppage
scoreboard players add #stopSound ff_config 1

# If we're less than 5 ticks of stopping sound, let's keep going!
execute if score #stopSound ff_config matches 1..5 run schedule function nfg_forcefield:config/state/scheduled_sound 1t replace

execute if score #stopSound ff_config matches 6 run scoreboard players reset #stopSound ff_config
