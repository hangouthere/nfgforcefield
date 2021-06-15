# If a Corner is near and newly init'd, the user placed a corner
execute if entity @e[tag=ff_config_marker,distance=..5] if entity @s[tag=!ff_config_init] run function nfg_forcefield:helper/player/advancements/placed_config_marker

# Remove advancement so we can retrigger this function
advancement revoke @s only nfg_forcefield:forcefield/placed_config_marker
