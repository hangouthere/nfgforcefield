# Player is near, and configuring... Detect things!
execute if entity @s[distance=..5] run function nfg_forcefield:config/near

# Player has moved away... Break Configurator.
execute if entity @s[distance=6..] run setblock ~ ~ ~ air replace

# Player broke the Configurator!
execute unless block ~ ~ ~ minecraft:chest run function nfg_forcefield:config/detect_break

# Clear Players Inventory of all Config types
clear @a diamond_hoe{ff:{config:1b}}

# Clear book on the ground
execute at @p[tag=ff_configuring] store result score #killedBooks ff_calcs run kill @e[sort=nearest,distance=..8,type=item,nbt={Item:{tag:{ff:{messages:1b}}}}]
# If we cleared books on the ground, we want to re-render
execute if score #killedBooks ff_calcs matches 1.. run function nfg_forcefield:config/reset_items
