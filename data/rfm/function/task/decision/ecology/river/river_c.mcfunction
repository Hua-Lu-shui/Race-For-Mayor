#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 402 run scoreboard players add @s economy 2
execute if score @s decision_task matches 402 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 402 run tellraw @s [{"translate":"rfm.text.e383a2dc7183","color":"green"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.40e5da9b7fc0","color":"green"}]
execute if score @s decision_task matches 402 run scoreboard players set @s decision_task 0
