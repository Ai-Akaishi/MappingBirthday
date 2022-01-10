### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> mapping_birthday:map/scale
# マップスケール変更時の処理  
# Process when scaling a map.
# @within
#   mapping_birthday:check

## マップの更新チェック
data modify storage mapping_birthday: comp1 set value []
data modify storage mapping_birthday: comp1 append from entity @s Inventory[{id:"minecraft:filled_map"}].tag.map
data modify storage mapping_birthday: comp2 set value []
data modify storage mapping_birthday: comp2 append from entity @s Inventory[{id:"minecraft:filled_map"}].tag.Mapping.History[-1]
execute store result score _ MapBirth run data modify storage mapping_birthday: comp1 set from storage mapping_birthday: comp2

# インベントリ更新
execute if score _ MapBirth matches 1.. run data modify storage player_item_tuner: custom set value "MappingBirthdayScale"
execute if score _ MapBirth matches 1.. run function #player_item_tuner:custom/inventory
