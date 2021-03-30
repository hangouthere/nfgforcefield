# nfgForceField

## TODO:

### Phase 1

When this Phase is complete, that means we are able to start using it on the NFGArmy server!

-   ~~Settings:~~
    -   ~~Initial setup:~~
        -   ~~Detected via hidden semaphore: `#_doneInit _ff_calcs`, 1.. is true~~
        -   ~~Doesn't require special tag, but also gives it to the player: `ff_admin`~~
        -   ~~Convert weird localstorage settings loading of settings to this lifecycle~~
        -   Should give a Book to describe how everything works
    -   ~~Admin Helper Book~~
        -   **Page 1: Overview**
            -   Force-Give Building Pieces
            -   `ff_admin` to Nearby: [Give] | [Take]
            -   [Give Player Helper Book]
            -   Player's ID
        -   **Page 2: Intro**
            -   Should clearly detail that tags need to be given to players to perform similar actions
            -   This book is meant to help you learn about ForceFields, as well as how they operate, and the different ways you can use them
        -   **Page 3: About FF**
            -   Describe how a FF works
            -   Volume vs Perimeter
            -   Mob vs Build
-   Convert to new scan technique:

    -   Need to add datastructure saving to the env
        -   ~~Startup needs to define the template~~
        -   ~~Need to copy over the process of calc vs saving ff data, i liked the split...~~
        -   ~~Probably don't need the metadata in the forcefield anymore?~~
            -   Keep tooltips? If so, then def need some data
    -   ~~Power mod: Both on/off at same time causes freak-out~~
    -   ~~Get rid of all traces of option to make corners force chunks~~
    -   ~~Get rid of max settings, keep min settings?~~
    -   ~~Use actual scan technique in the sandbox~~
    -   Needs DistSQ check added to ignore forever-more? Tricky because they could be far from one forcefield, but not another 🤔
        -   Consensus marking for "perma-ignore": Mark as far away if far away, close if close... at the end of the FF loop, we clear both tags for `close`+`far` combo'd entities since they're nearby another field... `close`-only can technically keep it's tag (or can lose it), far only keeps it's tags and ignored on future scans

-   Clean up Scanning so it's easy to split off for Mob vs Build protection
-   Mob Protection
    -   Kill & Zap, like current implementation, but with new technique
-   Build Protection
    -   Needs to tell user on Entry
    -   Needs to put into Adventure mode on Entry
    -   Needs to tell user on Exit
    -   Needs to put into Survival mode on Exit
-   DELETE `end_crystal_target`, or do something with it, or next row....
-   ~~Get rid of DEBUG completely - (left sprinkled in for scanning)~~
-   Clean up docs:
    -   Power Status
    -   first run
    -   Inventory
    -   Helpers
    -   etc?
-   Deleting a forcefield
    -   existing needs redo, score won't work if you go out of chunk
        -   remove concept of score pair :(
        -   maybe place a hidden "i'm the actual corner" corner that can detect when there ISN'T a typical player corner
    -   needs to remove from the array to stop future processing
    -   First it must find it, then delete it
    -   Can do 2 step, find index and then reiterate to delete, or do it in one pass 🤔

### Phase 2

-   Make Multiplayer Friendly! Associate player ID to corners (also preface for "ownable" fields)
-   Per-FF Configuration
    -   FF Mods: Perim vs Volume, Mob vs Build (see Different Approach below)
    -   Option to make corners invisible (off by default)
    -   Option to make corners hide tooltips (off by default)
    -   Sounds
        -   Separate ambient vs zap
    -   Complex idea with chest+books...
        -   Messaging:
            -   Incoming Title/Subtitle/ActionBar/Server Text
            -   Outgoing Title/Subtitle/ActionBar/Server Text
-   Consider different approach:
    -   upgrades to combine forcefield types? Mob + Build
    -   separate mob/build from perimeter/volume, and actually create them separately!
-   Corner auto-destroy on FF break?
    -   How should they be destroyable anyway? Currently invincible...
        -   Destroyable by owner only, somehow?
        -   Done via helper/config setup? Instantly destroys and gives player items to rebuild?
    -   Currently in place, but should it? What if I just want to extend my FF? How would I?
    -   Without any update, if volume protection doesn't protect under the corner, it can be moved by destroying land under it.... this is probably highly undesirable, and needs to be countered somehow... Maybe a smaller ff around each corner to avoid breaking the item somehow? If not the owner, you get bounced back some?
-   ReadMe Stuffs
    -   Write README about how End Corner targeting works, since there can be multiple corners it has to search through
    -   Explain Power Mods
-   Assignable Forcefields
    -   Need to basically track ID to player (easy in a scoreboard)
    -   Adds features/capabilities based on matching ID (or mismatching ID)
    -   Multiple players can match an ID for "tribes"
-   ReDo namespacing... currently `nfg_forcefield:blah`, should be `nfg:forcefield/blah`... tedius, but cleaner grouping of my work
-   Split up nfgUtil and nfgForceField repos, and include build zip for nfgUtil in nfgForceField
-   Get rid of DEBUG everywhere?
-   Upon config of new FF, needs to wipe scan array to force new scan on tick

### Phase 3 / Nice to Haves

-   Constructable ForceFields
    -   Requires Assignable to be functioning or it's just not worthwhile
    -   Needs to be VERY expensive!
    -   Consider either floor crafting,
-   Corner updates on occassion?
    -   Items can be moved due to gravity, might need minor updates from time to time
-   Idea for Corner Markers (while placing):
    -   When user places starting corner, use a light block of some sort (for long distance view)
        -   When moving away from the corner, the block should move upward the same amount to visually see (maybe cap height?)
            -   ONLY allow/move block if block is air

---

## Notes:

Get Tags and ArmorItems info:

```
execute as @e[sort=nearest,limit=1,type=!player] run tag @s list
execute as @e[sort=nearest,limit=1,type=!player] run data get entity @s ArmorItems[3].tag._ff
```

Get Player ID:

```
tellraw @s ["My ID: ", {"score":{"name":"@s","objective":"_nfg_player_id"}}]
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

### Target the player with the ForceField Ending Corner

```
execute as @a[nbt={Inventory:[{id:"minecraft:armor_stand",tag:{display:{Name:'[{"text":"ForceField","color":"gold"},{"text":" - ","color":"white"},{"text":"Ending Corner","color":"aqua"}]'}}}]}] run say I have this Item
```

### Find Paired Items

```
execute as @e[scores={_ff_pair_map=1..}] at @e[tag=ff_corner,tag=ff_configured,tag=ff_start] if score @s _ff_pair_map = @e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1] _ff_pair_map run say Test
```

### Count non players with same score

```
scoreboard players reset _found _ff_pair_map

execute as @e[scores={_ff_pair_map=1..}] at @e[tag=ff_corner,tag=ff_configured,tag=ff_start] if score @s _ff_pair_map = @e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1] _ff_pair_map run scoreboard players add _found _ff_pair_map 1
```

---

### ForceField Data Structure

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
        // Maximum Squared Distance to ever consider again.
        // Outside these bounds are forever ignored on subsequent scans!
        dist_sq_max: 0,
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
