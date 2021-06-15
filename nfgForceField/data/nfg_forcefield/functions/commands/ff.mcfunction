# /trigger ff
# Offers forcefield types

execute as @s[tag=ff_admin] at @s run function nfg_forcefield:inventory/give_admin_book

# TODO: Give player book?
execute unless entity @s[tag=ff_admin] run tellraw @s [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": ","color":"white"},{"text":"You are not a ForceField Admin! Please see an Admin to gain access to this feature.","color":"white"}]
