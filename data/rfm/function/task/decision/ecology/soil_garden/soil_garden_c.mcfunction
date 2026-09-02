execute if score @s decision_task matches 418 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 418 run scoreboard players add @s economy 4
execute if score @s decision_task matches 418 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 418 run tellraw @s [{"translate":"rfm.text.f39b9fd4c8b8","color":"green"},{"translate":"rfm.text.08597c9fb827","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"}]
execute if score @s decision_task matches 418 run scoreboard players set @s decision_task 0
