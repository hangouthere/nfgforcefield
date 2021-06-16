# Add the ID to deleted items for scans to clean up
data modify storage nfg:forcefield operations.delete append from storage nfg:forcefield operations.meta.search.found_ff

# Copy re-sorted list to proper location
data modify storage nfg:forcefield ForceFields set from storage nfg:forcefield operations.meta.search.list
# Found the associated ForceField data, so let's destroy it
data remove storage nfg:forcefield ForceFields[0]
