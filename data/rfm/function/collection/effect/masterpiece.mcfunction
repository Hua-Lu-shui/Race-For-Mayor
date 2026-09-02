execute unless score @s collection_slot1 matches 26 unless score @s collection_slot2 matches 26 unless score @s collection_slot3 matches 26 unless score @s collection_slot4 matches 26 unless score @s collection_slot5 matches 26 run return 0
function rfm:collection/trade/select_highest
execute if score @s collection_attr matches 1 run scoreboard players add #weight fame_weight 1
execute if score @s collection_attr matches 2 run scoreboard players add #weight economy_weight 1
execute if score @s collection_attr matches 3 run scoreboard players add #weight welfare_weight 1
execute if score @s collection_attr matches 4 run scoreboard players add #weight ecology_weight 1
scoreboard players operation 名誉 weight_display = #weight fame_weight
scoreboard players operation 经济 weight_display = #weight economy_weight
scoreboard players operation 民生 weight_display = #weight welfare_weight
scoreboard players operation 生态 weight_display = #weight ecology_weight
playsound minecraft:entity.painting.place master @s ~ ~ ~ 0.7 1.1
execute if score @s collection_attr matches 1 run tellraw @s [{"translate":"rfm.text.c6411efb7524","color":"gold","bold":true},{"translate":"rfm.text.15cb67d3a28e","color":"white"}]
execute if score @s collection_attr matches 2 run tellraw @s [{"translate":"rfm.text.c6411efb7524","color":"gold","bold":true},{"translate":"rfm.text.3b3828217c42","color":"white"}]
execute if score @s collection_attr matches 3 run tellraw @s [{"translate":"rfm.text.c6411efb7524","color":"gold","bold":true},{"translate":"rfm.text.5fa13db2e820","color":"white"}]
execute if score @s collection_attr matches 4 run tellraw @s [{"translate":"rfm.text.c6411efb7524","color":"gold","bold":true},{"translate":"rfm.text.8d7a9ce21309","color":"white"}]
