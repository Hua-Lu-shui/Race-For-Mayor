#清理民生行动任务3的临时状态和界面
bossbar set rfm:exercise_time visible false
clear @s minecraft:paper[minecraft:custom_data={exercise_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{exercise_ready:1}}}}]

scoreboard players set @s exercise_round 0
scoreboard players set @s exercise_length 0
scoreboard players set @s exercise_input 0
scoreboard players set @s exercise_answer 0
scoreboard players set @s exercise_target 0
scoreboard players set @s exercise_wrong 0
scoreboard players set @s exercise_time 0
scoreboard players set @s exercise_state 0
scoreboard players set @s exercise_delay 0
scoreboard players set @s exercise_armed 0
scoreboard players set @s exercise_preview 0
scoreboard players set @s exercise_step_1 0
scoreboard players set @s exercise_step_2 0
scoreboard players set @s exercise_step_3 0
scoreboard players set @s exercise_step_4 0
scoreboard players set @s exercise_step_5 0
scoreboard players set @s exercise_step_6 0
function rfm:task/action/sequence/complete_current
