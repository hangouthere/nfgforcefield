# Mark player is in prot build mode
tag @s remove ff_stranger
tag @s add ff_ally

# Bind player to the FF
execute store result score @s ff_player_bind run scoreboard players get #scan_ffId ff_calcs

gamemode survival @s

title @s title [{"nbt":"scanner.current.messages.allied.entering.title","storage":"nfg:forcefield"}]
title @s subtitle [{"nbt":"scanner.current.messages.allied.entering.subtitle","storage":"nfg:forcefield"}]
title @s actionbar [{"nbt":"scanner.current.messages.allied.entering.actionbar","storage":"nfg:forcefield"}]

execute if data storage nfg:forcefield scanner.current.messages.allied.entering.serverChat run tellraw @s {"nbt":"scanner.current.messages.allied.entering.serverChat","storage":"nfg:forcefield"}
