#“历史悠久的花瓶”：回合开始时，当前最高属性+5；并列最高时随机选择其中一项
execute unless score @s collection_slot1 matches 15 unless score @s collection_slot2 matches 15 unless score @s collection_slot3 matches 15 run return 0
function rfm:collection/trade/select_highest
execute if score @s collection_attr matches 1 run scoreboard players add @s fame 5
execute if score @s collection_attr matches 2 run scoreboard players add @s economy 5
execute if score @s collection_attr matches 3 run scoreboard players add @s welfare 5
execute if score @s collection_attr matches 4 run scoreboard players add @s ecology 5
function rfm:attribute/lock/enforce
playsound minecraft:block.decorated_pot.insert master @s ~ ~ ~ 0.7 1.1
execute if score @s collection_attr matches 1 run tellraw @s [{"text":"【历史悠久的花瓶】","color":"blue","bold":true},{"text":"本回合开始，当前最高属性名誉 +5。","color":"white"}]
execute if score @s collection_attr matches 2 run tellraw @s [{"text":"【历史悠久的花瓶】","color":"blue","bold":true},{"text":"本回合开始，当前最高属性经济 +5。","color":"white"}]
execute if score @s collection_attr matches 3 run tellraw @s [{"text":"【历史悠久的花瓶】","color":"blue","bold":true},{"text":"本回合开始，当前最高属性民生 +5。","color":"white"}]
execute if score @s collection_attr matches 4 run tellraw @s [{"text":"【历史悠久的花瓶】","color":"blue","bold":true},{"text":"本回合开始，当前最高属性生态 +5。","color":"white"}]
