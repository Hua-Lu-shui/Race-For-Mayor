#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 304 run scoreboard players add @s economy 2
execute if score @s decision_task matches 304 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 304 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 304 run tellraw @s [{"translate":"rfm.text.eae6ff302b4a","color":"green"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.5ee7110d02b1","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 304 run scoreboard players set @s decision_task 0
