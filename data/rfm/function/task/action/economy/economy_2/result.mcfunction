#根据完成情况结算经济行动任务2的奖励
scoreboard players set @s negotiation_state 4
bossbar set rfm:negotiation_time visible false
tellraw @a [{"text":"招商洽谈结束，共选择正确 ","color":"white"},{"score":{"name":"@s","objective":"negotiation_correct"},"color":"yellow"},{"text":" / 9 项。","color":"white"}]

execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches 9 run scoreboard players add @s economy 16
execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches 9 run function rfm:ability/military/perfect
execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches 9 run tellraw @a [{"text":"【招商洽谈】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 经济 +16","color":"yellow"}]

execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches 6..8 run scoreboard players add @s economy 10
execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches 6..8 run tellraw @a [{"text":"【招商洽谈】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 经济 +10","color":"yellow"}]

execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches ..5 run scoreboard players add @s economy 4
execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches ..5 run tellraw @a [{"text":"【招商洽谈】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 经济 +4","color":"yellow"}]
execute if score @s negotiation_round matches ..8 run scoreboard players add @s economy 4
execute if score @s negotiation_round matches ..8 run tellraw @a [{"text":"【招商洽谈】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 经济 +4","color":"yellow"}]
function rfm:attribute/minimum
function rfm:task/action/economy/economy_2/cleanup
