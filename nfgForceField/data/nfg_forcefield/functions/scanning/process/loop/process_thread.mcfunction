# Loop Process Thread, aka Current Player

# Scan Self for Build Protection (if not in creative)
execute if entity @s[gamemode=!creative] run function nfg_forcefield:scanning/process/prot_build/scan

# Scan from current Mob Thread Starter
function nfg_forcefield:scanning/process/prot_mob/scan

