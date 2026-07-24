#根据完成时间结算经济行动任务4的奖励
scoreboard players set @s supply_state 4
bossbar set rfm:supply_time visible false

execute if score @s supply_completed matches 5 if score @s supply_time matches 600.. run scoreboard players add @s economy 8
execute if score @s supply_completed matches 5 if score @s supply_time matches 600.. run function rfm:ability/military/perfect
execute if score @s supply_completed matches 5 if score @s supply_time matches 600.. run tellraw @a [{"text":"【商圈巡查】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 快速完成全部补货！","color":"gold","bold":true},{"text":" 经济 +8","color":"yellow"}]

execute if score @s supply_completed matches 5 if score @s supply_time matches ..599 run scoreboard players add @s economy 6
execute if score @s supply_completed matches 5 if score @s supply_time matches ..599 run tellraw @a [{"text":"【商圈巡查】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 完成任务！","color":"green","bold":true},{"text":" 经济 +6","color":"yellow"}]

execute if score @s supply_completed matches ..4 run tellraw @a [{"text":"【商圈巡查】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 未能在规定时间内完成全部补货，任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]
function rfm:attribute/minimum
function rfm:task/action/economy/economy_4/cleanup
