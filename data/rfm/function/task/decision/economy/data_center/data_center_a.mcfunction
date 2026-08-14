#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 216 run scoreboard players add @s economy 10
execute if score @s decision_task matches 216 run scoreboard players add @s fame 2
execute if score @s decision_task matches 216 run scoreboard players remove @s ecology 6
execute if score @s decision_task matches 216 run tellraw @s {"text":"你选择了划出园区快速落地：经济 +10，名誉 +2，生态 -6","color":"yellow"}
execute if score @s decision_task matches 216 run scoreboard players set @s decision_task 0
