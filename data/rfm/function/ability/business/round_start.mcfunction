#“富人思维”：回合开始时，经济并列为最高属性也满足条件
scoreboard players set @s ability_trigger 0
execute if score @s economy >= @s fame if score @s economy >= @s welfare if score @s economy >= @s ecology run scoreboard players set @s ability_trigger 1
execute if score @s ability_trigger matches 1 unless score @s fame_lock matches 1 run scoreboard players add @s fame 1
execute if score @s ability_trigger matches 1 unless score @s welfare_lock matches 1 run scoreboard players add @s welfare 1
execute if score @s ability_trigger matches 1 unless score @s ecology_lock matches 1 run scoreboard players add @s ecology 1
execute if score @s ability_trigger matches 1 run tellraw @s [{"text":"【富人思维】","color":"yellow","bold":true},{"text":"本回合开始时经济为最高属性，其余属性 +1。","color":"white"}]
