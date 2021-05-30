# Inventory: Give Configure Marker
# Only gives item if they don't have them already
#####################################

execute unless entity @p[nbt={Inventory:[{tag:{ff:{config_marker:1b}}}]}] run give @p sheep_spawn_egg{EntityTag:{id:"minecraft:armor_stand",Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["ff_config_marker"],ArmorItems:[{id:"minecraft:dirt",Count:1b}]},CustomModelData:3190001,display:{Name:'[{"text":"nfgForceField","color": "gold"},{"text":" Configurator","color": "white"}]'},tag:{ff:{config_marker:1b}}}
