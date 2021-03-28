# *Ran as the first Player it encounters

tellraw @a [{"text":"[nfgForceField] ","color":"gold"},{"text":"Initial Setup...","color":"white"}]

# Set up default settings
function nfg_forcefield:_first_run/settings

# Marks Player as FF Admin
tag @s add ff_admin

# Gives Admin Helper Book
function nfg_forcefield:inventory/give_admin_book

####
# Mark DataPack Init complete
scoreboard players set #_doneInit _ff_calcs 1
