#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 209 run scoreboard players add @s economy 6
execute if score @s decision_task matches 209 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 209 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 209 run tellraw @s [{"translate":"rfm.text.3d087b569cac","color":"green"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.08597c9fb827","color":"green"}]
execute if score @s decision_task matches 209 run scoreboard players set @s decision_task 0
