function nfg_forcefield:scanning/process/prot_build/reset_prot_build

title @s title [{"nbt":"scanner.current.messages.allied.leaving.title","storage":"nfg:forcefield"}]
title @s subtitle [{"nbt":"scanner.current.messages.allied.leaving.subtitle","storage":"nfg:forcefield"}]
title @s actionbar [{"nbt":"scanner.current.messages.allied.leaving.actionbar","storage":"nfg:forcefield"}]

execute if data storage nfg:forcefield scanner.current.messages.allied.leaving.serverChat run tellraw @s {"nbt":"scanner.current.messages.allied.leaving.serverChat","storage":"nfg:forcefield"}
