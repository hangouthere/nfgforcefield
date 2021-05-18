# Background
replaceitem block ~ ~ ~ container.0 diamond_hoe{ff:{config:1b},CustomModelData:255100,HideFlags:127,display:{Name:'""'}}

##################################################################
## Books
# Allied Incoming
execute unless entity @p[tag=ff_configuring,nbt={Inventory:[{tag:{ff:{messages:1b,direction:1b,allied:1b}}}]}] run replaceitem block ~ ~ ~ container.10 writable_book{display:{Name:'[{"text":"Incoming Allied ","color":"green"},{"text":"Messages","color":"white"}]',Lore:['{"text":" "}','{"text":"Configure Messages with this book,","color":"white"}','{"text":"and place it back in the same slot","color":"white"}','{"text":"when you\'re done, or it won\'t save!","color":"white"}','{"text":" "}','{"text":"Page 1: Large Title Text","color":"gray"}','{"text":"Page 2: Medium Subtitle Text","color":"gray"}','{"text":"Page 3: Smaller Action Text","color":"gray"}','{"text":"Page 4: Server Chat","color":"gray"}']},HideFlags:127,ff:{messages:1b,direction:1b,allied:1b},pages:[""]}
# Allied Leaving
execute unless entity @p[tag=ff_configuring,nbt={Inventory:[{tag:{ff:{messages:1b,direction:0b,allied:1b}}}]}] run replaceitem block ~ ~ ~ container.11 writable_book{display:{Name:'[{"text":"Leaving ","color":"red"},{"text":"Allied ","color":"green"},{"text":"Messages","color":"white"}]',Lore:['{"text":" "}','{"text":"Configure Messages with this book,","color":"white"}','{"text":"and place it back in the same slot","color":"white"}','{"text":"when you\'re done, or it won\'t save!","color":"white"}','{"text":" "}','{"text":"Page 1: Large Title Text","color":"gray"}','{"text":"Page 2: Medium Subtitle Text","color":"gray"}','{"text":"Page 3: Smaller Action Text","color":"gray"}','{"text":"Page 4: Server Chat","color":"gray"}']},HideFlags:127,ff:{messages:1b,direction:0b,allied:1b},pages:[]}
# Stranger Incoming
execute unless entity @p[tag=ff_configuring,nbt={Inventory:[{tag:{ff:{messages:1b,direction:1b,allied:0b}}}]}] run replaceitem block ~ ~ ~ container.15 writable_book{display:{Name:'[{"text":"Incoming ","color":"green"},{"text":"Stranger ","color":"yellow"},{"text":"Messages","color":"white"}]',Lore:['{"text":" "}','{"text":"Configure Messages with this book,","color":"white"}','{"text":"and place it back in the same slot","color":"white"}','{"text":"when you\'re done, or it won\'t save!","color":"white"}','{"text":" "}','{"text":"Page 1: Large Title Text","color":"gray"}','{"text":"Page 2: Medium Subtitle Text","color":"gray"}','{"text":"Page 3: Smaller Action Text","color":"gray"}','{"text":"Page 4: Server Chat","color":"gray"}']},HideFlags:127,ff:{messages:1b,direction:1b,allied:0b},pages:[]}
# Stranger Leaving
execute unless entity @p[tag=ff_configuring,nbt={Inventory:[{tag:{ff:{messages:1b,direction:0b,allied:0b}}}]}] run replaceitem block ~ ~ ~ container.16 writable_book{display:{Name:'[{"text":"Leaving ","color":"red"},{"text":"Stranger ","color":"yellow"},{"text":"Messages","color":"white"}]',Lore:['{"text":" "}','{"text":"Configure Messages with this book,","color":"white"}','{"text":"and place it back in the same slot","color":"white"}','{"text":"when you\'re done, or it won\'t save!","color":"white"}','{"text":" "}','{"text":"Page 1: Large Title Text","color":"gray"}','{"text":"Page 2: Medium Subtitle Text","color":"gray"}','{"text":"Page 3: Smaller Action Text","color":"gray"}','{"text":"Page 4: Server Chat","color":"gray"}']},HideFlags:127,ff:{messages:1b,direction:0b,allied:0b},pages:[]}

