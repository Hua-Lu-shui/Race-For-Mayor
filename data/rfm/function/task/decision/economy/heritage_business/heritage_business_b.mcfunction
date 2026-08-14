#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 219 run scoreboard players add @s economy 4
execute if score @s decision_task matches 219 run scoreboard players add @s fame 4
execute if score @s decision_task matches 219 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 219 run tellraw @s {"text":"你选择了补助师徒结对和店面改造：经济 +4，名誉 +4，民生 -2","color":"yellow"}
execute if score @s decision_task matches 219 run scoreboard players set @s decision_task 0
