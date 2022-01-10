### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> mapping_birthday:tuner/scale/
# マップ修正時の処理  
# Process when modifying a map.
# @within
#   mapping_birthday:tuner/

# 地図だった時だけスケールチェック
data modify storage mapping_birthday: id set from storage player_item_tuner: from.id
execute if data storage mapping_birthday: {id:"minecraft:filled_map"} run function mapping_birthday:tuner/scale/check
