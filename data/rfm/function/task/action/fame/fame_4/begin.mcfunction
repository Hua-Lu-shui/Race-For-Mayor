#初始化10轮公开答疑
scoreboard players set @s qa_round 0
scoreboard players set @s qa_target 0
scoreboard players set @s qa_previous 0
scoreboard players set @s qa_correct 0
scoreboard players set @s qa_time 0
scoreboard players set @s qa_armed 0
scoreboard players set @s qa_delay 0
scoreboard players set @s qa_state 1

bossbar set rfm:qa_time players @a[tag=rfm_participant]
bossbar set rfm:qa_time max 40
bossbar set rfm:qa_time value 40
bossbar set rfm:qa_time visible true
function rfm:task/action/fame/fame_4/prepare_round
