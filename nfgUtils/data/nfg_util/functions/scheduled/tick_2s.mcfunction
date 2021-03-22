## Assign Player IDs
# Make sure everyone has a score
scoreboard players add @a _nfg_player_id 0
# Init player IDs
execute as @a[scores={_nfg_player_id=0}] run function nfg_util:scheduled/assign_player_id

schedule function nfg_util:scheduled/tick_2s 2s replace
