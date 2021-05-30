# Mark player is in prot build mode
tag @s remove ff_ally
tag @s add ff_stranger

# Bind player to the FF
execute store result score @s ff_player_bind run scoreboard players get #scan_ffId ff_calcs

gamemode adventure @s

title @s title [{"nbt":"scanner.current.messages.stranger.entering.title","storage":"nfg:forcefield"}]
title @s subtitle [{"nbt":"scanner.current.messages.stranger.entering.subtitle","storage":"nfg:forcefield"}]
title @s actionbar [{"nbt":"scanner.current.messages.stranger.entering.actionbar","storage":"nfg:forcefield"}]

execute if data storage nfg:forcefield scanner.current.messages.stranger.entering.serverChat run tellraw @s {"nbt":"scanner.current.messages.stranger.entering.serverChat","storage":"nfg:forcefield"}
