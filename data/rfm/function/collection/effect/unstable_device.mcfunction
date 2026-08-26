#“不稳定装置”：回合开始时随机一项属性+5
execute unless score @s collection_slot1 matches 34 unless score @s collection_slot2 matches 34 unless score @s collection_slot3 matches 34 unless score @s collection_slot4 matches 34 unless score @s collection_slot5 matches 34 run return 0
execute store result score @s collection_effect_pick run random value 1..4
execute if score @s collection_effect_pick matches 1 run scoreboard players add @s fame 5
execute if score @s collection_effect_pick matches 2 run scoreboard players add @s economy 5
execute if score @s collection_effect_pick matches 3 run scoreboard players add @s welfare 5
execute if score @s collection_effect_pick matches 4 run scoreboard players add @s ecology 5
execute if score @s collection_effect_pick matches 1 run tellraw @s [{"translate":"rfm.text.6ce7af9220b4","color":"blue","bold":true},{"translate":"rfm.text.29c9b985be55","color":"white"}]
execute if score @s collection_effect_pick matches 2 run tellraw @s [{"translate":"rfm.text.6ce7af9220b4","color":"blue","bold":true},{"translate":"rfm.text.f5b15674698a","color":"white"}]
execute if score @s collection_effect_pick matches 3 run tellraw @s [{"translate":"rfm.text.6ce7af9220b4","color":"blue","bold":true},{"translate":"rfm.text.ce139ccd26ad","color":"white"}]
execute if score @s collection_effect_pick matches 4 run tellraw @s [{"translate":"rfm.text.6ce7af9220b4","color":"blue","bold":true},{"translate":"rfm.text.34f4562d0c07","color":"white"}]
