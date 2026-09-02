execute if score @s decision_task matches 209 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 209 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 209 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 209 run tellraw @s [{"translate":"rfm.text.dcd31fc44a00","color":"red"},{"translate":"rfm.text.72d780b63e29","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.37adbac8f2b5","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.08597c9fb827","color":"green"}]
execute if score @s decision_task matches 209 run scoreboard players set @s decision_task 0
