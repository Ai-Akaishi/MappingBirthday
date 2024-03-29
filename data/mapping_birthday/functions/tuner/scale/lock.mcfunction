### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> mapping_birthday:tuner/scale/lock
# ロック  
# Run when the map locked.
# @within
#   mapping_birthday:tuner/scale/modify

# diff記録
data modify storage mapping_birthday: diff set value [{}]
data modify storage mapping_birthday: diff[0].Mapping.Diff set from storage player_item_tuner: to.tag.Mapping.Diff
data modify storage mapping_birthday: diff[0].Mapping.Locked set from storage player_item_tuner: to.tag.Mapping.Locked
data modify storage mapping_birthday: diff[0].Mapping.History set from storage player_item_tuner: to.tag.Mapping.History
data modify storage mapping_birthday: diff[0].map set from storage player_item_tuner: to.tag.Mapping.History[-1]
data modify storage player_item_tuner: to.tag.Mapping.Diff set from storage mapping_birthday: diff
# 更新
data modify storage mapping_birthday: tag set from storage player_item_tuner: to.tag
data modify storage mapping_birthday: tag.Mapping.History append from storage mapping_birthday: tag.map
data modify storage mapping_birthday: tag.Mapping.Locked set value true
data remove storage mapping_birthday: tag.map_scale_direction
function #mapping_birthday:plugins/locked
data modify storage player_item_tuner: to.tag merge from storage mapping_birthday: tag
