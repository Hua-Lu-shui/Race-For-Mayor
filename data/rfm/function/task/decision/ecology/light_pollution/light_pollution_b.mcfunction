#执行生态决策任务的B方案并结算属性
execute if score @s decision_task matches 416 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 416 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 416 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 416 run tellraw @s [{"translate":"rfm.text.2a7c4eaf87ff","color":"aqua"},{"translate":"rfm.text.643208335c88","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 416 run scoreboard players set @s decision_task 0
