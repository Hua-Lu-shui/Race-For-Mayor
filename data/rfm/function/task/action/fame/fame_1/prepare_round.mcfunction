#生成下一次不同类型的粒子反应，并随机选择出现反应的市民
execute store result score @s speech_target run random value 1..2
scoreboard players operation @s speech_category += @s speech_target
execute if score @s speech_category matches 4.. run scoreboard players remove @s speech_category 3
execute store result score @s speech_question run random value 1..7

scoreboard players set @s speech_answer 0
scoreboard players set @s speech_delay 60
scoreboard players set @s speech_state 1
bossbar set rfm:speech_time max 60
bossbar set rfm:speech_time value 60
bossbar set rfm:speech_time visible true
function rfm:task/action/fame/fame_1/reset_buttons
