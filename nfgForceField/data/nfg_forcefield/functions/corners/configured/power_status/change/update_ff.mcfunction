# Increment Version Number (on targeted/updated data)
execute store result score #update_currVersion ff_calcs run data get storage nfg:forcefield operations.meta.search.target.version
execute store result storage nfg:forcefield operations.meta.search.target.version int 1 run scoreboard players add #update_currVersion ff_calcs 1

# Copy re-sorted list to proper location
data modify storage nfg:forcefield ForceFields set from storage nfg:forcefield operations.meta.search.list
# Copy update to live FF pool. Since we were found, index 0 is the identified
data modify storage nfg:forcefield ForceFields[0] set from storage nfg:forcefield operations.meta.search.target

# Add Corner FF definition to the update queue (if we could find it in the main pool in the update process)
data modify storage nfg:forcefield operations.update append from storage nfg:forcefield operations.meta.search.target

# Copy updated data to current Corner
data modify entity @s ArmorItems[0].tag set from storage nfg:forcefield operations.meta.search.target
