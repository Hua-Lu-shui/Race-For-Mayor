execute if score @s decision_task matches 201 run scoreboard players add @s economy 2
execute if score @s decision_task matches 201 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 201 run tellraw @s [{"translate":"rfm.text.3e480ef0ef43","color":"aqua"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"}]
execute if score @s decision_task matches 201 run scoreboard players set @s decision_task 0
