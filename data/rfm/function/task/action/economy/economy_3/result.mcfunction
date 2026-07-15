scoreboard players set @s audit_state 4
bossbar set rfm:audit_time visible false

execute if score @s audit_correct matches 1 if score @s audit_time matches 1200.. run scoreboard players add @s economy 8
execute if score @s audit_correct matches 1 if score @s audit_time matches 1200.. run tellraw @a [{"text":"【预算核查】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 快速查清虚假账目！","color":"gold","bold":true},{"text":" 经济 +8","color":"yellow"}]

execute if score @s audit_correct matches 1 if score @s audit_time matches 1..1199 run scoreboard players add @s economy 6
execute if score @s audit_correct matches 1 if score @s audit_time matches 1..1199 run tellraw @a [{"text":"【预算核查】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 完成任务！","color":"green","bold":true},{"text":" 经济 +6","color":"yellow"}]

execute if score @s audit_correct matches 0 if score @s audit_time matches 1.. run tellraw @a [{"text":"【预算核查】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]
execute if score @s audit_time matches ..0 run tellraw @a [{"text":"【预算核查】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 未能在规定时间内完成核查，任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]

function rfm:attribute/minimum
function rfm:task/action/economy/economy_3/cleanup
