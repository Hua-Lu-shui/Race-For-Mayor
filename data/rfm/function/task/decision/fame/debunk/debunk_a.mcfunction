#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 110 run scoreboard players add @s fame 8
execute if score @s decision_task matches 110 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 110 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 110 run tellraw @s [{"translate":"rfm.text.311f12958a85","color":"red"},{"translate":"rfm.text.d5f8f0055544","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 110 run scoreboard players set @s decision_task 0
