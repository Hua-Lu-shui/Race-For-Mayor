#“琥珀”：最终结算前给予记录的所有属性
execute unless score @s collection_slot1 matches 11 unless score @s collection_slot2 matches 11 unless score @s collection_slot3 matches 11 run return 0
scoreboard players operation @s fame += @s collection_amber_fame
scoreboard players operation @s economy += @s collection_amber_economy
scoreboard players operation @s welfare += @s collection_amber_welfare
scoreboard players operation @s ecology += @s collection_amber_ecology
tellraw @s [{"text":"【琥珀】","color":"light_purple","bold":true},{"text":"最终结算开始，已给予记录的四项属性。","color":"white"}]
