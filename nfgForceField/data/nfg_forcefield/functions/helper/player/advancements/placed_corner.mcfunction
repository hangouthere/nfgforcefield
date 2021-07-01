# Player is not tagged as building, so let's start building!
execute if entity @s[tag=!ff_building] run function nfg_forcefield:corners/unconfigured/placing/check_starting

# Player is tagged as building, so let's finalize.
execute if entity @s[tag=ff_building] as @e[tag=ff_corner,tag=ff_init,sort=nearest,limit=1] run function nfg_forcefield:corners/unconfigured/placing/check_ending
