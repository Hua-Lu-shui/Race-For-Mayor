scoreboard players set @s speech_round 0
scoreboard players set @s speech_correct 0
scoreboard players set @s speech_score 10
scoreboard players set @s speech_answer 0
scoreboard players set @s speech_time 0
scoreboard players set @s speech_state 1
execute store result score @s speech_category run random value 1..3
execute store result score @s speech_question run random value 1..7
scoreboard players set @s speech_delay 30

bossbar set rfm:speech_time players @a[tag=rfm_participant]
bossbar set rfm:speech_time max 30
bossbar set rfm:speech_time value 30
bossbar set rfm:speech_time visible true
bossbar set rfm:speech_time name [{"translate":"rfm.text.33e6f5a6f919","color":"aqua"}]

function rfm:task/action/fame/fame_1/reset_buttons
