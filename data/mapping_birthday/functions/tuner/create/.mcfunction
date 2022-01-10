### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> mapping_birthday:tuner/create/
# マップ作成時の処理  
# Process when creating a map.
# @within
#   mapping_birthday:tuner/

# 地図だった時だけ別保存処理
data modify storage mapping_birthday: id set from storage player_item_tuner: from.id
execute if data storage mapping_birthday: {id:"minecraft:filled_map"} unless data storage player_item_tuner: from.tag.map_scale_direction run function mapping_birthday:tuner/create/apply
