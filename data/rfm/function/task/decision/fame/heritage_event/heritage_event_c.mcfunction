#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 115 run scoreboard players add @s economy 2
execute if score @s decision_task matches 115 run scoreboard players add @s fame 2
execute if score @s decision_task matches 115 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 115 run tellraw @s [{"translate":"rfm.text.d9e9e7b9cc92","color":"green"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 115 run scoreboard players set @s decision_task 0
