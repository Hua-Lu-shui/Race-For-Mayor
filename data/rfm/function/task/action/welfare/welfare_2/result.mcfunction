#根据是否完赛、剩余时间和已完成检查点结算奖励
scoreboard players set @s fitness_state 4
bossbar set rfm:fitness_time visible false
clear @s minecraft:bow[minecraft:custom_data={fitness_bow:1}]
clear @s minecraft:arrow

#8秒内完赛：至少剩余140 tick
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 140.. run scoreboard players add @s welfare 6
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 140.. run function rfm:ability/military/perfect
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 140.. run tellraw @a [{"text":"【全民健身挑战】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 以优秀成绩完成全部项目！","color":"gold","bold":true},{"text":" 民生 +6","color":"red"}]

#12秒内完赛：剩余60至139 tick
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 60..139 run scoreboard players add @s welfare 5
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 60..139 run tellraw @a [{"text":"【全民健身挑战】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 顺利完成全部项目！","color":"green","bold":true},{"text":" 民生 +5","color":"red"}]

#15秒内完赛：剩余59 tick以下
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches ..59 run scoreboard players add @s welfare 3
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches ..59 run tellraw @a [{"text":"【全民健身挑战】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 在时限内完成挑战！","color":"yellow","bold":true},{"text":" 民生 +3","color":"red"}]

#超时但已经通过射箭段
execute if score @s fitness_checkpoint matches 4 if score @s fitness_time matches ..0 run scoreboard players add @s welfare 2
execute if score @s fitness_checkpoint matches 4 if score @s fitness_time matches ..0 run tellraw @a [{"text":"【全民健身挑战】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 未能冲过终点，但完成了大部分项目。","color":"yellow"},{"text":" 民生 +2","color":"red"}]

#超时并完成平衡木或到达射箭区
execute if score @s fitness_checkpoint matches 2..3 if score @s fitness_time matches ..0 run scoreboard players add @s welfare 1
execute if score @s fitness_checkpoint matches 2..3 if score @s fitness_time matches ..0 run tellraw @a [{"text":"【全民健身挑战】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 完成了部分项目。","color":"yellow"},{"text":" 民生 +1","color":"red"}]

#超时且只完成不到两个检查点
execute if score @s fitness_checkpoint matches ..1 if score @s fitness_time matches ..0 run tellraw @a [{"text":"【全民健身挑战】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 未能完成足够的运动项目。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]

function rfm:attribute/minimum
function rfm:task/action/welfare/welfare_2/cleanup
