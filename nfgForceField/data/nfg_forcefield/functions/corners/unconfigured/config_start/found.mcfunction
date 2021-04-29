# Store found Created FF
data modify storage nfg:forcefield operations.meta set from storage nfg:forcefield operations.create[0]

# Remove from `operations.create` array to avoid processing again
data remove storage nfg:forcefield operations.create[0]
