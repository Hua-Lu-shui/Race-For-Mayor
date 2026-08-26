#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 314 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 314 run scoreboard players add @s economy 4
execute if score @s decision_task matches 314 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 314 run tellraw @s [{"translate":"rfm.text.c395c2b75859","color":"green"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 314 run scoreboard players set @s decision_task 0
