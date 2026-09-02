execute unless score @s collection_slot1 matches 33 unless score @s collection_slot2 matches 33 unless score @s collection_slot3 matches 33 unless score @s collection_slot4 matches 33 unless score @s collection_slot5 matches 33 run return 0
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
tellraw @s [{"translate":"rfm.text.ede00aa3e3c2","color":"light_purple","bold":true},{"translate":"rfm.text.1fd7b7f3b784","color":"white"}]
