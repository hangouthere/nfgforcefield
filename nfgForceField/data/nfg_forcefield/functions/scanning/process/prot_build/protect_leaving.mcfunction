# Remove player from prot build mode
tag @s remove ff_prot_build
scoreboard players set @s ff_player_bind 0

gamemode survival @s

title @s title [{"nbt":"scanner.current.messages.leaving.title","storage":"nfg:forcefield"}]
title @s subtitle [{"nbt":"scanner.current.messages.leaving.subtitle","storage":"nfg:forcefield"}]
title @s actionbar [{"nbt":"scanner.current.messages.leaving.actionbar","storage":"nfg:forcefield"}]
