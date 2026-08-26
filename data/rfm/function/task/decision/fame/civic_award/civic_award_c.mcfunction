#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 117 run scoreboard players remove @s fame 6
execute if score @s decision_task matches 117 run scoreboard players add @s economy 2
execute if score @s decision_task matches 117 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 117 run tellraw @s [{"translate":"rfm.text.f0155b7c3d5d","color":"green"},{"translate":"rfm.text.6f7256a011a0","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"}]
execute if score @s decision_task matches 117 run scoreboard players set @s decision_task 0
