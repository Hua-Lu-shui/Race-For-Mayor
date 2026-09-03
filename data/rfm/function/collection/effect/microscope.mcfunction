execute unless score @s collection_slot1 matches 41 unless score @s collection_slot2 matches 41 unless score @s collection_slot3 matches 41 unless score @s collection_slot4 matches 41 unless score @s collection_slot5 matches 41 run return 0
function rfm:collection/trade/select_lowest
execute if score @s collection_lowest matches 1 if score @s fame_lock matches 1 run return 0
execute if score @s collection_lowest matches 2 if score @s economy_lock matches 1 run return 0
execute if score @s collection_lowest matches 3 if score @s welfare_lock matches 1 run return 0
execute if score @s collection_lowest matches 4 if score @s ecology_lock matches 1 run return 0
execute if score @s collection_lowest matches 1 run scoreboard players add @s fame 4
execute if score @s collection_lowest matches 2 run scoreboard players add @s economy 4
execute if score @s collection_lowest matches 3 run scoreboard players add @s welfare 4
execute if score @s collection_lowest matches 4 run scoreboard players add @s ecology 4
function rfm:attribute/lock/enforce
tellraw @s [{"translate":"rfm.text.a86c0e0c7250","color":"green","bold":true},{"translate":"rfm.text.6fdf1efda6ec","color":"white"}]
