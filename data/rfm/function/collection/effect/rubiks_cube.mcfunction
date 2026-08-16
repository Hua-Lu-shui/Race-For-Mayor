#“魔方”：回合开始时，若有另一位同身份候选人，当前最低属性+4
tag @a remove rfm_cube_owner
tag @s add rfm_cube_owner
scoreboard players set @s collection_effect_value 0
execute as @a[tag=!rfm_cube_owner] if score @s candidate = @a[tag=rfm_cube_owner,limit=1] candidate run scoreboard players set @a[tag=rfm_cube_owner,limit=1] collection_effect_value 1
tag @s remove rfm_cube_owner
execute unless score @s collection_effect_value matches 1 run return 0
function rfm:collection/trade/select_lowest
execute if score @s collection_lowest matches 1 run scoreboard players add @s fame 4
execute if score @s collection_lowest matches 2 run scoreboard players add @s economy 4
execute if score @s collection_lowest matches 3 run scoreboard players add @s welfare 4
execute if score @s collection_lowest matches 4 run scoreboard players add @s ecology 4
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.7 1.2
execute if score @s collection_lowest matches 1 run tellraw @s [{"text":"【魔方】","color":"green","bold":true},{"text":"存在与你同身份的候选人，当前最低属性名誉 +4。","color":"white"}]
execute if score @s collection_lowest matches 2 run tellraw @s [{"text":"【魔方】","color":"green","bold":true},{"text":"存在与你同身份的候选人，当前最低属性经济 +4。","color":"white"}]
execute if score @s collection_lowest matches 3 run tellraw @s [{"text":"【魔方】","color":"green","bold":true},{"text":"存在与你同身份的候选人，当前最低属性民生 +4。","color":"white"}]
execute if score @s collection_lowest matches 4 run tellraw @s [{"text":"【魔方】","color":"green","bold":true},{"text":"存在与你同身份的候选人，当前最低属性生态 +4。","color":"white"}]
