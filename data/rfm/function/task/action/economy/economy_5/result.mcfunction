#根据就业匹配进度结算经济行动任务5
scoreboard players set @s employment_state 4
bossbar set rfm:employment_time visible false

execute if score @s employment_completed matches 5 run scoreboard players add @s economy 16
execute if score @s employment_completed matches 5 run function rfm:ability/military/perfect
execute if score @s employment_completed matches 5 run tellraw @a [{"text":"【就业走访】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 经济 +16","color":"yellow"}]

execute if score @s employment_completed matches 3..4 run scoreboard players add @s economy 10
execute if score @s employment_completed matches 3..4 run tellraw @a [{"text":"【就业走访】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 经济 +10","color":"yellow"}]

execute if score @s employment_completed matches ..2 run scoreboard players add @s economy 4
execute if score @s employment_completed matches ..2 run tellraw @a [{"text":"【就业走访】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 经济 +4","color":"yellow"}]
function rfm:attribute/minimum
function rfm:task/action/economy/economy_5/cleanup
