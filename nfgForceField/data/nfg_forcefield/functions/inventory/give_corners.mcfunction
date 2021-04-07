execute unless entity @p[nbt={Inventory:[{tag:{EntityTag:{Tags:["ff_start","ff_prot_build"]}}}]}] run function nfg_forcefield:inventory/give_starting_corner

execute unless entity @p[nbt={Inventory:[{tag:{EntityTag:{Tags:["ff_end"]}}}]}] run function nfg_forcefield:inventory/give_ending_corner
