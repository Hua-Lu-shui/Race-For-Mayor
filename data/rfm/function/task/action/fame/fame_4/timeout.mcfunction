scoreboard players set @s qa_state 5
scoreboard players set @s qa_delay 10
effect clear @e[type=minecraft:villager,tag=rfm_qa_reporter] minecraft:glowing
playsound minecraft:block.note_block.bass master @a[tag=rfm_participant] ~ ~ ~ 1 0.7 1
title @s actionbar {"translate":"rfm.text.c7e93e1bc98e","color":"red","bold":true}
