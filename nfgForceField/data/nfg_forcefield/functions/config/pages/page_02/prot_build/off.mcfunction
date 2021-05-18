# Power
data modify block ~ ~ ~ Items[{Slot:10b}].tag.CustomModelData set value 255201

# Off ON
data modify block ~ ~ ~ Items[{Slot:19b}].tag.CustomModelData set value 255204
data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Name set value '"Powered Off"'
data modify block ~ ~ ~ Items[{Slot:11b}].tag.display.Name set value '"Powered Off"'

# Perimeter OFF
data modify block ~ ~ ~ Items[{Slot:9b}].tag.CustomModelData set value 255205

# Volume OFF
data modify block ~ ~ ~ Items[{Slot:12b}].tag.CustomModelData set value 255207
