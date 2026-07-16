#正式开始生态行动任务5并初始化计时状态
scoreboard players set @s energy_round 0
scoreboard players set @s energy_correct 0
scoreboard players set @s energy_total 0
scoreboard players set @s energy_time 600
scoreboard players set @s energy_state 1

bossbar set rfm:energy_time players @a
bossbar set rfm:energy_time max 600
bossbar set rfm:energy_time value 600
bossbar set rfm:energy_time visible true

function rfm:task/action/ecology/ecology_5/prepare_round
