#25“无人认领的钥匙”：每回合开始时，20%几率使最低属性翻倍
execute unless score @s collection_slot1 matches 25 unless score @s collection_slot2 matches 25 unless score @s collection_slot3 matches 25 run return 0
execute store result score @s collection_steal_roll run random value 1..100
execute unless score @s collection_steal_roll matches 1..20 run return 0
function rfm:collection/trade/select_lowest
execute if score @s collection_lowest matches 1 run scoreboard players operation @s fame += @s fame
execute if score @s collection_lowest matches 2 run scoreboard players operation @s economy += @s economy
execute if score @s collection_lowest matches 3 run scoreboard players operation @s welfare += @s welfare
execute if score @s collection_lowest matches 4 run scoreboard players operation @s ecology += @s ecology
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
playsound minecraft:block.chest.locked master @s ~ ~ ~ 0.8 1.5
execute if score @s collection_lowest matches 1 run tellraw @s [{"text":"【无人认领的钥匙】","color":"light_purple","bold":true},{"text":"本回合开始，最低属性名誉翻倍。","color":"white"}]
execute if score @s collection_lowest matches 2 run tellraw @s [{"text":"【无人认领的钥匙】","color":"light_purple","bold":true},{"text":"本回合开始，最低属性经济翻倍。","color":"white"}]
execute if score @s collection_lowest matches 3 run tellraw @s [{"text":"【无人认领的钥匙】","color":"light_purple","bold":true},{"text":"本回合开始，最低属性民生翻倍。","color":"white"}]
execute if score @s collection_lowest matches 4 run tellraw @s [{"text":"【无人认领的钥匙】","color":"light_purple","bold":true},{"text":"本回合开始，最低属性生态翻倍。","color":"white"}]
