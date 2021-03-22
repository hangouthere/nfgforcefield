# nfgForceField

## TODO:

-   New Scan technique: From players!

    -   Scans from a Player
    -   Only selects mobs within "reasonable" distance
    -   Checks each one for hit
    -   Disposes of those in-bounds

        DataStructure:

        ```
        {
            // Unique ID for ForceField
            id,
            // Unique ID for Player
            ownerId,
            // Starting perimiter coords
            start: {x,y,z},
            // Ending perimiter coords
            end: {x,y,z},
            // Calculated Properties
            calcs: {
                // Bearing Vector Starting -> Ending
                vec: {x,y,z},
                // Volume Sizing Vector
                volume: {x,y,z},
                // Center coords of Volume Space
                center: {x,y,z},
                // Squared Distance calculation between start/end points
                dist_sq: 0,
                // Area of Volume Space
                area: 0,
                w2l: {
                    // Offset value to convert other vectors to this local space
                    offset: {x,y,z},
                    // Bounds as calculated from 0,0,0 of volume space
                    bounds: {x,y,z}
                },
            },

            // Still to come...
            type: "perimeter" | "volume",
            protections: {
                mob: true,
                building: true
            },
        }
        ```

-   Settings:
    -   Initial setup should give a Book to describe how everything works
        -   First load (hidden semaphore) will give option for a setup wizard - for small/medium/large fields and default values (or skip and use shipped defaults)
        -   Can be a kickoff point for giving the stands as well
        -   Option to show settings 20 seconds
        -   Option to make corners invisible (off by default)
        -   Option to make corners show tooltips (on by default)
        -   Option to make corners force chunks
    -   Hide DEBUG setting
-   Build small framework around working with corners, and matching the other one? What use cases is this for?
-   Detect same-type fields nested inside each other. Makes zero sense, so don't allow it!
-   Make Multiplayer Friendly! Associate player ID to corners (also preface for "ownable" fields)
    -   Think about maximum nested sub-types.. ie, to limit the number of Ending Corners when scanning against a matching Starting Corner
-   Convert min/max area settings to read from storage, like \_ffId
-   DELETE `end_crystal_target`, or do something with it, or next row....
-   Idea for Corner Markers (while placing):
    -   When user places starting corner, use a light block of some sort (for long distance view)
        -   When moving away from the corner, the block should move upward the same amount to visually see (maybe cap height?)
            -   ONLY allow/move block if block is air
-   (Let's not actually do this??? Sounds anti-multiplayer) Protect multiple people from building forcefields
    -   If Tagged player found, error
    -   No Tagged found, offer items
        -   Tag player as "operating" while item is in inventory
        -   If player drops item in inventory, drop the tag from the player
    -   Alternative, just select based on inventory items?
-   Consider different approach:
    -   upgrades to combine forcefield types? Mob + Build
    -   separate mob/build from perimeter/volume, and actually create them separately!
-   Build Protection
    -   Needs to tell user on Entry
    -   Needs to put into Adventure mode on Entry
    -   Needs to tell user on Exit
    -   Needs to put into Survival mode on Exit
-   Corner updates on occassion?
    -   Items can be moved due to gravity, might need minor updates from time to time
-   ReadMe Stuffs
    -   Write README about how End Corner targeting works, since there can be multiple corners it has to search through
    -   Explain Power Mods
-   Assignable Forcefields
    -   Need to basically track ID to player (easy in a scoreboard)
    -   Adds features/capabilities based on matching ID (or mismatching ID)
    -   Multiple players can match an ID for "tribes"
-   Constructable ForceFields
    -   Requires Assignable to be functioning or it's just not worthwhile
    -   Needs to be VERY expensive!
-   ReDo namespacing... currently `nfg_forcefield:blah`, should be `nfg:forcefield/blah`... tedius, but cleaner grouping of my work
-   Scanning (and really anything else) - Gate logic of corner gathering unless it's necessary
    -   Also see if there's way to tighten up the function tree by gating with if checks and limiting the amount of repeated selectors
    -   Try to use tighter selectors, like `type=armor_stand`

## Notes:

Get Tags and ArmorItems info:

```
execute as @e[sort=nearest,limit=1,type=!player] run tag @s list
execute as @e[sort=nearest,limit=1,type=!player] run data get entity @s ArmorItems[3].tag._ff
```

Give an `in3`/`circleMaker` marker:

```
give @p armor_stand{EntityTag:{CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Tags:["circleMaker","ff_init","in3"],ArmorItems:[{},{},{},{id:"minecraft:gold_block",Count:1b}],CustomName:'{"text":"CircleMaker"}'}} 1
```

---

### Detect a specific item (Inventory, Hand, Chest/Block, On Ground): https://www.reddit.com/r/MinecraftCommands/wiki/questions/detectitem

Get the Entity Data that matches the ForceField Ending Corner (Note the extensive inclusion of full `Name` value as it's all a giant JSONText string, and not NBT Compound data)

```
data get entity @s Inventory[{id:"minecraft:armor_stand"}].tag.display{Name:'[{"text":"ForceField","color":"gold"},{"text":" - ","color":"white"},{"text":"Ending Corner","color":"aqua"}]'}]
```

Target the player with the ForceField Ending Corner

```
execute as @a[nbt={Inventory:[{id:"minecraft:armor_stand",tag:{display:{Name:'[{"text":"ForceField","color":"gold"},{"text":" - ","color":"white"},{"text":"Ending Corner","color":"aqua"}]'}}}]}] run say I have this Item
```

---

### Find Paired Items

```
execute as @e[scores={_ff_pair_map=1..}] at @e[tag=ff_corner,tag=ff_configured,tag=ff_start] if score @s _ff_pair_map = @e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1] _ff_pair_map run say Test
```

### Count non players with same score

```
NOT CORRECT - execute store result score _found _ff_pair_map run execute if entity @e[scores={_ff_pair_map=92},type=!player]
```

### WORKING, but Gross?

```
scoreboard players reset _found _ff_pair_map

execute as @e[scores={_ff_pair_map=1..}] at @e[tag=ff_corner,tag=ff_configured,tag=ff_start] if score @s _ff_pair_map = @e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1] _ff_pair_map run scoreboard players add _found _ff_pair_map 1
```
