## Summon the Configurator facing the right way
# 0 - 180
execute if entity @p[y_rotation=0..45] run setblock ~ ~ ~ chest[facing=north]{CustomName:'{"text":"nfgForceField Configurator"}'}
execute if entity @p[y_rotation=46..134] run setblock ~ ~ ~ chest[facing=east]{CustomName:'{"text":"nfgForceField Configurator"}'}
execute if entity @p[y_rotation=135..180] run setblock ~ ~ ~ chest[facing=south]{CustomName:'{"text":"nfgForceField Configurator"}'}
# -180 - -1
execute if entity @p[y_rotation=-180..-135] run setblock ~ ~ ~ chest[facing=south]{CustomName:'{"text":"nfgForceField Configurator"}'}
execute if entity @p[y_rotation=-134..-45] run setblock ~ ~ ~ chest[facing=west]{CustomName:'{"text":"nfgForceField Configurator"}'}
execute if entity @p[y_rotation=-44..-1] run setblock ~ ~ ~ chest[facing=north]{CustomName:'{"text":"nfgForceField Configurator"}'}

# Hoppers below this block don't transfer our items out!
execute if block ~ ~-1 ~ hopper run data merge block ~ ~-1 ~ {TransferCooldown:2000}
