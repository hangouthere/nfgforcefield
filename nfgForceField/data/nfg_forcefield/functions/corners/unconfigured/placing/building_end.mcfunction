# End usage of a Build Helper
function nfg_forcefield:corners/unconfigured/building_helper/uninit

# TODO: End remote-targeting system??

# Remove Init tag from corners, if no errors
execute if entity @s[tag=ff_no_errors] run tag @s remove ff_init
