execute if score @s decision_task matches 217 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 217 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 217 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 217 run tellraw @s [{"translate":"rfm.text.3ebdca500f85","color":"green"},{"translate":"rfm.text.72d780b63e29","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.643208335c88","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"}]
execute if score @s decision_task matches 217 run scoreboard players set @s decision_task 0
