# Corners - Config: Finalize Ending Corner
# Finalize the specifics for the Ending Corner, like Power Status, etc...
#####################################
# Started as: [Anon Passthru] execute as @e[tag=ff_corner] at @s | execute if entity @s[tag=!ff_init,tag=ff_end]

# Execute separate Build Types (aka matching Staring Corner type) to reduce repetitiveness
execute at @e[tag=!ff_configured,tag=ff_start,tag=ff_prot_build,sort=nearest,limit=1] run function nfg_forcefield:corners/unconfigured/config/finalize_end_prot_build
execute at @e[tag=!ff_configured,tag=ff_start,tag=ff_prot_mob,sort=nearest,limit=1] run function nfg_forcefield:corners/unconfigured/config/finalize_end_prot_mob
