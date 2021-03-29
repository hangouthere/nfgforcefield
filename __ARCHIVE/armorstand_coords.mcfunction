# Shows coords above armor stands

# Junk Sign to process JSONText
setblock ~ ~1 ~ dark_oak_sign{Text1:'[{"text":"Pos: ","color":"gold"},{"nbt":"Pos[0]","entity":"@e[type=armor_stand,sort=nearest,limit=1]","color":"white"}," ",{"nbt":"Pos[2]","entity":"@e[type=armor_stand,sort=nearest,limit=1]","color":"white"}]'} replace
# Copy parsed text to the Corner
data modify entity @e[type=armor_stand,sort=nearest,limit=1] CustomName set from block ~ ~1 ~ Text1
data modify entity @e[type=armor_stand,sort=nearest,limit=1] CustomNameVisible set value 1b
# Remove Sign
setblock ~ ~1 ~ air replace
