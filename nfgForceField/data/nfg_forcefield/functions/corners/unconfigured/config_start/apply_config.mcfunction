function nfg_forcefield:corners/unconfigured/store_corner_data

# Copy re-sorted list to proper location
data modify storage nfg:forcefield operations.create set from storage nfg:forcefield operations.meta.list
# Remove from `operations.create` array to avoid processing again
data remove storage nfg:forcefield operations.create[0]
