#根据当前轮数确定序列长度，并生成新的动作顺序
scoreboard players set @s exercise_length 4
execute if score @s exercise_round matches 2 run scoreboard players set @s exercise_length 5
execute if score @s exercise_round matches 3 run scoreboard players set @s exercise_length 6

execute store result score @s exercise_step_1 run random value 1..4
execute store result score @s exercise_step_2 run random value 1..4
execute store result score @s exercise_step_3 run random value 1..4
execute store result score @s exercise_step_4 run random value 1..4
execute store result score @s exercise_step_5 run random value 1..4
execute store result score @s exercise_step_6 run random value 1..4

scoreboard players set @s exercise_input 0
scoreboard players set @s exercise_answer 0
scoreboard players set @s exercise_target 0
scoreboard players set @s exercise_armed 0
scoreboard players set @s exercise_preview 0
scoreboard players set @s exercise_delay 20
scoreboard players set @s exercise_state 5

title @a clear
title @a title [{"text":"第 ","color":"white"},{"score":{"name":"@s","objective":"exercise_round"},"color":"yellow"},{"text":" 轮","color":"white"}]
title @a subtitle {"text":"观察动作顺序","color":"aqua"}
bossbar set rfm:exercise_time name [{"text":"课间操领队  ·  第 ","color":"red"},{"score":{"name":"@s","objective":"exercise_round"},"color":"yellow"},{"text":" / 3 轮  ·  观察中","color":"aqua"}]
