# nfgForceField

## TODO:

### Phase 1

When this Phase is complete, that means we are able to start using it on the NFGArmy server!

-   ~~Settings:~~
    -   ~~Initial setup:~~
        -   ~~Detected via hidden semaphore: `#_doneInit ff_calcs`, 1.. is true~~
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
-   ~~Convert to new scan technique:~~
    -   ~~Need to add datastructure saving to the env~~
        -   ~~Startup needs to define the template~~
        -   ~~Need to copy over the process of calc vs saving ff data, i liked the split...~~
        -   ~~Probably don't need the metadata in the forcefield anymore?~~
            -   ~~Got rid of some, keeping some for tooltips~~
    -   ~~Power mod: Both on/off at same time causes freak-out~~
    -   ~~Get rid of all traces of option to make corners force chunks~~
    -   ~~Get rid of max settings, keep min settings?~~
    -   ~~Use actual scan technique in the sandbox~~
    -   ~~Needs check added to ignore forever-more? Tricky because they could be far from one forcefield, but not another 🤔~~
        -   ~~Consensus marking for "perma-ignore": Mark as far away if far away, close if close... at the end of the FF loop, we clear both tags for `close`+`far` combo'd entities since they're nearby another field... `close`-only can technically keep it's tag (or can lose it), far only keeps it's tags and ignored on future scans~~
    -   ~~Clean up `ff_processed_` tags, make them less junky if possible~~
-   ~~Clean up scanning namespace in storage... uses _scan_\*, should be isolated to namespaces!~~
-   ~~Mob Protection~~
    -   ~~Kill & Zap, like current implementation, but with new technique~~
    -   ~~Needs to include betteranimalsplus hostile mobs~~
-   ~~Clean up Scanning so it's easy to split off for Mob vs Build protection~~
-   ~~Build Protection~~
    -   ~~Needs to tell user on Entry~~
    -   ~~Needs to put into Adventure mode on Entry~~
    -   ~~Needs to tell user on Exit~~
    -   ~~Needs to put into Survival mode on Exit~~
    -   ~~Added: New buffer perim for protecting against destroying corners/etc~~
