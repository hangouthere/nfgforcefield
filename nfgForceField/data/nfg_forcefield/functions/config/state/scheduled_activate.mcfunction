# Update pending Players and fully Activate them!
execute as @a[tag=ff_config_active_pending_lock] at @s run function nfg_forcefield:config/state/scheduled_activate_player
