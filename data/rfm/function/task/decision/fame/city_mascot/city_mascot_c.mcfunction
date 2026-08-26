#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 116 run scoreboard players remove @s fame 6
execute if score @s decision_task matches 116 run scoreboard players add @s economy 4
execute if score @s decision_task matches 116 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 116 run tellraw @s [{"translate":"rfm.text.b2221e3fa03e","color":"green"},{"translate":"rfm.text.6f7256a011a0","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"}]
execute if score @s decision_task matches 116 run scoreboard players set @s decision_task 0
