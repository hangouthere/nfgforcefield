# Utilize temp tag for detection of whether the user has been informed or not
execute if entity @s[tag=!ff_info,distance=..3.5] run function nfg_forcefield:corners/security/ff_admin/near

execute if entity @s[tag=ff_info,distance=3.5..] run tag @s remove ff_info
