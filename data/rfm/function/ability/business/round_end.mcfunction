#“富人思维”：经济并列为最低属性时也满足条件
scoreboard players set @s ability_trigger 0
execute unless score @s economy_lock matches 1 if score @s economy <= @s fame if score @s economy <= @s welfare if score @s economy <= @s ecology run scoreboard players set @s ability_trigger 1
execute if score @s ability_trigger matches 1 run scoreboard players add @s economy 5
execute if score @s ability_trigger matches 1 run tellraw @s [{"text":"【富人思维】","color":"yellow","bold":true},{"text":"本轮结束时经济为最低属性，经济 +5。","color":"white"}]
