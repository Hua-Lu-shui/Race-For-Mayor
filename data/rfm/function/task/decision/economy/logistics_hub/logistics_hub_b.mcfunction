execute if score @s decision_task matches 206 run scoreboard players add @s economy 4
execute if score @s decision_task matches 206 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 206 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 206 run tellraw @s [{"translate":"rfm.text.3cd6ad14c51e","color":"aqua"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.08597c9fb827","color":"green"}]
execute if score @s decision_task matches 206 run scoreboard players set @s decision_task 0
