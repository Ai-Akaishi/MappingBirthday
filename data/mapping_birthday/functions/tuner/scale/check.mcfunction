### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> mapping_birthday:tuner/scale/check
# マップスケールの確認  
# Check for map scaling.
# @within
#   mapping_birthday:tuner/scale/

## 履歴なしなら追加
execute if data storage player_item_tuner: from.tag.Mapping unless data storage player_item_tuner: from.tag.Mapping.History[0] run function mapping_birthday:tuner/scale/new

## 更新があるか確認
data modify storage mapping_birthday: map set from storage player_item_tuner: from.tag.map
execute store result storage mapping_birthday: update byte 1 run data modify storage mapping_birthday: map set from storage player_item_tuner: from.tag.Mapping.History[-1]
## 更新があれば修正
execute if data storage mapping_birthday: {update:true} run function mapping_birthday:tuner/scale/modify
