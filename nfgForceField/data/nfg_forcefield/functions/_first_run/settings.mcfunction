# nfgForceField - Settings
# Configuration Variables

## Scoreboard Setup
# Cleanup Old Values, just in case...
scoreboard objectives remove ff_calcs
scoreboard objectives remove ff_bind_prot
scoreboard objectives remove ff_bind_kill
scoreboard objectives remove ff_tmrKnockback
scoreboard objectives remove ff_suspend_perm
scoreboard objectives remove ff_suspend_temp
scoreboard objectives remove ff_scan_track
scoreboard objectives remove ff_scan_kill
scoreboard objectives remove ff_config
scoreboard objectives remove ff_config_open
# Temp storage for calculations
#declare objective ff_calcs Calculations
scoreboard objectives add ff_calcs dummy
#declare objective ff_bind_prot Maps a player to an FF_ID when inside Protection Zone
scoreboard objectives add ff_bind_prot dummy
#declare objective ff_bind_kill Maps a player to an FF_ID for when inside the actual ForceField Shape
scoreboard objectives add ff_bind_kill dummy
#declare objective ff_tmrKnockback Tracks how long knockback has been applied for a TTL
scoreboard objectives add ff_tmrKnockback dummy
#declare objective ff_suspend_perm Tally Permanently Suspended marked mobs
scoreboard objectives add ff_suspend_perm dummy
#declare objective ff_suspend_temp Tally Temporarily Suspended marked mobs
scoreboard objectives add ff_suspend_temp dummy
#declare objective ff_scan_track Tally Trackable marked mobs
scoreboard objectives add ff_scan_track dummy
#declare objective ff_scan_kill Tally Killable marked mobs
scoreboard objectives add ff_scan_kill dummy
#declare objective ff_config Which page of the config the player is on
scoreboard objectives add ff_config dummy
#declare objective ff_config_open Detect if a chest is opened to determine config open status!
scoreboard objectives add ff_config_open custom:open_chest
# Setup FF IDs
scoreboard players set #ffNextId ff_calcs 1
# Establish base settings for ForceField settings
# TODO: pick better MinArea settings
scoreboard players set MinAreaPerim ff_calcs 64
scoreboard players set BoundsTrackZoneDistance ff_calcs 75
scoreboard players set BoundsIgnoreZoneDistance ff_calcs 150
scoreboard players set BoundsProtectZoneDistance ff_calcs 16
scoreboard players set MobRecycleSeconds ff_calcs 15
scoreboard players set PotionFrequencySeconds ff_calcs 10

# Internal storage for boundaries for config pages
scoreboard players set #maxPages ff_config 2

## Data Storage Configuration
#define storage nfg:forcefield NFG ForceField Storage
# Default FF Template
# Note: ff_corner_armor is necessary for deletions when
# armor drops on the ground that holds a copy of this data
data modify storage nfg:forcefield template.buildFF set value {ff_corner_armor: 1b,IDs: { ff: 0, player: 0, playerName: ""},version: 0,calc: { potion_time: -10, area: 0},corner: { start: [0, 0, 0], end: [0, 0, 0]},zone: { kill: { offset: { x: 0, y: 0, z: 0 }, bounds: { x: 0, y: 0, z: 0 } }, protect: { offset: { x: 0, y: 0, z: 0 }, bounds: { x: 0, y: 0, z: 0 } }, track: { offset: { x: 0, y: 0, z: 0 }, bounds: { x: 0, y: 0, z: 0 } }, suspend: { offset: { x: 0, y: 0, z: 0 }, bounds: { x: 0, y: 0, z: 0 } }},protections: { building: 2, mob: 1},messages: { allied: { entering: { title: "", subtitle: "", actionbar: "", serverChat: "" }, leaving: { title: "", subtitle: "", actionbar: "", serverChat: "" } }, stranger: { entering: { title: "Entering Safe Zone", subtitle: "Welcome!", actionbar: "Extended Block Protection Enabled", serverChat: "" }, leaving: { title: "Leaving Safe Zone", subtitle: "Be safe, wanderer...", actionbar: "Extended Block Protection Disabled", serverChat: "" } }}}

# ForceField Storage
data modify storage nfg:forcefield ForceFields set value []

# Scan Storage
data modify storage nfg:forcefield operations set value { create: [], update: [], delete: [], meta: {} }
data modify storage nfg:forcefield scanner.current set value {}
