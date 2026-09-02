execute if score @s decision_task matches 414 run scoreboard players add @s economy 2
execute if score @s decision_task matches 414 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 414 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 414 run tellraw @s [{"translate":"rfm.text.4c8ac26742e8","color":"green"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.08597c9fb827","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 414 run scoreboard players set @s decision_task 0
