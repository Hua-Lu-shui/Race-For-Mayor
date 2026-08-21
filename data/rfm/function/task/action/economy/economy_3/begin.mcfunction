#正式开始经济行动任务3并初始化计时状态
execute store result score @s audit_target run random value 1..3
function rfm:task/action/economy/economy_3/select_books
scoreboard players set @s audit_answer 0
scoreboard players set @s audit_correct 0
scoreboard players set @s audit_time 2400
scoreboard players set @s audit_state 1

bossbar set rfm:audit_time players @a[tag=rfm_participant]
bossbar set rfm:audit_time max 2400
bossbar set rfm:audit_time value 2400
bossbar set rfm:audit_time visible true
