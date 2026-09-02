scoreboard players set @s trash_round 0
scoreboard players set @s trash_correct 0
scoreboard players set @s trash_answer 0
scoreboard players set @s trash_used_1 0
scoreboard players set @s trash_used_2 0
scoreboard players set @s trash_used_3 0
scoreboard players set @s trash_used_4 0
scoreboard players set @s trash_used_5 0
scoreboard players set @s trash_used_6 0
scoreboard players set @s trash_used_7 0
scoreboard players set @s trash_used_8 0
scoreboard players set @s trash_used_9 0
scoreboard players set @s trash_used_10 0
scoreboard players set @s trash_time 400
scoreboard players set @s trash_state 1

bossbar set rfm:trash_time players @a[tag=rfm_participant]
bossbar set rfm:trash_time max 400
bossbar set rfm:trash_time value 400
bossbar set rfm:trash_time name [{"translate":"rfm.text.4091a3d91997","color":"green"},{"score":{"name":"@s","objective":"trash_round"},"color":"yellow"},{"translate":"rfm.text.3a4d9de6ee55","color":"green"},{"score":{"name":"@s","objective":"trash_correct"},"color":"gold"}]
bossbar set rfm:trash_time visible true

function rfm:task/action/ecology/ecology_4/give_item
