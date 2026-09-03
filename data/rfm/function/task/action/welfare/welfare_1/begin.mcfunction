scoreboard players set @s hospital_round 0
scoreboard players set @s hospital_correct 0
scoreboard players set @s hospital_answer 0
scoreboard players set @s hospital_used_1 0
scoreboard players set @s hospital_used_2 0
scoreboard players set @s hospital_used_3 0
scoreboard players set @s hospital_used_4 0
scoreboard players set @s hospital_used_5 0
scoreboard players set @s hospital_used_6 0
scoreboard players set @s hospital_used_7 0
scoreboard players set @s hospital_used_8 0
scoreboard players set @s hospital_used_9 0
scoreboard players set @s hospital_used_10 0
scoreboard players set @s hospital_used_11 0
scoreboard players set @s hospital_used_12 0
scoreboard players set @s hospital_time 800
scoreboard players set @s hospital_state 1

bossbar set rfm:hospital_time players @a[tag=rfm_participant]
bossbar set rfm:hospital_time max 800
bossbar set rfm:hospital_time value 800
bossbar set rfm:hospital_time name [{"translate":"rfm.text.aef6911f2025","color":"red"},{"score":{"name":"@s","objective":"hospital_round"},"color":"yellow"},{"translate":"rfm.text.b9009aa4e74a","color":"red"},{"score":{"name":"@s","objective":"hospital_correct"},"color":"gold"}]
bossbar set rfm:hospital_time visible true

function rfm:task/action/welfare/welfare_1/give_case
