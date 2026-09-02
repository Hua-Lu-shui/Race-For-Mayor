execute unless score @s collection_slot1 matches 25 unless score @s collection_slot2 matches 25 unless score @s collection_slot3 matches 25 unless score @s collection_slot4 matches 25 unless score @s collection_slot5 matches 25 run return 0
execute store result score @s collection_steal_roll run random value 1..100
execute unless score @s collection_steal_roll matches 1..10 run return 0
function rfm:collection/trade/select_lowest
execute if score @s collection_lowest matches 1 run scoreboard players operation @s fame += @s fame
execute if score @s collection_lowest matches 2 run scoreboard players operation @s economy += @s economy
execute if score @s collection_lowest matches 3 run scoreboard players operation @s welfare += @s welfare
execute if score @s collection_lowest matches 4 run scoreboard players operation @s ecology += @s ecology
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
playsound minecraft:block.chest.locked master @s ~ ~ ~ 0.8 1.5
execute if score @s collection_lowest matches 1 run tellraw @s [{"translate":"rfm.text.fb58250c52ed","color":"light_purple","bold":true},{"translate":"rfm.text.8f138780b708","color":"white"}]
execute if score @s collection_lowest matches 2 run tellraw @s [{"translate":"rfm.text.fb58250c52ed","color":"light_purple","bold":true},{"translate":"rfm.text.6260d25d09aa","color":"white"}]
execute if score @s collection_lowest matches 3 run tellraw @s [{"translate":"rfm.text.fb58250c52ed","color":"light_purple","bold":true},{"translate":"rfm.text.ea048b66971d","color":"white"}]
execute if score @s collection_lowest matches 4 run tellraw @s [{"translate":"rfm.text.fb58250c52ed","color":"light_purple","bold":true},{"translate":"rfm.text.25b975f20b0e","color":"white"}]
