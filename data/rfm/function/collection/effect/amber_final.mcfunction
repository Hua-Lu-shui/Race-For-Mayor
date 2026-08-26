#“琥珀”：最终结算前给予记录的所有属性
execute unless score @s collection_slot1 matches 11 unless score @s collection_slot2 matches 11 unless score @s collection_slot3 matches 11 unless score @s collection_slot4 matches 11 unless score @s collection_slot5 matches 11 run return 0
scoreboard players operation @s fame += @s collection_amber_fame
scoreboard players operation @s economy += @s collection_amber_economy
scoreboard players operation @s welfare += @s collection_amber_welfare
scoreboard players operation @s ecology += @s collection_amber_ecology
tellraw @s [{"translate":"rfm.text.180058cb047a","color":"light_purple","bold":true},{"translate":"rfm.text.20eb81b9bad5","color":"white"}]
