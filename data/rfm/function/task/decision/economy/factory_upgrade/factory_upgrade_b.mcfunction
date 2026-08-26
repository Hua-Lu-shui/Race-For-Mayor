#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 209 run scoreboard players add @s economy 4
execute if score @s decision_task matches 209 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 209 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 209 run tellraw @s [{"translate":"rfm.text.26d40f276ae2","color":"aqua"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.643208335c88","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 209 run scoreboard players set @s decision_task 0
