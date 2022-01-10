### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> mapping_birthday:tuner/scale/new
# 地図データ新規記録
# Save the map data  
# @within
#   mapping_birthday:tuner/scale/modify

## 変更先に変更元を設定しておく
data modify storage player_item_tuner: to set from storage player_item_tuner: from
## ヒストリー追加
data modify storage player_item_tuner: to.tag.Mapping.History append from storage player_item_tuner: to.tag.map
## スケール情報設定
data modify storage player_item_tuner: to.tag.map_scale_direction set value ""
