scoreboard players set @s negotiation_state 4
bossbar set rfm:negotiation_time visible false
tellraw @a [{"text":"招商洽谈结束，共选择正确 ","color":"white"},{"score":{"name":"@s","objective":"negotiation_correct"},"color":"yellow"},{"text":" / 3 项。","color":"white"}]

execute if score @s negotiation_round matches 3.. if score @s negotiation_correct matches 3 run scoreboard players add @s economy 6
execute if score @s negotiation_round matches 3.. if score @s negotiation_correct matches 3 run tellraw @a [{"text":"【招商洽谈】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 完美完成任务！","color":"gold","bold":true},{"text":" 经济 +6","color":"yellow"}]

execute if score @s negotiation_round matches 3.. if score @s negotiation_correct matches 2 run scoreboard players add @s economy 4
execute if score @s negotiation_round matches 3.. if score @s negotiation_correct matches 2 run tellraw @a [{"text":"【招商洽谈】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 完成任务！","color":"green","bold":true},{"text":" 经济 +4","color":"yellow"}]

execute if score @s negotiation_round matches 3.. if score @s negotiation_correct matches ..1 run tellraw @a [{"text":"【招商洽谈】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]
execute if score @s negotiation_round matches ..2 run tellraw @a [{"text":"【招商洽谈】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 未能在规定时间内完成洽谈，任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]
function rfm:attribute/minimum
function rfm:task/action/economy/economy_2/cleanup
