#执行名誉决策任务的B方案并结算属性
execute if score @s decision_task matches 102 run scoreboard players add @s fame 4
execute if score @s decision_task matches 102 run scoreboard players add @s economy 2
execute if score @s decision_task matches 102 run tellraw @s [{"translate":"rfm.text.1966d902d6b0","color":"aqua"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.b68792471274","color":"yellow"}]
execute if score @s decision_task matches 102 run scoreboard players set @s decision_task 0
