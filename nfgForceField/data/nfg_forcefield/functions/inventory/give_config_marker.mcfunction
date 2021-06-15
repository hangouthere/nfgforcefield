# Inventory: Give Configure Marker
# Only gives item if they don't have them already
#####################################

execute unless entity @s[nbt={Inventory:[{tag:{ff_config_marker:1b}}]}] run give @s sheep_spawn_egg{EntityTag:{id:"minecraft:armor_stand",Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["ff_config_marker"],ArmorItems:[{id:"minecraft:dirt",Count:1b,tag:{}},{},{},{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{CustomModelData:255550}}]},CustomModelData:255550,display:{Name:'[{"text":"nfgForceField","color": "gold"},{"text":" Configurator","color": "white"}]'},ff_config_marker:1b}
