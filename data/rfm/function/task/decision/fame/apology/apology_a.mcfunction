#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 107 run scoreboard players add @s fame 2
execute if score @s decision_task matches 107 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 107 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 107 run tellraw @s [{"translate":"rfm.text.04a78c77074d","color":"red"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.37adbac8f2b5","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.72d780b63e29","color":"yellow"}]
execute if score @s decision_task matches 107 run scoreboard players set @s decision_task 0
