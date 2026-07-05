execute if score @s decision_task matches 301 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 301 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 301 run scoreboard players add @s fame 1
execute if score @s decision_task matches 301 run tellraw @s {"text":"你选择了新建多所社区医院：民生 +4，经济 -3，名誉 +1","color":"yellow"}
scoreboard players set @s decision_task 0
