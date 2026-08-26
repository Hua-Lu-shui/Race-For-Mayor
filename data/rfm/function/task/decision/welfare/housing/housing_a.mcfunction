#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 302 run scoreboard players add @s welfare 8
execute if score @s decision_task matches 302 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 302 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 302 run tellraw @s [{"translate":"rfm.text.342794352258","color":"red"},{"translate":"rfm.text.84b26502d2e1","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.08597c9fb827","color":"green"}]
execute if score @s decision_task matches 302 run scoreboard players set @s decision_task 0
