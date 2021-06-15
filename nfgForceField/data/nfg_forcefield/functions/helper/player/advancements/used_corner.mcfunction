# If a Corner is near and newly init'd, the user placed a corner
execute if entity @e[tag=ff_corner,tag=ff_init,distance=..8] run function nfg_forcefield:helper/player/advancements/placed_corner

# Remove advancement so we can retrigger this function
advancement revoke @s only nfg_forcefield:forcefield/placed_corner
