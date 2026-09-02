execute if score @s decision_task matches 216 run scoreboard players add @s economy 4
execute if score @s decision_task matches 216 run scoreboard players add @s fame 2
execute if score @s decision_task matches 216 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 216 run tellraw @s [{"translate":"rfm.text.0f1de6875c16","color":"aqua"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.08597c9fb827","color":"green"}]
execute if score @s decision_task matches 216 run scoreboard players set @s decision_task 0
