execute if score @s decision_task matches 206 run scoreboard players add @s economy 8
execute if score @s decision_task matches 206 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 206 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 206 run tellraw @s [{"translate":"rfm.text.f5fb01c9b240","color":"red"},{"translate":"rfm.text.9f3dca44000b","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.08597c9fb827","color":"green"}]
execute if score @s decision_task matches 206 run scoreboard players set @s decision_task 0
