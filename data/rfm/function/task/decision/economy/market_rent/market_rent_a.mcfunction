#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 210 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 210 run scoreboard players add @s fame 2
execute if score @s decision_task matches 210 run scoreboard players remove @s economy 8
execute if score @s decision_task matches 210 run tellraw @s [{"translate":"rfm.text.e069babb3181","color":"red"},{"translate":"rfm.text.37adbac8f2b5","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.c1becc819fd9","color":"yellow"}]
execute if score @s decision_task matches 210 run scoreboard players set @s decision_task 0
