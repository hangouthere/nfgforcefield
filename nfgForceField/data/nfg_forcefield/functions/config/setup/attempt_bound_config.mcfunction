tag @s add ff_no_errors

# Remove No Errors tag unless we're bound!
execute unless entity @s[scores={ff_bind_kill=1..}] run tag @s remove ff_no_errors

# Tell Player they're not in Configurator conditions
execute if entity @s[tag=!ff_no_errors] run tellraw @s [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": ","color":"white"},{"text":"You need to be either near a ","color":"white"},{"text":"ForceField","color":"gold"},{"text":" Corner, or stand within the ","color":"white"},{"text":"ForceField","color":"gold"},{"text":" you're trying to Configure.","color":"white"}]

execute if entity @s[tag=ff_no_errors] run function nfg_forcefield:config/setup/find_bound_config
