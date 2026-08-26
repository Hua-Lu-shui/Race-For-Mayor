#执行生态决策任务的B方案并结算属性
execute if score @s decision_task matches 417 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 417 run scoreboard players add @s fame 2
execute if score @s decision_task matches 417 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 417 run tellraw @s [{"translate":"rfm.text.3e718b94057f","color":"aqua"},{"translate":"rfm.text.643208335c88","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 417 run scoreboard players set @s decision_task 0
