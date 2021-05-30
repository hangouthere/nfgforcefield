# Determine if there's any Errors
function nfg_forcefield:config/save/errors/perform_checks

# Perform Save of ForceField Config
execute if entity @s[tag=ff_no_errors] run function nfg_forcefield:config/save/update_forcefield
