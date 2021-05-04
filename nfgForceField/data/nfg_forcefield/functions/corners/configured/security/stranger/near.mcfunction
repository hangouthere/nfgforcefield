scoreboard players set #_knockback_delay_check ff_calcs 0

tag @p add ff_knockback

# Create trajectory object to knock back player
summon armor_stand ~ ~ ~ {Invisible: 1b, Invulnerable: 1b, Tags: ["ff_knockback_helper"]}

# Set up the Knockback Helper
execute as @e[tag=ff_knockback_helper,sort=nearest,limit=1] run function nfg_forcefield:corners/configured/security/stranger/knockback_helper_init
