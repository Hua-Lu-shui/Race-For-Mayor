#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 216 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 216 run scoreboard players add @s ecology 6
execute if score @s decision_task matches 216 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 216 run tellraw @s [{"translate":"rfm.text.0a8ad48c60f9","color":"green"},{"translate":"rfm.text.72d780b63e29","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.a6ffc5897bf5","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"}]
execute if score @s decision_task matches 216 run scoreboard players set @s decision_task 0
