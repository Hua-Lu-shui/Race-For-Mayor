scoreboard players add @s qa_correct 1
scoreboard players set @s qa_state 5
scoreboard players set @s qa_delay 10
effect clear @e[type=minecraft:villager,tag=rfm_qa_reporter] minecraft:glowing
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.4 1
title @s actionbar {"text":"回应成功！","color":"green","bold":true}
