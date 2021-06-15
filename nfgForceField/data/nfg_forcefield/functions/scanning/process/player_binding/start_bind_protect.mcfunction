# Bind Player to the current FF ID
execute store result score @s ff_bind_prot run scoreboard players get #scan_ffId ff_calcs

# Clean Player State tags
#function nfg_forcefield:helper/player/cleanup_state

# Mark Player as inside Protect Zone
tag @s add ff_zone_protect

# Determine Ownership
function nfg_forcefield:scanning/process/player_binding/determine_ownership
