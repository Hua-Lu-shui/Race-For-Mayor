scoreboard players set @s qa_state 5
scoreboard players set @s qa_delay 10
effect clear @e[type=minecraft:villager,tag=rfm_qa_reporter] minecraft:glowing
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0.7 1
title @s actionbar {"text":"回应方向错误！","color":"red","bold":true}
