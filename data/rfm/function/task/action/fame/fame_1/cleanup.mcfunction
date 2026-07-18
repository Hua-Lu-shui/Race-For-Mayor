#清理名誉行动任务1的临时状态和界面
bossbar set rfm:speech_time visible false
clear @s minecraft:map[minecraft:custom_data={speech_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{speech_ready:1}}}}]

scoreboard players set @s speech_round 0
scoreboard players set @s speech_order 0
scoreboard players set @s speech_category 0
scoreboard players set @s speech_question 0
scoreboard players set @s speech_target 0
scoreboard players set @s speech_answer 0
scoreboard players set @s speech_correct 0
scoreboard players set @s speech_score 0
scoreboard players set @s speech_time 0
scoreboard players set @s speech_delay 0
scoreboard players set @s speech_state 0
function rfm:task/action/sequence/complete_current
