# nfgForceField

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

-   if entity @s[tag=ff_building_helper] (Building Helper Detected)
    -   tp @s @p[tag=ff_building]
-   if entity @s[tag=ff_corner] (Corner Detected)
    -   if entity @s[tag=ff_init] (Corner init'd, freshly placed, both corners)
        -   if entity @p[tag=!ff_building] (Current player is NOT building, this is effectively the start corner)
            -   Tag player as `ff_building`
            -   Copy FF template to Storage meta
            -   Update new Storage meta to have `ff_id` and `player_id`
            -   Init `ff_building_helper`
            -   Store primary data on Corner
            -   Copy primary data to Helper
            -   Set score `#_sameTick` to 1
            -   Remove `ff_init` so it's no longer fresh init'd
        -   unless score `#_sameTick` matches 1 if entity @p[tag=ff_building]
            (If not already marked as the sameTick, building is already started, let's try to finalize the FF build)
            -   Check Area for minimum reqs
                -   If Fail, delete and give back a Corner
                -   If not Failed, mark it as such (tag ff_no_errors)
            -   if entity @p[tag=!ff_no_errors]
                -   Calculate final data of FF
                -   Copy data from `ff_building_helper` into Storage
                -   Store final data in Storage
                -   Copy data from Storage to this corner
    -   Set score `#_sameTick` to 0 to reset## ForceField Data Structure

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

# Sounds

-   Error:
    -   https://freesound.org/people/philRacoIndie/sounds/551543/
-   Zaps:
    -   https://freesound.org/people/michael_grinnell/sounds/512471/
    -   https://freesound.org/people/egomassive/sounds/536741/
    -   https://freesound.org/people/Halleck/sounds/19486/
-   Ambient Hum:
    -   https://freesound.org/people/NachtmahrTV/sounds/556717/
    -   https://freesound.org/people/PureAudioNinja/sounds/341612/
-   Power On:
    -   https://freesound.org/people/JavierZumer/sounds/257229/
    -   https://freesound.org/people/plasterbrain/sounds/351807/
-   Power Off:
    -   https://freesound.org/people/noirenex/sounds/159399/
