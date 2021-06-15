# Mark as Unbinding Allied or Stranger
# This is used later in the Scanning Process loop for Messaging Purposes
execute if entity @s[tag=ff_ally] run tag @s add ff_leaving_ally
execute if entity @s[tag=ff_stranger] run tag @s add ff_leaving_stranger

# Remove Tags to clean up
function nfg_forcefield:helper/player/cleanup_bound_state

# Reset binding score
scoreboard players reset @s ff_bind_prot
