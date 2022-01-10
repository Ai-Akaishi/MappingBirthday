### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> mapping_birthday:tuner/create/apply
# 地図データ記録
# Save the map data.
# @within
#   mapping_birthday:tuner/create/

# 地図番号反映
data modify storage mapping_birthday: tag.map set from storage player_item_tuner: from.tag.map
data modify storage mapping_birthday: tag.Mapping.History append from storage mapping_birthday: tag.map
# for plugins
function #mapping_birthday:plugins/created
# 反映
data modify storage mapping_birthday: tag.map_scale_direction set value ""
data modify storage player_item_tuner: to set from storage player_item_tuner: from
data modify storage player_item_tuner: to.tag merge from storage mapping_birthday: tag
