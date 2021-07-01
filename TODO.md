-   [GreenThreaded] Scan Players into a known Bound State
    -   Unbound/Unsuspended players are scanned
    -   Each FF is scanned, unfortunately... This could be a lot, really, so i might need to look at sub-greenthreading this functionality
    -   If not in tracking zone, skip player, mark as temp suspend for future scans (scheduled function will clear, or a score timer kept for a TTY for next scan)
    -   If in tracking zone, do further hit tests (prot/kill zone)
        -   Tag as "bound"
        -   "Hits" result in storing apropos meta into "current" player data in storage as we scan _per_ player
        -   Determine ownership/affiliation (owner/ally/stranger)
-   [GreenThreaded] Bound Players are scanned via

# TODO:

## Phase 1

When this Phase is complete, that means we are able to start using it on the NFGArmy server!

-   Consider:
    -   Switch after break:
        -   when a player breaks a FF and goes to a new one, we don't want to make it LOOK like we did, so tag the player when they break it, and if we do a re-bind with the tag active we skip messaging protocols
-   Bugs Found Testing:
    -   Moving between 2 FF near each other do not bind properly
        -   ie, an INNER FF cannot be configured internally, must be done via corner (not cool!)
            -   Does processing prot/hit for EVERY zone make sense? Does it add too much lag? If not lag, latency?
    -   Multiplayer:
        -   Building a FF
            -   Shouldn't be able to build near another player's corner while building
                -   4 chunk default distance, but make a setting: MinDistTandemBuild
            -   building helper switches players as they cross
                -   Consider using a scoreboard to associate helper w/player instead of location
            -   When 2 are building and 1 finishes, the 2nd FF tooltips are activated erroneously
-   Config
    -   Change to use SCORE compare for ID matching instead of data copy!
    -   Needs to finish tooltips on 2nd page
    -   Update `powered`
        -   Update to shape type, will require a semi-heavy lift
        -   Both off should actually show power off
        -   Do we want to change the model? 🤔
    -   Needs sounds
        -   ✅ Error
        -   Config Success
        -   knockback
        -   Open Config
        -   Close Config?
    -   Trigger command to toggle messaging to ff_admin about ownership
        -   Will need to update command to only work when score is NOT `1..`
-   Make all `kill` commands a `tp` command?
    -   Kill vs TP Setting for mobs? default to tp of course
-   Breaking a configured FF needs to target OWNER, and ensure owner ID matches for returning corner and breaking!
-   When a configurator is placed and errors, it needs to check for owner of bound/nearest and return to THAT player

-   Bug: `ff_admin` destroy is not working 🤷‍♂️
    -   I think it WAS working, I just didn't see the text?
    -   Maybe add error requirements?
-   Test: Forcefield inside FF, leaving build prot inner into the outter build prot, does it enable survival erroneously? Or correct itself instantly?
-   Re-verify `creative/spectator` and `ff_admin` rights....
    -   It's either not clear enough, or something as to why you can do things
    -   Message in chat?
        -   Might need to be different per mode/role as they may actually perform differently
            -   Consider stranger/ally messages for creative/spectator vs `ff_admin`?
        -   Per-user setting to disable the message?
    -   Tell them in chat they can take over via the FF Admin book (which needs to be done)
