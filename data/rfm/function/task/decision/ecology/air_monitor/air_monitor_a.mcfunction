#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 409 run scoreboard players add @s ecology 6
execute if score @s decision_task matches 409 run scoreboard players add @s fame 6
execute if score @s decision_task matches 409 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 409 run tellraw @s [{"translate":"rfm.text.e2c348762495","color":"red"},{"translate":"rfm.text.a6ffc5897bf5","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.546e37949bb5","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.72d780b63e29","color":"yellow"}]
execute if score @s decision_task matches 409 run scoreboard players set @s decision_task 0
