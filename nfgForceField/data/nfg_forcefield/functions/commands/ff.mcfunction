# /trigger ff
# Offers forcefield types

execute if entity @s[tag=ff_admin] run function nfg_forcefield:inventory/give_admin_book

execute unless entity @s[tag=ff_admin] run tellraw @a [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": ","color":"white"},{"text":"You are not a ForceField Admin! Please see an Admin to gain access to this feature.","color":"white"}]
