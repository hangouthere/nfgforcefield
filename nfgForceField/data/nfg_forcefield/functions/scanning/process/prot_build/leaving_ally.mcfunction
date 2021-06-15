tag @s remove ff_leaving_ally

title @s title [{"nbt":"scanner.current.messages.allied.leaving.title","storage":"nfg:forcefield"}]
title @s subtitle [{"nbt":"scanner.current.messages.allied.leaving.subtitle","storage":"nfg:forcefield"}]
title @s actionbar [{"nbt":"scanner.current.messages.allied.leaving.actionbar","storage":"nfg:forcefield"}]

execute store result score #str_len ff_calcs run data get storage nfg:forcefield scanner.current.messages.allied.leaving.serverChat
execute unless score #str_len ff_calcs matches 0 run tellraw @s {"nbt":"scanner.current.messages.allied.leaving.serverChat","storage":"nfg:forcefield"}
