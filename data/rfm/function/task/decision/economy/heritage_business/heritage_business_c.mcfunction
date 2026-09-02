execute if score @s decision_task matches 219 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 219 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 219 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 219 run tellraw @s [{"translate":"rfm.text.9e24ce15ff85","color":"green"},{"translate":"rfm.text.e187c8894717","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.643208335c88","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 219 run scoreboard players set @s decision_task 0
