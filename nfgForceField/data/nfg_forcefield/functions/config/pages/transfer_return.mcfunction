# Copy from our returnItems
data modify entity @s Item set from storage nfg:forcefield operations.meta.config.returnItems[0]

# Move the item to the player!
tp @s @p[tag=ff_configuring]

# Remove this item in the list
data remove storage nfg:forcefield operations.meta.config.returnItems[0]
