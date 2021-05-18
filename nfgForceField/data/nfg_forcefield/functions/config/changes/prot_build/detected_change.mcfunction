function nfg_forcefield:config/changes/detect_shape_type

execute as @e[tag=ff_corner,sort=nearest,limit=1] at @s run function nfg_forcefield:config/changes/prot_build/update_corner