##################################################################
## Tooltips
# Info
replaceitem block ~ ~ ~ container.4 diamond_hoe{display:{Name:'[{"text":"nfgForceField ","color":"gold"},{"text":"Configurator ","color":"white"},{"text":"Help","color":"aqua"}]',Lore:['{"text":" "}','[{"text":"Configure ","color":"white"},{"text":"Incoming","color":"green"},{"text":"/"},{"text":"Outgoing","color":"dark_red"}]','{"text":"Messages & Potions for both ","color":"white"}','[{"text":"Allied ","color":"green"},{"text":"& ","color":"white"},{"text":"Strangers","color":"yellow"},{"text":" of a ","color":"white"},{"text":"ForceField","color":"gold"},{"text":".","color":"white"}]']},HideFlags:127,CustomModelData:255000,ff:{config:1b}}
# Allied Entering
replaceitem block ~ ~ ~ container.1 diamond_hoe{display:{Name:'{"text":"Allied Entering","color":"green"}',Lore:['[{"text":"When ","color":"white"},{"text":"Allied enter","color":"green"},{"text":" a "},{"text":"ForceField","color":"gold"}]','{"text":"safe zone, we can apply custom","color":"white"}','{"text":"messages & potions to both","color":"white"}','{"text":"welcome, and enhance the area!","color":"white"}']},HideFlags:127,CustomModelData:255000,ff:{config:1b}}
# Allied Leaving
replaceitem block ~ ~ ~ container.2 diamond_hoe{display:{Name:'[{"text":"Allied ","color":"green"},{"text":"Leaving","color":"red"}]',Lore:['[{"text":"When ","color":"white"},{"text":"Allied ","color":"green"},{"text":"leave","color":"red"},{"text":" a "},{"text":"ForceField","color":"gold"}]','{"text":"safe zone, we can apply custom","color":"white"}','{"text":"messages & potions to both","color":"white"}','{"text":"warn, and prepare the Players!","color":"white"}']},HideFlags:127,CustomModelData:255000,ff:{config:1b}}
# Strangers Entering
replaceitem block ~ ~ ~ container.6 diamond_hoe{display:{Name:'[{"text":"Stranger ","color":"yellow"},{"text":"Entering","color":"green"}]',Lore:['[{"text":"When ","color":"white"},{"text":"Strangers ","color":"yellow"},{"text":"enter","color":"green"},{"text":" a "}]','[{"text":"ForceField ","color":"gold"},{"text":"safe zone, we can","color":"white"}]','{"text":"apply custom messages & potions","color":"white"}','{"text":"to both warn/thwart (or protect)","color":"white"}','{"text":"Players! It\'s up to you!","color":"white"}']},HideFlags:127,CustomModelData:255000,ff:{config:1b}}
# Strangers Leaving
replaceitem block ~ ~ ~ container.7 diamond_hoe{display:{Name:'[{"text":"Stranger ","color":"yellow"},{"text":"Leaving","color":"red"}]',Lore:['[{"text":"Assuming ","color":"white"},{"text":"Strangers ","color":"yellow"},{"text":"were allowed in,"}]','[{"text":"leaving","color":"red"},{"text":" a ","color":"white"},{"text":"ForceField ","color":"gold"},{"text":"safe zone,","color":"white"}]','{"text":"we can apply custom messages","color":"white"}','{"text":"& potions to remind them to stay","color":"white"}','{"text":"out, or invite them back!","color":"white"}']},HideFlags:127,CustomModelData:255000,ff:{config:1b}}
# Messages
replaceitem block ~ ~ ~ container.12 diamond_hoe{display:{Name:'{"text":"Configuring Messages is easy!","color":"white"}',Lore:['{"text":" ","color":"white"}','{"text":"Simply take the book, and edit","color":"white"}','{"text":"the appropriate pages to modify ","color":"white"}','{"text":"each individual message.","color":"white"}','{"text":" "}','{"text":"Page 1: Large Title Text","color":"gray"}','{"text":"Page 2: Medium Subtitle Text","color":"gray"}','{"text":"Page 3: Smaller Action Text","color":"gray"}','{"text":"Page 4: Server Chat","color":"gray"}']},HideFlags:127,CustomModelData:255000,ff:{config:1b}}
replaceitem block ~ ~ ~ container.13 diamond_hoe{display:{Name:'{"text":"Configuring Messages is easy!","color":"white"}',Lore:['{"text":" ","color":"white"}','{"text":"Simply take the book, and edit","color":"white"}','{"text":"the appropriate pages to modify ","color":"white"}','{"text":"each individual message.","color":"white"}','{"text":" "}','{"text":"Page 1: Large Title Text","color":"gray"}','{"text":"Page 2: Medium Subtitle Text","color":"gray"}','{"text":"Page 3: Smaller Action Text","color":"gray"}','{"text":"Page 4: Server Chat","color":"gray"}']},HideFlags:127,CustomModelData:255000,ff:{config:1b}}
replaceitem block ~ ~ ~ container.14 diamond_hoe{display:{Name:'{"text":"Configuring Messages is easy!","color":"white"}',Lore:['{"text":" ","color":"white"}','{"text":"Simply take the book, and edit","color":"white"}','{"text":"the appropriate pages to modify ","color":"white"}','{"text":"each individual message.","color":"white"}','{"text":" "}','{"text":"Page 1: Large Title Text","color":"gray"}','{"text":"Page 2: Medium Subtitle Text","color":"gray"}','{"text":"Page 3: Smaller Action Text","color":"gray"}','{"text":"Page 4: Server Chat","color":"gray"}']},HideFlags:127,CustomModelData:255000,ff:{config:1b}}
# Potions
replaceitem block ~ ~ ~ container.21 diamond_hoe{display:{Name:'{"text":"Double, double toil and trouble!","color":"white"}',Lore:['{"text":" ","color":"white"}','{"text":"Drop a Potion in the appropriate","color":"white"}','{"text":"slots, and it\'ll be applied to ","color":"white"}','[{"text":"Allied ","color":"green"},{"text":"& ","color":"white"},{"text":"Strangers ","color":"yellow"},{"text":"alike as they","color":"white"}]','[{"text":"Enter ","color":"green"},{"text":"and ","color":"white"},{"text":"leave ","color":"red"},{"text":"a safe zone.","color":"white"}]']},HideFlags:127,CustomModelData:255000,ff:{config:1b}}
replaceitem block ~ ~ ~ container.22 diamond_hoe{display:{Name:'{"text":"Double, double toil and trouble!","color":"white"}',Lore:['{"text":" ","color":"white"}','{"text":"Drop a Potion in the appropriate","color":"white"}','{"text":"slots, and it\'ll be applied to ","color":"white"}','[{"text":"Allied ","color":"green"},{"text":"& ","color":"white"},{"text":"Strangers ","color":"yellow"},{"text":"alike as they","color":"white"}]','[{"text":"Enter ","color":"green"},{"text":"and ","color":"white"},{"text":"leave ","color":"red"},{"text":"a safe zone.","color":"white"}]']},HideFlags:127,CustomModelData:255000,ff:{config:1b}}
replaceitem block ~ ~ ~ container.23 diamond_hoe{display:{Name:'{"text":"Double, double toil and trouble!","color":"white"}',Lore:['{"text":" ","color":"white"}','{"text":"Drop a Potion in the appropriate","color":"white"}','{"text":"slots, and it\'ll be applied to ","color":"white"}','[{"text":"Allied ","color":"green"},{"text":"& ","color":"white"},{"text":"Strangers ","color":"yellow"},{"text":"alike as they","color":"white"}]','[{"text":"Enter ","color":"green"},{"text":"and ","color":"white"},{"text":"leave ","color":"red"},{"text":"a safe zone.","color":"white"}]']},HideFlags:127,CustomModelData:255000,ff:{config:1b}}