-   Player Book
    -   on/off? (will change later to cost players, don't overengineer this yet)
    -   Basic configuration/information
    -   mob/build shape settings? (will change later to cost players, don't overengineer this yet)
-   Bug: When a FF is deleted, strangers are left in adventure mode!!!
-   Bug: Clear chat after chat actions... this alleviates any scrolling back up and getting to re-do something you don't want the player to do, such as go around deleting random FF's
-   Add Allied Entering messaging!
-   Add Allied capabilities
    -   Needs Player Book update, similar to Give/Take `ff_admin`
-   Look into optimizing some tick functionality, not everything needs to be done EVERY tick
    -   Clean up entity selectors, esp when copy/writing data... Use storage as temp location, then store on Entity at end
    -   Corner deletion/creation updates kinda stuff? every 10-20t
    -   Corner tooltip updates could be every 10t
    -   Double check scores (esp `store result score`) to make sure scopes are isolated (easiest via unique names)
-   Players that switch modes need to have their state cleared
    -   Maybe keep a score of OP mode = 1, non op mode doesn't have a score?
    -   If creative or spectator and mode = ??, clear state and set to 1
    -   If mode = 1 and NOT creative or spectator, clear state and reset score
-   Look into optimizing if/unless selector attributes...
    -   Example:
        -   Before: `execute unless entity @s[tag=ff_effect_knockback] if entity @s[distance=..6] run function nfg_forcefield:corners/security/stranger/near`
        -   After: `execute if entity @s[tag=!ff_effect_knockback,distance=..6] run function nfg_forcefield:corners/security/stranger/near`
-   Need new error check on creating a FF, should be a minimum distance from another FF?
    -   Think this over
-   Inform `ff_admin` of their abilities in Admin book, as well as a server message as they enter the area
    -   Consider being able to silence this via a trigger
-   Update GUI for Page 1 of config, Allied/Stranger need green/red coloring as the in-game color
-   Admin book Update:
    -   Take ownership of FF
    -   Add OP trigger for complete reset, and info in the book about it
-   Upgrade to messaging: Should allow nbt strings from users, copied from a sign i think?
-   Minor update to Create process:
    -   Area should be split between perim and volume
        -   Needs volume calc added
    -   Tooltip needs updating to show both, m^2 and m^3
        -   Might need adjustments based on size? That way we don't see 918273912791827391827917m2
    -   Cache tooltip to avoid future processing!
    -   Make corner avoid gravity???????? Decide once and for all!
-   Search source for `TODO` entries and clean up!
-   Clean up/review all docs
-   Tags are broken if Better Animals/Etc is not installed - Release as independent datapack, adding to the tag? - Include a separate tag? -

Things to Test:

-   Items give back to the right person correctly
    -   Creative Owner vs Creative Stranger vs `ff_admin` vs `ff_owner` vs `ff_ally`
-   2 players placing at the same time
    -   1 player deleting while placing
    -   Actionbar is giving accurate info
    -   Have players run through eachother to see if helper's swap
    -   check `corners/unconfigured/placing/building_helper/init` to ensure removing the tags that way doesn't over-affect entities in a negative way, particularly `ff_needs_config`, `ff_init`, and `ff_start`
-   When FF off, can it be destroyed by another player? via TNT?
    -   Who gets the Corners? Should be OWNER or no one!
-   When near FF configuring, can another player destroy?
-   When FF configuring, can/should you place near another chest?
    -   if opening alt chest, does it mess up?
    -   might need a predicate to do a quick radius check to avoid issues
        -   script this out (and k.i.s.s. - it's not a main part of the project!)
-   100% verify `cleanup_state` and `cleanup_bound_state` are used correctly

## Phase 2

-   Split up data storage
    -   Templates (nfg namespaced)
    -   Operations
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
    -   Complex idea with chest+books...
        -   ~~Messaging:
            -   ~~Entering Title/Subtitle/ActionBar/~~Server Text
            -   ~~Outgoing Title/Subtitle/ActionBar/~~Server Text
-   Assignable Forcefields
    -   ~~Need to basically track ID to player~~
    -   ~~Adds features/capabilities based on matching ID (or mismatching ID)~~
    -   Multiple players can match an ID for "tribes"
        -   Consider Ark approach (ie tribe admins/alliances)
-   ReadMe Stuffs
    -   Explain Volume vs Perimeter Shapes
    -   Explain Mob vs Build Protection
    -   Explain Power Mods
    -   Explain Settings
    -   Explain Scanning Process(es?)
    -   Explain Suspension system (for optimization)
        -   How settings relate to tweaking for your own server

## Phase 3 / Nice to Haves

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
    -   When Player places starting corner, use a light block of some sort (for long distance view)
        -   When moving away from the corner, the block should move upward the same amount to visually see (maybe cap height?)
            -   ONLY allow/move block if block is air
-   ReDo namespacing... currently `nfg_forcefield:blah`, should be `nfg:forcefield/blah`... tedius, but cleaner grouping of my work

## Completed!

-   Settings:
    -   Initial setup:
        -   Detected via hidden semaphore: `#_doneInit ff_calcs`, 1.. is true
        -   Doesn't require special tag, but also gives it to the player: `ff_admin`
        -   Convert weird localstorage settings loading of settings to this lifecycle
        -   Should give a Book to describe how everything works
    -   Admin Helper Book
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
        -   Startup needs to define the template
        -   Need to copy over the process of calc vs saving ff data, i liked the split...
        -   Probably don't need the metadata in the forcefield anymore?
            -   Got rid of some, keeping some for tooltips
    -   Power mod: Both on/off at same time causes freak-out
    -   Get rid of all traces of option to make corners force chunks
    -   Get rid of max settings, keep min settings?
    -   Use actual scan technique in the sandbox
    -   Needs check added to ignore forever-more? Tricky because they could be far from one forcefield, but not another 🤔
        -   Consensus marking for "perma-ignore": Mark as far away if far away, close if close... at the end of the FF loop, we clear both tags for `close`+`far` combo'd entities since they're nearby another field... `close`-only can technically keep it's tag (or can lose it), far only keeps it's tags and ignored on future scans
    -   Clean up `ff_processed_` tags, make them less junky if possible
-   Clean up scanning namespace in storage... uses _scan_\*, should be isolated to namespaces!
-   Mob Protection
    -   Kill & Zap, like current implementation, but with new technique
    -   Needs to include betteranimalsplus hostile mobs
-   Clean up Scanning so it's easy to split off for Mob vs Build protection
-   Build Protection
    -   Needs to tell Player on Entry
    -   Needs to put into Adventure mode on Entry
    -   Needs to tell Player on Exit
    -   Needs to put into Survival mode on Exit
    -   Added: New buffer perim for protecting against destroying corners/etc
-   Get rid of DEBUG completely - (left sprinkled in for scanning)
-   DELETE `end_crystal_target`, or do something with it, or next row....
-   Delete all of `__ARCHIVE` junk
-   Fix validation errors for non-creative players - they lose the corners!
-   Deleting a forcefield
    -   existing needs redo, score won't work if you go out of chunk and kills the FF's
        -   remove concept of score pair :(
    -   needs to remove from the array to stop future processing
    -   Corners in unloaded chunks need handling
        -   Store for deletion later
        -   On corner scan test if we need to delete
    -   Needs to return corners, and not dropped items
-   Refactor `tag.ff` to `tag.ff`
-   Look at combining `placing` and `config` into same namespace since they're practically related
    -   It should require more cleanup of `placing` as well, building deeper namespaces and general cleanup
-   Fix namespaces to be tighter
    -   get rid of prefix-underscores in all namespaces
    -   Considered NS':
        -   scanner
            -   current (replaces current)
            -   list (replaces ForceFields)
        -   operations
            -   create
            -   delete
            -   meta
                -   id_found
                -   id_break
                -   id_test
-   Consider different/updated approaches:
    -   upgrades to combine forcefield types? Mob + Build
    -   Tooltips will need update
    -   Update error checks to go off data on helper instead of corner
        -   ending can't be placed because start can't be detected
    -   Stranger vs Owner messages when entering/leaving FF?
    -   Corner creation beyond chunk loadings need to function properly
        -   maybe sorta opposite of delete process?
        -   Update corner ID's/meta for tooltips, and owner evaluations
            -   don't forget process of out of chunk load!
    -   No start/end concept, just --CORNER--
    -   Remove `ff_stranger`, `ff_prob_mob` concept (will later use data!!)
    -   Update labeling to get rid of mob vs build protection wording
    -   Upon config of new FF, should wipe scan array to force new scan on tick
    -   Double check error checking:
        -   chunk-unload friendly
    -   Default to:
        -   Mob: Perimeter
        -   Build: Volume
-   Clean up placement actionbar
    -   Use ff_building_helper to get data
-   Make Multiplayer Friendly! Associate player ID to corners (also preface for "ownable" fields)
-   Normalize corner and data storage data structure formats
    -   That includes scanning lookups, etc... Try to use STORAGE where possible
-   Corner protection (beyond the Protect Boundary)
    -   Needs to push back non-owners (really fuck 'em up without hurting them) to ensure they stay safe from punching
-   Bug: Corners near each other don't handle break detection correctly
    -   Armor stand is left behind
-   Bug: When player destroys starting corner they keep tags.. need to once more detect breakage 🤪
    -   Convert current corner destroy detection to all corners instead of just configured
    -   Also needs to kill `ff_building_helper`
    -   Dropped items from corners should be tagged for more accurate destroying (instead of destroying in a block zone around detected breaking)
-   Bug: Items are still dropping when a corner is destroyed
    -   Try tagging the items on the stand, and when they drop just del them `@e[type=item,tag=ff_corner_armor]`
-   Bug: When multiple FF's exist, entering/leaving an area gets wonky real quick
-   Bug: When building, a player that's technically closer will take control
    -   Needs to error if >= 2 players found within 5 (or 6) radius of newly placed corners (to avoid mis-writing)
-   Bug: Power mod status doesn't affect matching corner
    -   Might need an `operations` namespace/process?
    -   Doesn't actually have an effect on the FF
-   HUGE bug: Array loopings operate on a copy now, so operations that assume index 0 to be the current are invalid
    -   Need to copy back after search in every instance
        -   CREATE
        -   UPDATE
        -   DELETE
-   Bug: Enabling/Disabling a single FF seems to affect ALL FF's in a scan...
-   Revisit admin book, make sure terminology and functionality matches new processing and implementation(s)
    -   Add info about settings and meanings
    -   Cover protection area better
-   Enchance corner tooltips, they're bland and boring. Might need multi-line!
-   Check/clean up things that maybe shouldn't happen in Creative Mode
    -   Corner Knockbacks shouldn't affect creative mode ppl
    -   Players that go into creative mode while in a stranger's FF aren't handled correctly when going back into Survival
-   `ff_admin` should be able to destroy/update ALL ForceFields!
-   Sounds
    -   Fix sounds to be mono so they position correctly!!!
    -   Separate ambient vs zap
    -   Include sources in README!
-   Config
    -   Needs to give player items back
    -   Optimize:
        -   Placing a configurator and not touching seems to use cycles... figure it out
            -   Only render when `ff_config_active` OPENS the thing
                -   Save/Cancel on CLOSE
        -   Upon saving config, needs to support `written_books` if the Player signed by accident!
        -   Update shape types from string to ints for less commands during detections
        -   Only reset if detected
        -   Only draw page if detected items
    -   error handling on init
        -   Should error if player is not within 5 blocks of the corner, or inside a FF
            -   Choose the closest corner over binding as a feature!
                -   Allows players to have FF next to/embedded to each other, and allow desirable config
        -   Should error if > 1 player is within 5 blocks of the corner
        -   ~~Should error if player is not the owner of the corner~~
            -   Shouldn't actually happen...
            -   ~~`gamemode=creative` and `tag=ff_admin` should still be able to configure for server-safety purposes~~
                -   Player/Owner/OP should user Admin Helper book to Take Ownership (TBD)
        -   Needs to `deactivate`
-   Bug: Tooltips keep sticking around, annoyingly
-   Consider splitting Player Binding to differentiate between messaging/protection, and being inside the KILL ZONE
    -   Update owner/ally/stranger targeting everywhere!
    -   Allow config from Owner/creative mode only (not ff_admin, they need to take it over if it's that important!)
-   Cleanup `operations.meta` namespacing across the board, so cleanups are explicit
-   Bugs Found Testing:
    -   Building a 2nd FF breaks player state!!!!
    -   Destroying a FF breaks wrong FF????
    -   FF inside FF doesn't fix when you break the inner one

---

# Useful Commands:

Give self vindicator egg (dumb)

```
give @s minecraft:vindicator_spawn_egg{EntityTag:{NoAI:1b,Silent:1b}}
give @s minecraft:villager{EntityTag:{NoAI:1b,Silent:1b}}
```

Get Tags and ArmorItems info:

```
execute as @e[sort=nearest,limit=1,type=!player] run tag @s list
execute as @e[sort=nearest,limit=1,type=!player] run data get entity @s ArmorItems[0].tag
execute as @e[tag=ff_demolish_marker,sort=nearest,limit=1,type=!player] run data get entity @s ArmorItems[0].tag.IDs
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
