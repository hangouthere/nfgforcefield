# *Ran as the first Player it encounters

tellraw @a [{"text":"[nfgUtil] ","color":"gold"},{"text":"Initial Setup...","color":"white"}]

# Set up default settings
function nfg_util:_first_run/settings

####
# Mark DataPack Init complete
scoreboard players set #_doneInit _nfg_settings 1
