# Mark player is in prot build mode
tag @s add ff_prot_build
execute store result score @s ff_player_bind run scoreboard players get #scan_ffId ff_calcs

gamemode adventure @s

title @s title [{"nbt":"scanner.current.messages.entering.title","storage":"nfg:forcefield"}]
title @s subtitle [{"nbt":"scanner.current.messages.entering.subtitle","storage":"nfg:forcefield"}]
title @s actionbar [{"nbt":"scanner.current.messages.entering.actionbar","storage":"nfg:forcefield"}]
