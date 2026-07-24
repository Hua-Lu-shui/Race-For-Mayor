#根据完成情况结算生态行动任务5的奖励
scoreboard players set @s energy_state 4
bossbar set rfm:energy_time visible false
tellraw @a [{"text":"清洁能源检查结束，共正确配平 ","color":"white"},{"score":{"name":"@s","objective":"energy_correct"},"color":"green"},{"text":" / 6 轮。","color":"white"}]

execute if score @s energy_correct matches 6 run scoreboard players add @s ecology 8
execute if score @s energy_correct matches 6 run function rfm:ability/military/perfect
execute if score @s energy_correct matches 6 run tellraw @a [{"text":"【清洁能源检查】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 完美完成任务！","color":"gold","bold":true},{"text":" 生态 +8","color":"green"}]

execute if score @s energy_correct matches 4..5 run scoreboard players add @s ecology 6
execute if score @s energy_correct matches 4..5 run tellraw @a [{"text":"【清洁能源检查】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 通过任务！","color":"green","bold":true},{"text":" 生态 +6","color":"green"}]

execute if score @s energy_correct matches ..3 run tellraw @a [{"text":"【清洁能源检查】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]
function rfm:attribute/minimum
function rfm:task/action/ecology/ecology_5/cleanup
