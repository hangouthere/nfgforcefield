# nfgForceField - Settings
# Configuration Variables

## Scoreboard Setup
# Cleanup Old Values, just in case...
scoreboard objectives remove _ff_calcs
scoreboard objectives remove _ff_suspend_perm
scoreboard objectives remove _ff_suspend_temp
scoreboard objectives remove _ff_scan_track
scoreboard objectives remove _ff_scan_kill
# Temp storage for calculations
scoreboard objectives add _ff_calcs dummy
scoreboard objectives add _ff_suspend_perm dummy
scoreboard objectives add _ff_suspend_temp dummy
scoreboard objectives add _ff_scan_track dummy
scoreboard objectives add _ff_scan_kill dummy
# Setup FF IDs
scoreboard players set #_ffNextId _ff_calcs 1
# Establish base settings for ForceField settings
# TODO: pick better MinArea settings
scoreboard players set MinAreaVolume _ff_calcs 10
scoreboard players set MinAreaPerim _ff_calcs 10
scoreboard players set BoundsTrackZoneDistance _ff_calcs 75
scoreboard players set BoundsIgnoreZoneDistance _ff_calcs 150
scoreboard players set BoundsProtectZoneDistance _ff_calcs 16
scoreboard players set MobRecycleSeconds _ff_calcs 15

## Data Storage Configuration
# Default FF Template
data modify storage nfg:forcefield _tmpl.buildFF set value { id: { ff: 0, owner: 0 }, calc: { area: 0 }, corner: { start: [0,0,0], end: [0,0,0] }, zone: { kill: { offset: { x: 0, y: 0, z: 0 }, bounds: { x: 0, y: 0, z: 0 }}, protect: { offset: { x: 0, y: 0, z: 0 }, bounds: { x: 0, y: 0, z: 0 }}, track: { offset: { x: 0, y: 0, z: 0 }, bounds: { x: 0, y: 0, z: 0 }}, suspend: { offset: { x: 0, y: 0, z: 0 }, bounds: { x: 0, y: 0, z: 0 }}}, protections: { mob: 'perimeter', building: 'volume' }, messages: { entering: { title: 'Entering Safe Zone', subtitle: 'Welcome!', actionbar: 'Extended Block Protection Enabled' }, leaving: { title: 'Leaving Safe Zone', subtitle: 'Be safe, wanderer...', actionbar: 'Extended Block Protection Disabled' }}}

# ForceField Storage
data modify storage nfg:forcefield ForceFields set value []

# Scan Storage
data modify storage nfg:forcefield _scan.deleted set value []
data modify storage nfg:forcefield _scan.current set value {}
