#“小丑帽”：最终结算时，若至少两项属性分别为全场最低，则最高属性翻倍；并列最低同样计入
execute unless score @s collection_slot1 matches 33 unless score @s collection_slot2 matches 33 unless score @s collection_slot3 matches 33 run return 0
scoreboard players set @s collection_effect_value 0
execute if score @s fame = #final_lowest_fame fame run scoreboard players add @s collection_effect_value 1
execute if score @s economy = #final_lowest_economy economy run scoreboard players add @s collection_effect_value 1
execute if score @s welfare = #final_lowest_welfare welfare run scoreboard players add @s collection_effect_value 1
execute if score @s ecology = #final_lowest_ecology ecology run scoreboard players add @s collection_effect_value 1
execute unless score @s collection_effect_value matches 2.. run return 0
function rfm:collection/trade/select_highest
execute if score @s collection_attr matches 1 run scoreboard players operation @s fame += @s fame
execute if score @s collection_attr matches 2 run scoreboard players operation @s economy += @s economy
execute if score @s collection_attr matches 3 run scoreboard players operation @s welfare += @s welfare
execute if score @s collection_attr matches 4 run scoreboard players operation @s ecology += @s ecology
tellraw @s [{"text":"【小丑帽】","color":"light_purple","bold":true},{"text":"最终结算开始，有两项及以上属性均为全场最低，最高属性翻倍。","color":"white"}]
