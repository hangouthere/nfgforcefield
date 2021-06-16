# Mark process as forced, to avoid over/redundant processing
scoreboard players set #isUpdateForced ff_calcs 1

# Copy re-sorted list to proper location
data modify storage nfg:forcefield operations.update set from storage nfg:forcefield operations.meta.search.list

# Copy Update value to Corner
data modify entity @s ArmorItems[0].tag set from storage nfg:forcefield operations.update[0]

# Delete the Update value now that it's cleaned up
data remove storage nfg:forcefield operations.update[0]

# TODO: This needs to be updated to determine shape info
# Turn off if it was marked on!
execute if entity @s[tag=ff_power_on,nbt={ArmorItems:[{tag:{protections:{powered:0}}}]}] run function nfg_forcefield:corners/configured/power_status/change/off

# Turn on if it was marked off!
execute if entity @s[tag=ff_power_off,nbt={ArmorItems:[{tag:{protections:{powered:1}}}]}] run function nfg_forcefield:corners/configured/power_status/change/on
