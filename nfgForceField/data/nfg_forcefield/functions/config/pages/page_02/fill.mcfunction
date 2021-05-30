# Setup Vars for Protection Types
execute store result score #modeProtBuild ff_config run data get storage nfg:forcefield operations.meta.config.ff.protections.building
execute store result score #modeProtMob ff_config run data get storage nfg:forcefield operations.meta.config.ff.protections.mob

# Background
replaceitem block ~ ~ ~ container.0 diamond_hoe{ff:{config:1b},HideFlags:127,CustomModelData:255200,display:{Name:'""'}}

##################################################################
## Tooltips
# Info
replaceitem block ~ ~ ~ container.4 diamond_hoe{display:{Name:'[{"text":"nfgForceField ","color":"gold"},{"text":"Configurator ","color":"white"},{"text":"Help","color":"aqua"}]',Lore:['{"text":" "}','{"text":"Configure the Shape per Protection","color":"white"}','{"text":"Type, or you can individually Power","color":"white"}','[{"text":"Off ","color":"red"},{"text":"a Type entirely!","color":"white"}]']},HideFlags:127,CustomModelData:255000,ff:{config:1b}}
replaceitem block ~ ~ ~ container.21 air
replaceitem block ~ ~ ~ container.22 air
replaceitem block ~ ~ ~ container.23 air

##################################################################
## Build Protection
# Build Power
replaceitem block ~ ~ ~ container.10 diamond_hoe{ff:{config:1b},HideFlags:127,CustomModelData:255000,display:{Name:'""'}}
replaceitem block ~ ~ ~ container.11 diamond_hoe{ff:{config:1b},HideFlags:127,CustomModelData:255000,display:{Name:'""'}}
# Prot Build Options
replaceitem block ~ ~ ~ container.9 diamond_hoe{ff:{config:1b,prot_build:1b,prot_type:1b},HideFlags:127,CustomModelData:255000,display:{Name:'"Perimeter"'}}
replaceitem block ~ ~ ~ container.12 diamond_hoe{ff:{config:1b,prot_build:1b,prot_type:2b},HideFlags:127,CustomModelData:255000,display:{Name:'"Volume"'}}
replaceitem block ~ ~ ~ container.19 diamond_hoe{ff:{config:1b,prot_build:1b,prot_type:0b},HideFlags:127,CustomModelData:255000,display:{Name:'"Off"'}}

##################################################################
## Mob Protection
# Mob Power
replaceitem block ~ ~ ~ container.15 diamond_hoe{ff:{config:1b},HideFlags:127,CustomModelData:255000,display:{Name:'""'}}
replaceitem block ~ ~ ~ container.16 diamond_hoe{ff:{config:1b},HideFlags:127,CustomModelData:255000,display:{Name:'""'}}
# Prot Mob Options
replaceitem block ~ ~ ~ container.14 diamond_hoe{ff:{config:1b,prot_mob:1b,prot_type:1b},HideFlags:127,CustomModelData:255000,display:{Name:'"Perimeter"'}}
replaceitem block ~ ~ ~ container.17 diamond_hoe{ff:{config:1b,prot_mob:1b,prot_type:2b},HideFlags:127,CustomModelData:255000,display:{Name:'"Volume"'}}
replaceitem block ~ ~ ~ container.25 diamond_hoe{ff:{config:1b,prot_mob:1b,prot_type:0b},HideFlags:127,CustomModelData:255000,display:{Name:'"Off"'}}

##################################################################

# Nav: Next
replaceitem block ~ ~ ~ container.26 diamond_hoe{ff:{config:1b,paginate:1b,prev:1b},HideFlags:127,CustomModelData:255002,display:{Name:'{"text":"Previous Page"}'}}

##################################################################

# Junk Spots
replaceitem block ~ ~ ~ container.1 air
replaceitem block ~ ~ ~ container.2 air
replaceitem block ~ ~ ~ container.3 air
replaceitem block ~ ~ ~ container.5 air
replaceitem block ~ ~ ~ container.6 air
replaceitem block ~ ~ ~ container.7 air
replaceitem block ~ ~ ~ container.8 air
replaceitem block ~ ~ ~ container.13 air
replaceitem block ~ ~ ~ container.18 air
replaceitem block ~ ~ ~ container.20 air
replaceitem block ~ ~ ~ container.24 air

##################################################################

# Update Build Statuses
execute if score #modeProtBuild ff_config matches 0 run function nfg_forcefield:config/pages/page_02/prot_build/off
execute if score #modeProtBuild ff_config matches 1 run function nfg_forcefield:config/pages/page_02/prot_build/perim
execute if score #modeProtBuild ff_config matches 2 run function nfg_forcefield:config/pages/page_02/prot_build/vol

# Update Mob Statuses
execute if score #modeProtMob ff_config matches 0 run function nfg_forcefield:config/pages/page_02/prot_mob/off
execute if score #modeProtMob ff_config matches 1 run function nfg_forcefield:config/pages/page_02/prot_mob/perim
execute if score #modeProtMob ff_config matches 2 run function nfg_forcefield:config/pages/page_02/prot_mob/vol

# Clear Storage
data remove storage nfg:forcefield operations.meta.config
