# Detect Paginate item
execute store result score #hasConfigItem ff_config run clear @s diamond_hoe{ff:{config:1b}} 0

# Detect Paginate item
execute if score #hasConfigItem ff_config matches 1 store result score #hasPaginate ff_config run clear @s diamond_hoe{ff:{paginate:1b}} 0

# Detect Prot Build modifications
execute if score #hasConfigItem ff_config matches 1 store result score #hasProtBuildCfg ff_config run clear @s diamond_hoe{ff:{prot_build:1b}} 0

# Detect Prot Mob modifications
execute if score #hasConfigItem ff_config matches 1 store result score #hasProtMobCfg ff_config run clear @s diamond_hoe{ff:{prot_mob:1b}} 0
