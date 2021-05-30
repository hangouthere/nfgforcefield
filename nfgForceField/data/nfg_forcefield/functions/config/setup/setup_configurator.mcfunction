### Summon the Configurator facing the right way
## 0 - 180
# Player facing S
execute if entity @s[y_rotation=0..46] run setblock ~ ~ ~ chest[facing=north]{CustomName:'{"text":"nfgForceField Configurator"}'}
# Player facing W
execute if entity @s[y_rotation=46..135] run setblock ~ ~ ~ chest[facing=east]{CustomName:'{"text":"nfgForceField Configurator"}'}
# Player facing N
execute if entity @s[y_rotation=135..180] run setblock ~ ~ ~ chest[facing=south]{CustomName:'{"text":"nfgForceField Configurator"}'}
## -180 - -1
# Player facing N
execute if entity @s[y_rotation=-180..-135] run setblock ~ ~ ~ chest[facing=south]{CustomName:'{"text":"nfgForceField Configurator"}'}
# Player facing E
execute if entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ chest[facing=west]{CustomName:'{"text":"nfgForceField Configurator"}'}
# Player facing S
execute if entity @s[y_rotation=-45..-0.1] run setblock ~ ~ ~ chest[facing=north]{CustomName:'{"text":"nfgForceField Configurator"}'}

# Hoppers below this block don't transfer our items out!
execute if block ~ ~-1 ~ hopper run data merge block ~ ~-1 ~ {TransferCooldown: 2000}
