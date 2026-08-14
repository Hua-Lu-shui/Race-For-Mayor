#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 212 run scoreboard players add @s economy 12
execute if score @s decision_task matches 212 run scoreboard players add @s fame 2
execute if score @s decision_task matches 212 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 212 run tellraw @s {"text":"你选择了全面上线系统：经济 +12，名誉 +2，民生 -4","color":"yellow"}
execute if score @s decision_task matches 212 run scoreboard players set @s decision_task 0
