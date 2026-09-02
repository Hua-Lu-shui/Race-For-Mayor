execute store result score @s audit_target run random value 1..3
function rfm:task/action/economy/economy_3/select_books
scoreboard players set @s audit_answer 0
scoreboard players set @s audit_correct 0
scoreboard players set @s audit_time 1200
scoreboard players set @s audit_state 1

bossbar set rfm:audit_time players @a[tag=rfm_participant]
bossbar set rfm:audit_time max 1200
bossbar set rfm:audit_time value 1200
bossbar set rfm:audit_time visible true
