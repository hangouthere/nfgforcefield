# Swap tags to mark Active!
tag @s remove ff_config_inactive
tag @s add ff_config_active_pending_lock
tag @s add ff_config_active

# Reset so we can trigger and re-Activate later
scoreboard players set @s ff_config_open 0

function nfg_forcefield:config/pages/reset_items

# Lock the Chest
data modify block ~ ~ ~ Lock set value "ff_lock_stay_out"

# Initiate sound stopping loop
function nfg_forcefield:config/state/scheduled_sound

# Schedule an update to fully activate the player.
# This avoids a player moving quickly and opening the chest,
# and the player model continuing to slide/update
schedule function nfg_forcefield:config/state/scheduled_activate 5t replace