-   ~~Get rid of DEBUG completely - (left sprinkled in for scanning)~~
-   ~~DELETE `end_crystal_target`, or do something with it, or next row....~~
-   ~~Delete all of `__ARCHIVE` junk~~
-   ~~Fix validation errors for non-creative players - they lose the corners!~~
-   ~~Deleting a forcefield~~
    -   ~~existing needs redo, score won't work if you go out of chunk and kills the FF's~~
        -   ~~remove concept of score pair :(~~
    -   ~~ needs to remove from the array to stop future processing~~
    -   ~~Corners in unloaded chunks need handling~~
        -   ~~Store for deletion later~~
        -   ~~On corner scan test if we need to delete~~
    -   ~~Needs to return corners, and not dropped items~~
-   ~~Refactor `tag.ff` to `tag.ff`~~
-   ~~Look at combining `placing` and `config` into same namespace since they're practically related~~
    -   ~~It should require more cleanup of `placing` as well, building deeper namespaces and general cleanup~~
-   ~~Fix namespaces to be tighter~~
    -   ~~get rid of prefix-underscores in all namespaces~~
    -   ~~Considered NS':~~
        -   ~~scanner~~
            -   ~~current (replaces current)~~
            -   ~~list (replaces ForceFields)~~
        -   ~~operations~~
            -   ~~create~~
            -   ~~delete~~
            -   ~~meta~~
                -   ~~id_found~~
                -   ~~id_break~~
                -   ~~id_test~~
            -
-   ~~Consider different/updated approaches:~~
    -   ~~upgrades to combine forcefield types? Mob + Build~~
    -   ~~Tooltips will need update~~
    -   ~~Update error checks to go off data on helper instead of corner~~
        -   ~~ending can't be placed because start can't be detected~~
    -   ~~Stranger vs Owner messages when entering/leaving FF?~~
    -   ~~Corner creation beyond chunk loadings need to function properly~~
        -   ~~maybe sorta opposite of delete process?~~
        -   ~~Update corner ID's/meta for tooltips, and owner evaluations~~
            -   ~~don't forget process of out of chunk load!~~
    -   ~~No start/end concept, just --CORNER--~~
    -   ~~Remove `ff_prot_build`, `ff_prob_mob` concept (will later use data!!)~~
    -   ~~Update labeling to get rid of mob vs build protection wording~~
    -   ~~Upon config of new FF, should wipe scan array to force new scan on tick~~
    -   ~~Double check error checking:~~
        -   ~~chunk-unload friendly~~
    -   ~~Default to:~~
        -   ~~Mob: Perimeter~~
        -   ~~Build: Volume~~

-   Clean up placement actionbar
    -   ~~Use ff_building_helper to get data~~
    -   had runtime issue with the bar going to wrong player
-   Player Book
    -   Basic configuration/information
    -   on/off? (will change later to cost players, don't overengineer this yet)
    -   mob/build shape settings? (will change later to cost players, don't overengineer this yet)
-   ~~Make Multiplayer Friendly! Associate player ID to corners (also preface for "ownable" fields)~~
-   ~~Normalize corner and data storage data structure formats~~
    -   ~~That includes scanning lookups, etc... Try to use STORAGE where possible~~
-   Corner protection (beyond the Protect Boundary)
    -   Needs to push back non-owners (really fuck 'em up without hurting them) to ensure they stay safe from punching
-   Bug: When player destroys starting corner they keep tags.. need to once more detect breakage 🤪
    -   Also needs to kill `ff_building_helper`
-   Bug: Items are still dropping when a corner is destroyed
    -   Try tagging the items on the stand, and when they drop just del them `@e[type=item,tag=ff_corner_armor]`
-   Bug: When building, a player that's technically closer will take control
    -   Needs to error if >= 2 players found within 5 (or 6) radius of newly placed corners (to avoid mis-writing)
-   Exploit/Bug: When owner is near corner it's vulnerable, if enemy player is near it can be destroyed by them
    -   Verify this somehow, although pushback idea should take care of it
-   Bug: Corners near each other don't handle break detection correctly
    -   Armor stand is left behind
    -   Could this mean enemies can exploit this?
-   Bug: Entering/Leaving as non-owner makes text freak out
-   Bug: Power mod status doesn't affect matching corner
    -   Might need an `operations` namespace/process?
    -   Doesn't actually have an effect on the FF
-   Revisit admin book, make sure terminology and functionality matches new processing and implementation(s)
    -   Add info about settings and meanings
    -   Cover protection area better
-   Consider changing coords from {x,y,z} to [x,y,z] for less command execs?
    -   Basically anywhere `_x` appears
- Enchance corner tooltips, they're bland and boring. Might need multi-line!
-   ReDo namespacing... currently `nfg_forcefield:blah`, should be `nfg:forcefield/blah`... tedius, but cleaner grouping of my work
-   Clean up/review all docs
-   Look into optimizing some tick functionality, not everything needs to be done EVERY tick
    -   Corner deletion/creation updates kinda stuff? every 10-20t
    -   Corner tooltip updates could be every 10t

Things to Test:

* 2 players placing at the same time
  * 1 player deleting while placing
  * Actionbar is giving accurate info
  * Have players run through eachother to see if helper's swap

### Phase 2

-   Split up nfgUtil and nfgForceField repos, and include build zip for nfgUtil in nfgForceField
-   Per-FF Configuration
    -   FF Mods: Perim vs Volume, Mob vs Build (see Different Approach below)
    -   Option to make corners invisible (off by default)
    -   Option to make corners hide tooltips (off by default)
    -   Heals at all?
        -   Enable Setting
        -   Maybe after some delay (setting)?
    -   Fancy particles indicating internal to FF?
    -   Corner sparkles of sorts?
        -   Maybe following perimeter?
    -   Sounds
        -   Separate ambient vs zap
    -   Complex idea with chest+books...
        -   ~~Messaging:
            -   ~~Incoming Title/Subtitle/ActionBar/~~Server Text
            -   ~~Outgoing Title/Subtitle/ActionBar/~~Server Text
-   Assignable Forcefields
    -   ~~Need to basically track ID to player~~
    -   ~~Adds features/capabilities based on matching ID (or mismatching ID)~~
    -   Multiple players can match an ID for "tribes"
-   ReadMe Stuffs
    -   Explain Volume vs Perimeter Shapes
    -   Explain Mob vs Build Protection
    -   Explain Power Mods
    -   Explain Settings
    -   Explain Scanning Process(es?)
    -   Explain Suspension system (for optimization)
        -   How settings relate to tweaking for your own server

### Phase 3 / Nice to Haves

-   Constructable ForceFields
    -   Requires Assignable to be functioning or it's just not worthwhile
    -   Needs to be VERY expensive!
    -   Consider either floor crafting,
-   Deeper Admin Tools
    -   Orphaned/Broken FF's? (somehow not properly deleted)
    -   Reset Suspends to fix broken perma-suspends
-   Corner updates on occassion?
    -   Items might be moved due to gravity, might need minor updates from time to time
-   Idea for Corner Markers (while placing):
    -   When user places starting corner, use a light block of some sort (for long distance view)
        -   When moving away from the corner, the block should move upward the same amount to visually see (maybe cap height?)
            -   ONLY allow/move block if block is air

---

## Useful Commands:

Give self vindicator egg (dumb)

```
give @s minecraft:vindicator_spawn_egg{EntityTag:{NoAI:1b,Silent:1b}}
give @s minecraft:villager{EntityTag:{NoAI:1b,Silent:1b}}
```

Get Tags and ArmorItems info:

```
execute as @e[sort=nearest,limit=1,type=!player] run tag @s list
execute as @e[sort=nearest,limit=1,type=!player] run data get entity @s ArmorItems[0].tag
```

Get Player ID:

```
tellraw @s ["My ID: ", {"score":{"name":"@s","objective":"nfg_player_id"}}]
```

Give an `in3`/`circleMaker` marker:

```
give @p armor_stand{EntityTag:{CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Tags:["circleMaker","ff_init","in3"],ArmorItems:[{},{},{},{id:"minecraft:gold_block",Count:1b}],CustomName:'{"text":"CircleMaker"}'}} 1
```

Detect a specific item (Inventory, Hand, Chest/Block, On Ground): https://www.reddit.com/r/MinecraftCommands/wiki/questions/detectitem

Get the Entity Data that matches the ForceField Ending Corner (Note the extensive inclusion of full `Name` value as it's all a giant JSONText string, and not NBT Compound data)

```
data get entity @s Inventory[{id:"minecraft:armor_stand"}].tag.display{Name:'[{"text":"ForceField","color":"gold"},{"text":" - ","color":"white"},{"text":"Ending Corner","color":"aqua"}]'}]
```

Target the player with the ForceField Ending Corner

```
execute as @a[nbt={Inventory:[{id:"minecraft:armor_stand",tag:{display:{Name:'[{"text":"ForceField","color":"gold"},{"text":" - ","color":"white"},{"text":"Ending Corner","color":"aqua"}]'}}}]}] run say I have this Item
```

---

# ForceField Meta

## ForceField Settings

| Var Name                  | Default Value | Description                                                                                                                                                                 |
| ------------------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| MinAreaPerim              | 10            | Minimum Area for Area Shape necessary to finalize a build.                                                                                                                  |
| BoundsProtectZoneDistance | 16            | Protection Buffer around ForceField Shape to help ensure safety of perimeter and Corner Pieces.                                                                             |
| BoundsTrackZoneDistance   | 75            | Mob Scan: Zone around the ForceField Shape to always track/scan. Hostile Entities outside of this area will be Suspended.                                                   |
| BoundsIgnoreZoneDistance  | 150           | Mob Scan: Outside this Zone will be _permanently_ ignored, meanwhile within these bounds will only be _temporarily_ ignored, and eventually recycled back into scan cycles. |
| MobRecycleSeconds         | 15            | Mob Scan: How many seconds to elapse before re-introducing Hostile Entities into scan cycles.                                                                               |

---

## FF Build Process

Tick
  - if entity @s[tag=ff_building_helper] (Building Helper Detected)
    - tp @s @p[tag=ff_building]
  - if entity @s[tag=ff_corner] (Corner Detected)
    - if entity @s[tag=ff_init] (Corner init'd, freshly placed, both corners)
      - if entity @p[tag=!ff_building] (Current player is NOT building, this is effectively the start corner)
        - Tag player as `ff_building`
        - Copy FF template to Storage meta
        - Update new Storage meta to have `ff_id` and `player_id`
        - Init `ff_building_helper`
        - Store primary data on Corner
        - Copy primary data to Helper
        - Set score `#_sameTick` to 1
        - Remove `ff_init` so it's no longer fresh init'd
      - unless score `#_sameTick` matches 1 if entity @p[tag=ff_building]
        (If not already marked as the sameTick, building is already started, let's try to finalize the FF build)
        - Check Area for minimum reqs
          - If Fail, delete and give back a Corner
          - If not Failed, mark it as such (tag ff_no_errors)
        - if entity @p[tag=!ff_no_errors]
          - Calculate final data of FF
          - Copy data from `ff_building_helper` into Storage
          - Store final data in Storage
          - Copy data from Storage to this corner
    - Set score `#_sameTick` to 0 to reset## ForceField Data Structure

```
{
    id: {
        // Unique ID for ForceField
        ff:0,
        // Unique ID for Player
        owner:0
    },

    corner: {
        start: {x:0, y:0, z:0},
        end: {x:0, y:0, z:0}
    },

    calc: {
        area: 0
    },

    // Different Zones to test for various hit-detections
    zone: {
        // Kill Zone - zappable mobs die here
        kill: {
            // Offset value to convert other vectors to this local space
            offset: {x:0, y:0, z:0},
            // Bounds as calculated from 0,0,0 of volume space
            bounds: {x:0, y:0, z:0}
        },
        // Track Zone - this area may contain mobs
        // close to the field, consider trackable
        track: {
            // Offset value to convert other vectors to this local space
            offset: {x:0, y:0, z:0},
            // Bounds as calculated from 0,0,0 of volume space
            bounds: {x:0, y:0, z:0}
        },
        // Suspend Zone - mobs in this area will be ignored for a time determined by settings (MobRecycleSeconds)
        suspend: {
            // Offset value to convert other vectors to this local space
            offset: {x:0, y:0, z:0},
            // Bounds as calculated from 0,0,0 of volume space
            bounds: {x:0, y:0, z:0}
        }
    },

    // Define the protections: "perimeter", "volume", or "off"
    protections: {
        mob: "perimeter",
        building: "volume"
    },

    // Messages for enter/leaving the Protection Zone
    messages: {
        entering: {
            title: "Entering Safe Zone",
            subtitle: "Welcome home",
            actionbar: "Block Protection Enabled"
        },
        leaving: {
            title: "Leaving Safe Zone",
            subtitle: "See you next time!",
            actionbar: "Block Protection Disabled"
        },
    }
}
```



## Scan Process Example

Scan Starts: - [Tick] - (scanCount > 1) isn't true, so we reset - sets scanMobs = 2 - sets playerCount = 0 - - Not Scanning Mobs, No Players, loop Players

FF1:

-   Scans Mob A in
-   Scans Mob B Suspend Temp
-   Scans Mob C Suspend Perm
-   Scans Mob D Suspend Perm
-   Scans Mob E Suspend Perm
-   Scans Mob F Suspend Perm
    FF2:
-   Scans Mob A Suspend Temp
-   Scans Mob B Suspend Perm
-   Scans Mob C Suspend Perm
-   Scans Mob D Suspend Temp
-   Scans Mob E in
-   Scans Mob F kill

mid cleanup:

-   A - in + s-temp = remove s-temp
-   B - s-temp + s-perm = remove s-perm
-   C - s-perm + s-perm = noop
-   D - same as B
-   E - s-perm + in = remove s-perm
-   F - s-perm + kill = remove s-perm (but will also kill)

# Known Issues

There's some things out of my control considering this is a datapack, so because of that I'll list out some potential issues.

### Corners can be destroyed by explosions

This is actually a MineCraft bug itself: https://bugs.mojang.com/browse/MC-78689

A simple solution is to ensure `BoundsProtectZoneDistance` has a reasonable size so players cannot get explosions close enough
