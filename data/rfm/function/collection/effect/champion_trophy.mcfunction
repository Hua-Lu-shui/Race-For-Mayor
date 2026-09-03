execute unless score @s collection_slot1 matches 40 unless score @s collection_slot2 matches 40 unless score @s collection_slot3 matches 40 unless score @s collection_slot4 matches 40 unless score @s collection_slot5 matches 40 run return 0
execute store result score @s collection_effect_pick run random value 1..4
execute if score @s collection_effect_pick matches 1 if score @s fame_lock matches 1 run return 0
execute if score @s collection_effect_pick matches 2 if score @s economy_lock matches 1 run return 0
execute if score @s collection_effect_pick matches 3 if score @s welfare_lock matches 1 run return 0
execute if score @s collection_effect_pick matches 4 if score @s ecology_lock matches 1 run return 0
execute if score @s collection_effect_pick matches 1 run scoreboard players operation @s fame += @s fame
execute if score @s collection_effect_pick matches 2 run scoreboard players operation @s economy += @s economy
execute if score @s collection_effect_pick matches 3 run scoreboard players operation @s welfare += @s welfare
execute if score @s collection_effect_pick matches 4 run scoreboard players operation @s ecology += @s ecology
function rfm:attribute/lock/enforce
execute if score @s collection_effect_pick matches 1 run tellraw @s [{"translate":"rfm.text.81bc7410325d","color":"blue","bold":true},{"translate":"rfm.text.a4949843d2e9","color":"white"}]
execute if score @s collection_effect_pick matches 2 run tellraw @s [{"translate":"rfm.text.81bc7410325d","color":"blue","bold":true},{"translate":"rfm.text.9bf3d62d4263","color":"white"}]
execute if score @s collection_effect_pick matches 3 run tellraw @s [{"translate":"rfm.text.81bc7410325d","color":"blue","bold":true},{"translate":"rfm.text.bbc4ea64fff0","color":"white"}]
execute if score @s collection_effect_pick matches 4 run tellraw @s [{"translate":"rfm.text.81bc7410325d","color":"blue","bold":true},{"translate":"rfm.text.308aeaa90f22","color":"white"}]
