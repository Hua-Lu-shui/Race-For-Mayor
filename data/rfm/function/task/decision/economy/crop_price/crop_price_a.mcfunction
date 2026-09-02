execute if score @s decision_task matches 217 run scoreboard players add @s economy 8
execute if score @s decision_task matches 217 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 217 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 217 run tellraw @s [{"translate":"rfm.text.597d0c5a6baf","color":"red"},{"translate":"rfm.text.9f3dca44000b","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.40e5da9b7fc0","color":"green"}]
execute if score @s decision_task matches 217 run scoreboard players set @s decision_task 0
