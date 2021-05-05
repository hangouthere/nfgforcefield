# End usage of a Build Helper
function nfg_forcefield:corners/unconfigured/placing/building_helper/uninit

# TODO: End remote-targeting system??

# Remove Init tag from corners, and ready to consume Config
tag @s add ff_needs_config
tag @s add ff_end
tag @s remove ff_init
