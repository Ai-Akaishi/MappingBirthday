### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> mapping_birthday:load
# 初期化用  
# Initialization.
# @load

scoreboard objectives add MapBirth minecraft.used:minecraft.map

execute store success storage mapping_birthday: _ int 1 run function player_item_tuner:define
execute if data storage mapping_birthday: {_:0} run tellraw @a {"translate":"[Datapack Warning] \"Mappin' Birthday\" depends on \"%1$s\", but \"%1$s\" is not found.\nMake sure \"%1$s\" is included in the Datapack folder and enabled.","color":"yellow","with":[{"text":"Player Item Tuner","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Ai-Akaishi/PlayerItemTuner"}}]}
