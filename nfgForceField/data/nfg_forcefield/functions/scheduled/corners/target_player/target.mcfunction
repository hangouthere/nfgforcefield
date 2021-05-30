# Quickly rotate the entity to the player (since this function is run facing player),
# then we'll immediately face the correct 90-degree
tp @s ^ ^ ^ ~ ~

### Position the UI Box facing the right way
## 0 - 180
# Player facing N
execute if entity @s[y_rotation=0..46] run tp @s ~ ~ ~ 0 0
# Player facing E
execute if entity @s[y_rotation=46..135] run tp @s ~ ~ ~ 90 0
# Player facing S
execute if entity @s[y_rotation=135..180] run tp @s ~ ~ ~ 180 0
## -180 - -1
# Player facing S
execute if entity @s[y_rotation=-180..-135] run tp @s ~ ~ ~ 180 0
# Player facing W
execute if entity @s[y_rotation=-135..-45] run tp @s ~ ~ ~ -90 0
# Player facing N
execute if entity @s[y_rotation=-45..-1] run tp @s ~ ~ ~ 0 0
