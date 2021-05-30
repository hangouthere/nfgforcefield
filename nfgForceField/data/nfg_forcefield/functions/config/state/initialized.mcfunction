# Clear Players Inventory of all Config types
clear @a diamond_hoe{ff:{config:1b}}

# Clear book on the ground for all Init'd Configurators/Players
execute at @p[tag=ff_config_init] store result score #killedBooks ff_calcs run kill @e[sort=nearest,distance=..8,type=item,nbt={Item:{tag:{ff:{messages:1b}}}}]

# If we cleared books on the ground, we want to re-render, but ONLY for Active Configurators
execute if entity @p[tag=ff_config_active] if score #killedBooks ff_calcs matches 1.. run function nfg_forcefield:config/pages/reset_items

# Clear Configurator books that have been converted to Written Books, and Error about it
execute as @p[tag=ff_config_init] store result score #killedBooks ff_calcs run clear @s written_book{ff:{messages:1b}}

# If we cleared books from the Player's inventory, we want to Error
execute if score #killedBooks ff_calcs matches 1.. run function nfg_forcefield:config/state/invalid_book
