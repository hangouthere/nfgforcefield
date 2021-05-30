tag @s add ff_no_errors

# Check if Books are in the right place
execute unless block ~ ~ ~ chest{Items:[{Slot:10b,tag:{ff:{messages:1b,direction:1b,allied:1b}}}]} run function nfg_forcefield:config/save/errors/missing_allied_entering

execute unless block ~ ~ ~ chest{Items:[{Slot:11b,tag:{ff:{messages:1b,direction:0b,allied:1b}}}]} run function nfg_forcefield:config/save/errors/missing_allied_outgoing

execute unless block ~ ~ ~ chest{Items:[{Slot:15b,tag:{ff:{messages:1b,direction:1b,allied:0b}}}]} run function nfg_forcefield:config/save/errors/missing_stranger_incoming

execute unless block ~ ~ ~ chest{Items:[{Slot:16b,tag:{ff:{messages:1b,direction:0b,allied:0b}}}]} run function nfg_forcefield:config/save/errors/missing_stranger_entering

execute if entity @s[tag=!ff_no_errors] run tellraw @s [{"text":"Please ensure all Message Books are in their appropriate Locations!","color":"red"}]
