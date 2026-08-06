#记录上一方向，抽取一个不连续重复的新提问方向
scoreboard players operation @s qa_previous = @s qa_target
execute store result score @s qa_target run random value 1..4
execute if score @s qa_target = @s qa_previous run function rfm:task/action/fame/fame_4/roll_target
scoreboard players add @s qa_round 1
scoreboard players set @s qa_time 40
scoreboard players set @s qa_armed 0
scoreboard players set @s qa_state 1
effect clear @e[type=minecraft:villager,tag=rfm_qa_reporter] minecraft:glowing
playsound minecraft:block.note_block.pling master @a 204 -58 -21 1 1.6 1
title @s actionbar {"text":"记者开始提问！转向后重新按下潜行！","color":"yellow","bold":true}
