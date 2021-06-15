execute if score #DEBUG ff_calcs matches 10 run say ++ Is Powered

### Scan Player if they DON'T own the ForceField

# Allied Player Entered a Build Protection Zone
execute if entity @s[tag=ff_entering_ally] run function nfg_forcefield:scanning/process/prot_build/entering_ally

# Allied Player Left a Build Protection Zone
execute if entity @s[tag=ff_leaving_ally] run function nfg_forcefield:scanning/process/prot_build/leaving_ally

# Stranger Player Entered a Build Protection Zone
execute if entity @s[tag=ff_entering_stranger] run function nfg_forcefield:scanning/process/prot_build/entering_stranger

# Stranger Player Left a Build Protection Zone
execute if entity @s[tag=ff_leaving_stranger] run function nfg_forcefield:scanning/process/prot_build/leaving_stranger
