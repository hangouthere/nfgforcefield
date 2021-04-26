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

## ProtectZone
# Restore original coords
function nfg_util:helpers/restore_in1_in2
# Offset bounds by distance settings
scoreboard players operation in1_x nfg_calcs -= BoundsProtectZoneDistance ff_calcs
scoreboard players operation in1_y nfg_calcs -= BoundsProtectZoneDistance ff_calcs
scoreboard players operation in1_z nfg_calcs -= BoundsProtectZoneDistance ff_calcs
scoreboard players operation in2_x nfg_calcs += BoundsProtectZoneDistance ff_calcs
scoreboard players operation in2_y nfg_calcs += BoundsProtectZoneDistance ff_calcs
scoreboard players operation in2_z nfg_calcs += BoundsProtectZoneDistance ff_calcs
# Convert bounds to Local Space!
function nfg_util:vol/translate/world_to_local
# Store Bounds to temp vars
scoreboard players operation #_zoneOffsetProtect_x ff_calcs = #_W2Loffset_x nfg_calcs
scoreboard players operation #_zoneOffsetProtect_y ff_calcs = #_W2Loffset_y nfg_calcs
scoreboard players operation #_zoneOffsetProtect_z ff_calcs = #_W2Loffset_z nfg_calcs
scoreboard players operation #_zoneBoundsProtect_x ff_calcs = in2_x nfg_calcs
scoreboard players operation #_zoneBoundsProtect_y ff_calcs = in2_y nfg_calcs
scoreboard players operation #_zoneBoundsProtect_z ff_calcs = in2_z nfg_calcs

## TrackZone
# Restore original coords
function nfg_util:helpers/restore_in1_in2
# Offset bounds by distance settings
scoreboard players operation in1_x nfg_calcs -= BoundsTrackZoneDistance ff_calcs
scoreboard players operation in1_y nfg_calcs -= BoundsTrackZoneDistance ff_calcs
scoreboard players operation in1_z nfg_calcs -= BoundsTrackZoneDistance ff_calcs
scoreboard players operation in2_x nfg_calcs += BoundsTrackZoneDistance ff_calcs
scoreboard players operation in2_y nfg_calcs += BoundsTrackZoneDistance ff_calcs
scoreboard players operation in2_z nfg_calcs += BoundsTrackZoneDistance ff_calcs
# Convert bounds to Local Space!
function nfg_util:vol/translate/world_to_local
# Store Bounds to temp vars
scoreboard players operation #_zoneOffsetTrack_x ff_calcs = #_W2Loffset_x nfg_calcs
scoreboard players operation #_zoneOffsetTrack_y ff_calcs = #_W2Loffset_y nfg_calcs
scoreboard players operation #_zoneOffsetTrack_z ff_calcs = #_W2Loffset_z nfg_calcs
scoreboard players operation #_zoneBoundsTrack_x ff_calcs = in2_x nfg_calcs
scoreboard players operation #_zoneBoundsTrack_y ff_calcs = in2_y nfg_calcs
scoreboard players operation #_zoneBoundsTrack_z ff_calcs = in2_z nfg_calcs

## SuspendZone
# Restore original coords
function nfg_util:helpers/restore_in1_in2
# Offset bounds by distance settings
scoreboard players operation in1_x nfg_calcs -= BoundsIgnoreZoneDistance ff_calcs
scoreboard players operation in1_y nfg_calcs -= BoundsIgnoreZoneDistance ff_calcs
scoreboard players operation in1_z nfg_calcs -= BoundsIgnoreZoneDistance ff_calcs
scoreboard players operation in2_x nfg_calcs += BoundsIgnoreZoneDistance ff_calcs
scoreboard players operation in2_y nfg_calcs += BoundsIgnoreZoneDistance ff_calcs
scoreboard players operation in2_z nfg_calcs += BoundsIgnoreZoneDistance ff_calcs
# Convert bounds to Local Space!
function nfg_util:vol/translate/world_to_local
# Store Bounds to temp vars
scoreboard players operation #_zoneOffsetSuspend_x ff_calcs = #_W2Loffset_x nfg_calcs
scoreboard players operation #_zoneOffsetSuspend_y ff_calcs = #_W2Loffset_y nfg_calcs
scoreboard players operation #_zoneOffsetSuspend_z ff_calcs = #_W2Loffset_z nfg_calcs
scoreboard players operation #_boundsSuspendZone_x ff_calcs = in2_x nfg_calcs
scoreboard players operation #_boundsSuspendZone_y ff_calcs = in2_y nfg_calcs
scoreboard players operation #_boundsSuspendZone_z ff_calcs = in2_z nfg_calcs

## HitZone
# Restore original coords
function nfg_util:helpers/restore_in1_in2
# Convert in1/2 to Local Space!
function nfg_util:vol/translate/world_to_local
