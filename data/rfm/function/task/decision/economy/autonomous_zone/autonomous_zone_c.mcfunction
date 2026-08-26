#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 218 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 218 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 218 run scoreboard players add @s fame 2
execute if score @s decision_task matches 218 run tellraw @s [{"translate":"rfm.text.a0abe42ce778","color":"green"},{"translate":"rfm.text.72d780b63e29","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.37adbac8f2b5","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"}]
execute if score @s decision_task matches 218 run scoreboard players set @s decision_task 0
