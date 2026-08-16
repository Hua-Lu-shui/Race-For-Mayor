#24“手枪子弹”：每拥有一件藏品，回合开始时最低属性+4
execute unless score @s collection_slot1 matches 24 unless score @s collection_slot2 matches 24 unless score @s collection_slot3 matches 24 run function rfm:collection/effect/master_key
execute unless score @s collection_slot1 matches 24 unless score @s collection_slot2 matches 24 unless score @s collection_slot3 matches 24 run return 0
scoreboard players set @s collection_effect_value 0
execute if score @s collection_slot1 matches 1.. run scoreboard players add @s collection_effect_value 4
execute if score @s collection_slot2 matches 1.. run scoreboard players add @s collection_effect_value 4
execute if score @s collection_slot3 matches 1.. run scoreboard players add @s collection_effect_value 4
function rfm:collection/trade/select_lowest
execute if score @s collection_lowest matches 1 run scoreboard players operation @s fame += @s collection_effect_value
execute if score @s collection_lowest matches 2 run scoreboard players operation @s economy += @s collection_effect_value
execute if score @s collection_lowest matches 3 run scoreboard players operation @s welfare += @s collection_effect_value
execute if score @s collection_lowest matches 4 run scoreboard players operation @s ecology += @s collection_effect_value
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
playsound minecraft:item.crossbow.loading_middle master @s ~ ~ ~ 0.7 1.1
execute if score @s collection_lowest matches 1 run tellraw @s [{"text":"【手枪子弹】","color":"blue","bold":true},{"text":"本回合开始，每拥有一件藏品，最低属性名誉 +4。","color":"white"}]
execute if score @s collection_lowest matches 2 run tellraw @s [{"text":"【手枪子弹】","color":"blue","bold":true},{"text":"本回合开始，每拥有一件藏品，最低属性经济 +4。","color":"white"}]
execute if score @s collection_lowest matches 3 run tellraw @s [{"text":"【手枪子弹】","color":"blue","bold":true},{"text":"本回合开始，每拥有一件藏品，最低属性民生 +4。","color":"white"}]
execute if score @s collection_lowest matches 4 run tellraw @s [{"text":"【手枪子弹】","color":"blue","bold":true},{"text":"本回合开始，每拥有一件藏品，最低属性生态 +4。","color":"white"}]
function rfm:collection/effect/master_key
