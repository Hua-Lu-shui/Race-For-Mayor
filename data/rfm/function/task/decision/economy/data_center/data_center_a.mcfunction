#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 216 run scoreboard players add @s economy 10
execute if score @s decision_task matches 216 run scoreboard players add @s fame 2
execute if score @s decision_task matches 216 run scoreboard players remove @s ecology 6
execute if score @s decision_task matches 216 run tellraw @s [{"translate":"rfm.text.0f54c6948c6a","color":"red"},{"translate":"rfm.text.8a17b3f036be","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.678f248e3e4f","color":"green"}]
execute if score @s decision_task matches 216 run scoreboard players set @s decision_task 0
