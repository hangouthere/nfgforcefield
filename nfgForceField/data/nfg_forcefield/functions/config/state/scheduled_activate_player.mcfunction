# Store the Player's Rotation on the `ff_config_marker` to eval against while Active.
data modify entity @e[tag=ff_config_marker,sort=nearest,limit=1] ArmorItems[0].tag.lock.Rotation set from entity @s Rotation

# Mark the player as Locked
tag @s remove ff_config_active_pending_lock
tag @s add ff_config_active_lock
