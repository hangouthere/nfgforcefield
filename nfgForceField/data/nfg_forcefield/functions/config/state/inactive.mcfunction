# Player has moved away... Break Configurator.
execute if entity @s[distance=6..] run setblock ~ ~ ~ air replace

# Player broke the Configurator!
execute unless block ~ ~ ~ minecraft:chest run function nfg_forcefield:config/detect_break

# If Player opens a chest, Activate the Configurator for them
execute if entity @s[scores={ff_config_open=1..}] run function nfg_forcefield:config/state/activate
