execute if score @s decision_task matches 406 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 406 run scoreboard players add @s fame 1
execute if score @s decision_task matches 406 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 406 run tellraw @s {"text":"你选择了补贴自愿改造：生态 +2，名誉 +1，经济 -1","color":"yellow"}
scoreboard players set @s decision_task 0
