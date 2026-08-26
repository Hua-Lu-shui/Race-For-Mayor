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

title @a[tag=rfm_participant] clear
title @a[tag=rfm_participant] title [{"translate":"rfm.text.f495347d6acf","color":"white"},{"score":{"name":"@s","objective":"exercise_round"},"color":"yellow"},{"translate":"rfm.text.cdf19f6c5f95","color":"white"}]
title @a[tag=rfm_participant] subtitle {"translate":"rfm.text.4051a413ba91","color":"aqua"}
bossbar set rfm:exercise_time name [{"translate":"rfm.text.22999089974d","color":"red"},{"score":{"name":"@s","objective":"exercise_round"},"color":"yellow"},{"translate":"rfm.text.329bd6423a37","color":"aqua"}]
