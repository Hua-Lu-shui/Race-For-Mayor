#“小丑帽”：最终结算时，若四项属性分别均为全场最低，则所有属性翻倍；并列最低同样满足
execute unless score @s collection_slot1 matches 33 unless score @s collection_slot2 matches 33 unless score @s collection_slot3 matches 33 run return 0
execute unless score @s fame = #final_lowest_fame fame run return 0
execute unless score @s economy = #final_lowest_economy economy run return 0
execute unless score @s welfare = #final_lowest_welfare welfare run return 0
execute unless score @s ecology = #final_lowest_ecology ecology run return 0
scoreboard players operation @s fame += @s fame
scoreboard players operation @s economy += @s economy
scoreboard players operation @s welfare += @s welfare
scoreboard players operation @s ecology += @s ecology
tellraw @s [{"text":"【小丑帽】","color":"light_purple","bold":true},{"text":"最终结算开始，四项属性均为全场最低，所有属性翻倍。","color":"white"}]
