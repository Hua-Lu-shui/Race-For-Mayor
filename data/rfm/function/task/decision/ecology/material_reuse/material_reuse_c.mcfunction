execute if score @s decision_task matches 420 run scoreboard players remove @s ecology 6
execute if score @s decision_task matches 420 run scoreboard players add @s economy 6
execute if score @s decision_task matches 420 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 420 run tellraw @s [{"translate":"rfm.text.af43328e440c","color":"green"},{"translate":"rfm.text.678f248e3e4f","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"}]
execute if score @s decision_task matches 420 run scoreboard players set @s decision_task 0
