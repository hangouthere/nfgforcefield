function nfg_forcefield:scanning/process/prot_build/reset_prot_build

gamemode survival @s

title @s title [{"nbt":"scanner.current.messages.stranger.leaving.title","storage":"nfg:forcefield"}]
title @s subtitle [{"nbt":"scanner.current.messages.stranger.leaving.subtitle","storage":"nfg:forcefield"}]
title @s actionbar [{"nbt":"scanner.current.messages.stranger.leaving.actionbar","storage":"nfg:forcefield"}]

execute if data storage nfg:forcefield scanner.current.messages.stranger.leaving.serverChat run tellraw @s {"nbt":"scanner.current.messages.stranger.leaving.serverChat","storage":"nfg:forcefield"}
