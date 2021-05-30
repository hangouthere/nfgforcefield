# Stop Closing Chest sound 🤮
stopsound @a[distance=..16] * block.chest.close

# Clear player's rotation to avoid errors
data remove entity @e[tag=ff_config_marker,sort=nearest,limit=1] ArmorItems[0].tag

# Return non-Configure items to the Player for a Page
function nfg_forcefield:config/pages/page_return

# Save the Configurator, but ONLY if the player is not mid-configure (ie, has a book)
execute unless entity @s[nbt={Inventory:[{tag:{ff:{messages:1b}}}]}] run function nfg_forcefield:config/state/finalize

# Assume if there were errors, the block/container still exists, and we need to make sure
# Other players can't control it, but the OG player can still access it!
data remove block ~ ~ ~ Items
# Unlock the Chest
data remove block ~ ~ ~ Lock

# Swap tags to mark Active!
tag @s remove ff_config_active_lock
tag @s remove ff_config_active
tag @s add ff_config_inactive
