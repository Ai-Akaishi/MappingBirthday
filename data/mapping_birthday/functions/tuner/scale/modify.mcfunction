### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> mapping_birthday:tuner/scale/modify
# データ変更  
# Modify the map data.
# @within
#   mapping_birthday:tuner/scale/check

## 変更先に変更元を設定しておく
data modify storage player_item_tuner: to set from storage player_item_tuner: from
# スケール情報がなければスケーリング
execute unless data storage player_item_tuner: to.tag.map_scale_direction run function mapping_birthday:tuner/scale/scale
# スケール情報があればロック
execute if data storage player_item_tuner: to.tag.map_scale_direction run function mapping_birthday:tuner/scale/lock
# スケール情報設定
data modify storage player_item_tuner: to.tag.map_scale_direction set value ""
