execute unless score @s collection_slot1 matches 24 unless score @s collection_slot2 matches 24 unless score @s collection_slot3 matches 24 unless score @s collection_slot4 matches 24 unless score @s collection_slot5 matches 24 run return 0
scoreboard players set @s collection_effect_value 0
execute if score @s collection_slot1 matches 1.. run scoreboard players add @s collection_effect_value 4
execute if score @s collection_slot2 matches 1.. run scoreboard players add @s collection_effect_value 4
execute if score @s collection_slot3 matches 1.. run scoreboard players add @s collection_effect_value 4
execute if score @s collection_slot4 matches 1.. run scoreboard players add @s collection_effect_value 4
execute if score @s collection_slot5 matches 1.. run scoreboard players add @s collection_effect_value 4
function rfm:collection/trade/select_lowest
execute if score @s collection_lowest matches 1 run scoreboard players operation @s fame += @s collection_effect_value
execute if score @s collection_lowest matches 2 run scoreboard players operation @s economy += @s collection_effect_value
execute if score @s collection_lowest matches 3 run scoreboard players operation @s welfare += @s collection_effect_value
execute if score @s collection_lowest matches 4 run scoreboard players operation @s ecology += @s collection_effect_value
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
playsound minecraft:item.crossbow.loading_middle master @s ~ ~ ~ 0.7 1.1
execute if score @s collection_lowest matches 1 run tellraw @s [{"translate":"rfm.text.174960b4ba98","color":"blue","bold":true},{"translate":"rfm.text.900ef0a6f485","color":"white"}]
execute if score @s collection_lowest matches 2 run tellraw @s [{"translate":"rfm.text.174960b4ba98","color":"blue","bold":true},{"translate":"rfm.text.a5b9eb1c70d3","color":"white"}]
execute if score @s collection_lowest matches 3 run tellraw @s [{"translate":"rfm.text.174960b4ba98","color":"blue","bold":true},{"translate":"rfm.text.b1b951328549","color":"white"}]
execute if score @s collection_lowest matches 4 run tellraw @s [{"translate":"rfm.text.174960b4ba98","color":"blue","bold":true},{"translate":"rfm.text.8022c1ad8d77","color":"white"}]