##################################################################

# Nav: Next
replaceitem block ~ ~ ~ container.26 diamond_hoe{ff:{config:1b,paginate:1b,next:1b},CustomModelData:255001,HideFlags:127,display:{Name:'{"text":"Next Page"}'}}

##################################################################

# Junk Spots
replaceitem block ~ ~ ~ container.3 air
replaceitem block ~ ~ ~ container.5 air
replaceitem block ~ ~ ~ container.8 air
replaceitem block ~ ~ ~ container.9 air
replaceitem block ~ ~ ~ container.17 air
replaceitem block ~ ~ ~ container.18 air
replaceitem block ~ ~ ~ container.19 air
replaceitem block ~ ~ ~ container.20 air
replaceitem block ~ ~ ~ container.24 air
replaceitem block ~ ~ ~ container.25 air

##################################################################
## Update items for the User

# Allied Entering
data modify block ~ ~ ~ Items[{Slot:10b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.allied.entering.title
data modify block ~ ~ ~ Items[{Slot:10b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.allied.entering.subtitle
data modify block ~ ~ ~ Items[{Slot:10b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.allied.entering.actionbar
data modify block ~ ~ ~ Items[{Slot:10b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.allied.entering.serverChat
# Allied Leaving
data modify block ~ ~ ~ Items[{Slot:11b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.allied.leaving.title
data modify block ~ ~ ~ Items[{Slot:11b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.allied.leaving.subtitle
data modify block ~ ~ ~ Items[{Slot:11b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.allied.leaving.actionbar
data modify block ~ ~ ~ Items[{Slot:11b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.allied.leaving.serverChat
# Stranger Entering
data modify block ~ ~ ~ Items[{Slot:15b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.stranger.entering.title
data modify block ~ ~ ~ Items[{Slot:15b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.stranger.entering.subtitle
data modify block ~ ~ ~ Items[{Slot:15b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.stranger.entering.actionbar
data modify block ~ ~ ~ Items[{Slot:15b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.stranger.entering.serverChat
# Stranger Leaving
data modify block ~ ~ ~ Items[{Slot:16b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.stranger.leaving.title
data modify block ~ ~ ~ Items[{Slot:16b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.stranger.leaving.subtitle
data modify block ~ ~ ~ Items[{Slot:16b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.stranger.leaving.actionbar
data modify block ~ ~ ~ Items[{Slot:16b}].tag.pages append from storage nfg:forcefield operations.meta.config.ff.messages.stranger.leaving.serverChat
