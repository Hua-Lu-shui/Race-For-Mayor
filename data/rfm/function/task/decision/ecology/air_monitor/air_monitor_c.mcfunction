execute if score @s decision_task matches 409 run scoreboard players add @s economy 8
execute if score @s decision_task matches 409 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 409 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 409 run tellraw @s [{"translate":"rfm.text.4ad64bb40141","color":"green"},{"translate":"rfm.text.9f3dca44000b","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.08597c9fb827","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 409 run scoreboard players set @s decision_task 0
