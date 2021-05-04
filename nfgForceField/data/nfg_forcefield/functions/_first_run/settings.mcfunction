# nfgForceField - Settings
# Configuration Variables

## Scoreboard Setup
# Cleanup Old Values, just in case...
scoreboard objectives remove ff_calcs
scoreboard objectives remove ff_suspend_perm
scoreboard objectives remove ff_suspend_temp
scoreboard objectives remove ff_scan_track
scoreboard objectives remove ff_scan_kill
# Temp storage for calculations
#declare objective ff_calcs Calculations
scoreboard objectives add ff_calcs dummy
#declare objective ff_suspend_perm Tally Permanently Suspended marked mobs
scoreboard objectives add ff_suspend_perm dummy
#declare objective ff_suspend_temp Tally Temporarily Suspended marked mobs
scoreboard objectives add ff_suspend_temp dummy
#declare objective ff_scan_track Tally Trackable marked mobs
scoreboard objectives add ff_scan_track dummy
#declare objective ff_scan_kill Tally Killable marked mobs
scoreboard objectives add ff_scan_kill dummy
# Setup FF IDs
scoreboard players set #ffNextId ff_calcs 1
# Establish base settings for ForceField settings
# TODO: pick better MinArea settings
scoreboard players set MinAreaPerim ff_calcs 64
scoreboard players set BoundsTrackZoneDistance ff_calcs 75
scoreboard players set BoundsIgnoreZoneDistance ff_calcs 150
scoreboard players set BoundsProtectZoneDistance ff_calcs 16
scoreboard players set MobRecycleSeconds ff_calcs 15

## Data Storage Configuration
#define storage nfg:forcefield NFG ForceField Storage
# Default FF Template
# Note: ff_corner_armor is necessary for deletions when
# armor drops on the ground that holds a copy of this data
data modify storage nfg:forcefield template.buildFF set value { ff_corner_armor: 1b, IDs: { ff: 0, owner: 0 }, calc: { area: 0 }, corner: { start: [0,0,0], end: [0,0,0] }, zone: { kill: { offset: { x: 0,y:0,z:0 }, bounds: { x: 0,y:0,z:0 }}, protect: { offset: { x: 0,y:0,z:0 }, bounds: { x: 0,y:0,z:0 }}, track: { offset: { x: 0,y:0,z:0 }, bounds: { x: 0,y:0,z:0 }}, suspend: { offset: { x: 0,y:0,z:0 }, bounds: { x: 0,y:0,z:0 }}}, protections: { mob: 'perimeter', building: 'volume' }, messages: { entering: { title: 'Entering Safe Zone', subtitle: 'Welcome!', actionbar: 'Extended Block Protection Enabled' }, leaving: { title: 'Leaving Safe Zone', subtitle: 'Be safe, wanderer...', actionbar: 'Extended Block Protection Disabled' }}}

# ForceField Storage
data modify storage nfg:forcefield ForceFields set value []

# Scan Storage
data modify storage nfg:forcefield operations set value { delete: [], create: [], meta: {} }
data modify storage nfg:forcefield scanner.current set value {}
