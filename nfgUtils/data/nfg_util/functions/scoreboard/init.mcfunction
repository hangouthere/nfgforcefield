# Scoreboard - Init
# Initialize necessary scoreboards, default values, etc

scoreboard objectives remove _nfg_const
scoreboard objectives remove _nfg_calcs
scoreboard objectives remove _nfg_settings

scoreboard objectives add _nfg_player_id dummy
scoreboard objectives add _nfg_const dummy
scoreboard objectives add _nfg_calcs dummy
scoreboard objectives add _nfg_settings dummy

scoreboard players set #_1 _nfg_const 1
scoreboard players set #_2 _nfg_const 2
scoreboard players set #_-1 _nfg_const -1

# Restore from Local Storage, or set Default
execute store result score #_nfgNextPlayerId _nfg_calcs run data get storage nfg:util _nfgNextPlayerId
execute if score #_nfgNextPlayerId _nfg_calcs matches 0 run data modify storage nfg:util _nfgNextPlayerId set value 1
execute if score #_nfgNextPlayerId _nfg_calcs matches 0 run scoreboard players set #_nfgNextPlayerId _nfg_calcs 1
