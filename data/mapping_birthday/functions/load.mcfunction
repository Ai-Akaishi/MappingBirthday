### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> mapping_birthday:load
# 作業台/製図台を強制的に閉じる  
# Force gui of crafting_table/cartography_table closed.
# @load

scoreboard objectives add MapBirthCraft minecraft.custom:minecraft.interact_with_crafting_table
scoreboard objectives add MapBirthCarto minecraft.custom:minecraft.interact_with_cartography_table
scoreboard objectives add MapBirth minecraft.used:minecraft.map
