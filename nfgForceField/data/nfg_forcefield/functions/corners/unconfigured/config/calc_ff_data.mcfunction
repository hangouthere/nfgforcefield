# Calculate supporting values
function nfg_util:vec/calc
function nfg_util:vol/calc

# Backup original coords...
function nfg_util:helpers/backup_in1_in2
# Correct to World Space
function nfg_util:vol/translate/correct_to_world
# Re-Backup corrected coords so we don't have to keep calling this
function nfg_util:helpers/backup_in1_in2

### Calculate Larger Hitboxes for Track Zone and Suspend Zone

## TrackZone
# Restore original coords
function nfg_util:helpers/restore_in1_in2
# Offset bounds by distance settings
scoreboard players operation in1_x _nfg_calcs -= BoundsTrackZoneDistance _ff_calcs
scoreboard players operation in1_y _nfg_calcs -= BoundsTrackZoneDistance _ff_calcs
scoreboard players operation in1_z _nfg_calcs -= BoundsTrackZoneDistance _ff_calcs
scoreboard players operation in2_x _nfg_calcs += BoundsTrackZoneDistance _ff_calcs
scoreboard players operation in2_y _nfg_calcs += BoundsTrackZoneDistance _ff_calcs
scoreboard players operation in2_z _nfg_calcs += BoundsTrackZoneDistance _ff_calcs
# Convert bounds to Local Space!
function nfg_util:vol/translate/world_to_local
# Store Bounds to temp vars
scoreboard players operation #_zoneOffsetTrack_x _ff_calcs = #_W2Loffset_x _nfg_calcs
scoreboard players operation #_zoneOffsetTrack_y _ff_calcs = #_W2Loffset_y _nfg_calcs
scoreboard players operation #_zoneOffsetTrack_z _ff_calcs = #_W2Loffset_z _nfg_calcs
scoreboard players operation #_zoneBoundsTrack_x _ff_calcs = in2_x _nfg_calcs
scoreboard players operation #_zoneBoundsTrack_y _ff_calcs = in2_y _nfg_calcs
scoreboard players operation #_zoneBoundsTrack_z _ff_calcs = in2_z _nfg_calcs

## SuspendZone
# Restore original coords
function nfg_util:helpers/restore_in1_in2
# Offset bounds by distance settings
scoreboard players operation in1_x _nfg_calcs -= BoundsIgnoreZoneDistance _ff_calcs
scoreboard players operation in1_y _nfg_calcs -= BoundsIgnoreZoneDistance _ff_calcs
scoreboard players operation in1_z _nfg_calcs -= BoundsIgnoreZoneDistance _ff_calcs
scoreboard players operation in2_x _nfg_calcs += BoundsIgnoreZoneDistance _ff_calcs
scoreboard players operation in2_y _nfg_calcs += BoundsIgnoreZoneDistance _ff_calcs
scoreboard players operation in2_z _nfg_calcs += BoundsIgnoreZoneDistance _ff_calcs
# Convert bounds to Local Space!
function nfg_util:vol/translate/world_to_local
# Store Bounds to temp vars
scoreboard players operation #_zoneOffsetSuspend_x _ff_calcs = #_W2Loffset_x _nfg_calcs
scoreboard players operation #_zoneOffsetSuspend_y _ff_calcs = #_W2Loffset_y _nfg_calcs
scoreboard players operation #_zoneOffsetSuspend_z _ff_calcs = #_W2Loffset_z _nfg_calcs
scoreboard players operation #_boundsSuspendZone_x _ff_calcs = in2_x _nfg_calcs
scoreboard players operation #_boundsSuspendZone_y _ff_calcs = in2_y _nfg_calcs
scoreboard players operation #_boundsSuspendZone_z _ff_calcs = in2_z _nfg_calcs

## HitZone
# Restore original coords
function nfg_util:helpers/restore_in1_in2
# Convert in1/2 to Local Space!
function nfg_util:vol/translate/world_to_local
