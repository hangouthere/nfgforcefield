# nfgForceField - tick every 2 seconds
# Not very important, but don't want info to get stale

# Save Debug value to LocalStorage
execute store result storage nfg:forcefield DEBUG int 1 run scoreboard players get DEBUG _ff_settings

schedule function nfg_forcefield:tick_2s 2s replace
