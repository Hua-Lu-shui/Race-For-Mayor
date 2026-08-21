#按失败、完成、完美完成三种标准结算
scoreboard players set @s fitness_state 4
bossbar set rfm:fitness_time visible false

#完美完成：9秒内冲过终点，至少剩余40 tick
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 40.. run scoreboard players add @s welfare 16
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 40.. run function rfm:ability/military/perfect
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 40.. run tellraw @a[tag=rfm_participant] [{"text":"【全民健身挑战】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 民生 +16","color":"red"}]

#完成：规定时间内冲过终点
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 1..39 run scoreboard players add @s welfare 10
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 1..39 run tellraw @a[tag=rfm_participant] [{"text":"【全民健身挑战】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 民生 +10","color":"red"}]

#失败：未在规定时间内冲过终点
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches ..0 run scoreboard players add @s welfare 4
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches ..0 run tellraw @a[tag=rfm_participant] [{"text":"【全民健身挑战】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 民生 +4","color":"red"}]
execute unless score @s fitness_checkpoint matches 5 run scoreboard players add @s welfare 4
execute unless score @s fitness_checkpoint matches 5 run tellraw @a[tag=rfm_participant] [{"text":"【全民健身挑战】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 民生 +4","color":"red"}]

function rfm:attribute/minimum
function rfm:task/action/welfare/welfare_2/cleanup
