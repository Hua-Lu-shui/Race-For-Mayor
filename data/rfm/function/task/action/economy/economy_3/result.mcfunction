#根据完成情况结算经济行动任务3的奖励
scoreboard players set @s audit_state 4
bossbar set rfm:audit_time visible false

execute if score @s audit_correct matches 1 if score @s audit_time matches 600.. run scoreboard players add @s economy 16
execute if score @s audit_correct matches 1 if score @s audit_time matches 600.. run function rfm:ability/military/perfect
execute if score @s audit_correct matches 1 if score @s audit_time matches 600.. run tellraw @a[tag=rfm_participant] [{"text":"【预算核查】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 经济 +16","color":"yellow"}]

execute if score @s audit_correct matches 1 if score @s audit_time matches 1..599 run scoreboard players add @s economy 10
execute if score @s audit_correct matches 1 if score @s audit_time matches 1..599 run tellraw @a[tag=rfm_participant] [{"text":"【预算核查】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 经济 +10","color":"yellow"}]

execute if score @s audit_correct matches 0 if score @s audit_time matches 1.. run scoreboard players add @s economy 4
execute if score @s audit_correct matches 0 if score @s audit_time matches 1.. run tellraw @a[tag=rfm_participant] [{"text":"【预算核查】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 经济 +4","color":"yellow"}]
execute if score @s audit_time matches ..0 run scoreboard players add @s economy 4
execute if score @s audit_time matches ..0 run tellraw @a[tag=rfm_participant] [{"text":"【预算核查】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 经济 +4","color":"yellow"}]

function rfm:attribute/minimum
function rfm:task/action/economy/economy_3/cleanup
