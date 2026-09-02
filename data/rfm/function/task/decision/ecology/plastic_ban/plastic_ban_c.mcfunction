execute if score @s decision_task matches 411 run scoreboard players add @s economy 2
execute if score @s decision_task matches 411 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 411 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 411 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 411 run tellraw @s [{"translate":"rfm.text.1edd21ce4f52","color":"green"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.08597c9fb827","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"}]
execute if score @s decision_task matches 411 run scoreboard players set @s decision_task 0
