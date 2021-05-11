# Inventory: Give Player Helper
# Only gives item if they don't have them already
#####################################
# Started as: /trigger ff | execute if entity @s[tag=!ff_admin]

execute unless entity @p[nbt={Inventory:[{tag:{ff_player_helper:1b}}]}] run give @p written_book{display:{Name:'[{"text":"nfgForceField -","color":"gold"},{"text":" Player Helper","color":"light_purple"}]',Lore:['{"text":"Everything you could ever need","color":"white"}','[{"text":"to use ","color":"white"},{"text":"nfgForceField","color":"gold"},{"text":"!"}]']},ff_player_helper:1b,title:"nfgForceField Helper",author:"nfgCodex",generation:3,pages:['[{"text":"","color":"dark_gray"},{"text":"[nfgForceField]\\n ","color":"gold","bold":true},{"text":" -= Player Helper =-","color":"light_purple"},{"text":"\\n------------------\\n"},{"text":"My ID: ","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"This is your unique ID"}]}},{"score":{"name":"@p","objective":"nfg_player_id"},"color":"gray"},{"text":"\\n\\n☠ ","color":"dark_gray"},{"text":"Item 1:\\n"},{"text":"  "},{"text":"["},{"text":"Do Something","color":"light_purple"},{"text":"] "},{"text":"\\n\\n"},{"text":"⚠ ","color":"red"},{"text":"Item 2\\n"},{"text":"  ["},{"text":"Give","color":"dark_green"},{"text":"] "},{"text":"["},{"text":"Take","color":"red"},{"text":"]"},{"text":"\\n\\n❂ ","color":"dark_aqua"},{"text":"Item 3"},{"text":"\\n  ["},{"text":"Do Something","color":"dark_aqua"},{"text":"]"},{"text":"\\n  ["},{"text":"Do Something","color":"dark_purple"},{"text":"]"}]','[{"text":"","color":"dark_gray"},{"text":"["},{"text":"About ForceFields","color":"gold","bold":true},{"text":"]"},{"text":"\\nForceFields ","color":"gold"},{"text":"protect a configured area, and perform various protections within a Shape.\\n\\nShapes of ForceFields: "},{"text":"Volume ","color":"dark_blue","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Volume ","color":"dark_blue"},{"text":"shapes will scan exactly\\ncorner to corner like a box\\nwithin the world. Areas outside of\\ncorners are vulnerable against\\nthe protection types.","color":"white"}]}},{"text":"and "},{"text":"Perimeter","color":"dark_aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Perimeter ","color":"dark_aqua"},{"text":"shapes will scan like a\\nrectangular tube, from top to\\nbottom of the world, to the corner\\nboundaries. Areas beyond the\\ncorners are vulnerable against the\\nprotection types.","color":"white"}]}},{"text":".\\n\\nTypes of Protection: "},{"text":"Build","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Build ","color":"light_purple"},{"text":"protection ensures other\\nPlayers cannot break or place any\\nblocks within the protection shape.","color":"white"}]}},{"text":" and "},{"text":"Mob","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Mob ","color":"red"},{"text":"protection acts like a\\nbug-zapper, taking out any\\nhostile mobs that breach the\\nprotection shape.","color":"white"}]}},{"text":"."}]','[{"text":"","color":"dark_gray"},{"text":"ForceFields ","color":"gold"},{"text":"also have an "},{"text":"Entering ","color":"yellow"},{"text":"and "},{"text":"Leaving ","color":"green"},{"text":"message that can be tailored to the area. A warming welcome, an ominous warning - it\'s up to you!\\n\\nAs strangers walk up to the perimeter of your Shape, a configurable \\"protection\\" zone is"}]','[{"text":"","color":"dark_gray"},{"text":"placed around to prevent griefing.\\n\\nIn this extra zone, as well as within your Shape, "},{"text":"Players ","color":"light_purple"},{"text":"cannot place or break blocks, use explosive or projectiles (i.e., arrows, fireworks, etc), and Creepers & TNT will not explode!"}]']} 1
