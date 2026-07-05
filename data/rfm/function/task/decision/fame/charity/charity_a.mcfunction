execute if score @s decision_task matches 104 run scoreboard players add @s fame 3
execute if score @s decision_task matches 104 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 104 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 104 run tellraw @s {"text":"你选择了大型公益宣传周：名誉 +3，民生 +1，经济 -2","color":"yellow"}
scoreboard players set @s decision_task 0
