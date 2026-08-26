#“历史悠久的花瓶”：回合开始时，当前最高属性+5；并列最高时随机选择其中一项
execute unless score @s collection_slot1 matches 15 unless score @s collection_slot2 matches 15 unless score @s collection_slot3 matches 15 unless score @s collection_slot4 matches 15 unless score @s collection_slot5 matches 15 run return 0
function rfm:collection/trade/select_highest
execute if score @s collection_attr matches 1 run scoreboard players add @s fame 5
execute if score @s collection_attr matches 2 run scoreboard players add @s economy 5
execute if score @s collection_attr matches 3 run scoreboard players add @s welfare 5
execute if score @s collection_attr matches 4 run scoreboard players add @s ecology 5
function rfm:attribute/lock/enforce
playsound minecraft:block.decorated_pot.insert master @s ~ ~ ~ 0.7 1.1
execute if score @s collection_attr matches 1 run tellraw @s [{"translate":"rfm.text.24c41d08b522","color":"blue","bold":true},{"translate":"rfm.text.8c10a01774c8","color":"white"}]
execute if score @s collection_attr matches 2 run tellraw @s [{"translate":"rfm.text.24c41d08b522","color":"blue","bold":true},{"translate":"rfm.text.74ff7aedb505","color":"white"}]
execute if score @s collection_attr matches 3 run tellraw @s [{"translate":"rfm.text.24c41d08b522","color":"blue","bold":true},{"translate":"rfm.text.e16e16a6bcfd","color":"white"}]
execute if score @s collection_attr matches 4 run tellraw @s [{"translate":"rfm.text.24c41d08b522","color":"blue","bold":true},{"translate":"rfm.text.a87524e625fb","color":"white"}]
