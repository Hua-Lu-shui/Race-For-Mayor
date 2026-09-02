scoreboard players set @s energy_round 0
scoreboard players set @s energy_correct 0
scoreboard players set @s energy_total 0
scoreboard players set @s energy_time 700
scoreboard players set @s energy_state 1

bossbar set rfm:energy_time players @a[tag=rfm_participant]
bossbar set rfm:energy_time max 700
bossbar set rfm:energy_time value 700
bossbar set rfm:energy_time visible true

function rfm:task/action/ecology/ecology_5/prepare_round
