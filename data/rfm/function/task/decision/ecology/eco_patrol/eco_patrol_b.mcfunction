execute if score @s decision_task matches 414 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 414 run scoreboard players add @s fame 2
execute if score @s decision_task matches 414 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 414 run tellraw @s [{"translate":"rfm.text.df2f643d75de","color":"aqua"},{"translate":"rfm.text.643208335c88","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"}]
execute if score @s decision_task matches 414 run scoreboard players set @s decision_task 0
