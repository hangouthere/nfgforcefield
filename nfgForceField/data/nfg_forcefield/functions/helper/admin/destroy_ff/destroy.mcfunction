# Tell user we're Destroying!
tellraw @p [{"text":""},{"text":"[nfgForceField] ","color":"gold"},{"text":"Destroying ","color":"dark_red"},{"text":"a "},{"text":"ForceField","color":"gold"},{"text":" owned by "},{"nbt":"ArmorItems[0].tag.IDs.playerName","entity":"@s","color":"light_purple"},{"text":"!"}]

# Here we cheat, and utilize the `ff_demolish_marker` technique to destroy the Corner and return to the Player
summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["ff_demolish_marker"],ArmorItems:[{id:"minecraft:dirt",Count:1b}]}
tp @s ~ -200 ~
