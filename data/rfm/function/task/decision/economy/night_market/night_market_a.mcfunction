execute if score @s decision_task matches 205 run scoreboard players add @s economy 10
execute if score @s decision_task matches 205 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 205 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 205 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 205 run tellraw @s [{"translate":"rfm.text.0d1fa4abe06d","color":"red"},{"translate":"rfm.text.8a17b3f036be","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.40e5da9b7fc0","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 205 run scoreboard players set @s decision_task 0
