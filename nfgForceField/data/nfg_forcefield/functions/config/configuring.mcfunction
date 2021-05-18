# Player is near, and configuring... Detect things!
execute if entity @s[distance=..5] run function nfg_forcefield:config/near

# Player has moved away... Cancel Configurator.
execute if entity @s[distance=6..] run function nfg_forcefield:config/cancel

# Player broke the Configurator!
execute unless block ~ ~ ~ minecraft:chest run function nfg_forcefield:config/detect_break

# Clear Players Inventory of all Config types
clear @a diamond_hoe{ff:{config:1b}}
