### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> mapping_birthday:tuner/scale/scale
# スケーリング  
# Run when the map scaled.
# @within
#   mapping_birthday:tuner/scale/modify

# diff記録
data modify storage mapping_birthday: diff set value [{}]
data modify storage mapping_birthday: diff[0].Mapping.Diff set from storage player_item_tuner: to.tag.Mapping.Diff
data modify storage mapping_birthday: diff[0].Mapping.Scale set from storage player_item_tuner: to.tag.Mapping.Scale
data modify storage mapping_birthday: diff[0].Mapping.Length set from storage player_item_tuner: to.tag.Mapping.Length
data modify storage mapping_birthday: diff[0].Mapping.Range set from storage player_item_tuner: to.tag.Mapping.Range
data modify storage mapping_birthday: diff[0].Mapping.History set from storage player_item_tuner: to.tag.Mapping.History
data modify storage mapping_birthday: diff[0].map set from storage player_item_tuner: to.tag.Mapping.History[-1]
data modify storage player_item_tuner: to.tag.Mapping.Diff set from storage mapping_birthday: diff
# 更新
data modify storage mapping_birthday: tag set from storage player_item_tuner: to.tag
data modify storage mapping_birthday: tag.Mapping.History append from storage mapping_birthday: tag.map
execute store result storage mapping_birthday: tag.Mapping.Scale int 1 run data get storage mapping_birthday: tag.Mapping.Scale 2
function mapping_birthday:map/set/threthold
function #mapping_birthday:plugins/scaled
data modify storage player_item_tuner: to.tag merge from storage mapping_birthday: tag
