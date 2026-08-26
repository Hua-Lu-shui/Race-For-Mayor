#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 303 run scoreboard players add @s economy 2
execute if score @s decision_task matches 303 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 303 run tellraw @s [{"translate":"rfm.text.0ae9d3845fc0","color":"green"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 303 run scoreboard players set @s decision_task 0
