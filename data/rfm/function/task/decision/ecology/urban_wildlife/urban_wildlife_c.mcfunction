execute if score @s decision_task matches 419 run scoreboard players remove @s ecology 6
execute if score @s decision_task matches 419 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 419 run scoreboard players add @s economy 2
execute if score @s decision_task matches 419 run tellraw @s [{"translate":"rfm.text.426fb53c1b51","color":"green"},{"translate":"rfm.text.678f248e3e4f","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.37adbac8f2b5","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.b68792471274","color":"yellow"}]
execute if score @s decision_task matches 419 run scoreboard players set @s decision_task 0
