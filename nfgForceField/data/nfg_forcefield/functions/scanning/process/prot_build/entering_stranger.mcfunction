tag @s remove ff_entering_stranger

execute as @s[gamemode=!creative,gamemode=!spectator] run gamemode adventure @s

title @s title [{"nbt":"scanner.current.messages.stranger.entering.title","storage":"nfg:forcefield"}]
title @s subtitle [{"nbt":"scanner.current.messages.stranger.entering.subtitle","storage":"nfg:forcefield"}]
title @s actionbar [{"nbt":"scanner.current.messages.stranger.entering.actionbar","storage":"nfg:forcefield"}]

execute store result score #str_len ff_calcs run data get storage nfg:forcefield scanner.current.messages.stranger.entering.serverChat
execute unless score #str_len ff_calcs matches 0 run tellraw @s {"nbt":"scanner.current.messages.stranger.entering.serverChat","storage":"nfg:forcefield"}
