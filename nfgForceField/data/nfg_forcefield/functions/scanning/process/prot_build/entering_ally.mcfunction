tag @s remove ff_entering_ally

execute as @s[gamemode=!creative,gamemode=!spectator] run gamemode survival @s

title @s title [{"nbt":"scanner.current.messages.allied.entering.title","storage":"nfg:forcefield"}]
title @s subtitle [{"nbt":"scanner.current.messages.allied.entering.subtitle","storage":"nfg:forcefield"}]
title @s actionbar [{"nbt":"scanner.current.messages.allied.entering.actionbar","storage":"nfg:forcefield"}]

execute store result score #str_len ff_calcs run data get storage nfg:forcefield scanner.current.messages.allied.entering.serverChat
execute unless score #str_len ff_calcs matches 0 run tellraw @s {"nbt":"scanner.current.messages.allied.entering.serverChat","storage":"nfg:forcefield"}
