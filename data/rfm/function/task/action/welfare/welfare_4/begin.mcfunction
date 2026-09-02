scoreboard players set @s bus_queue_1 0
scoreboard players set @s bus_queue_2 0
scoreboard players set @s bus_queue_3 0
scoreboard players set @s bus_spawn_time 10
scoreboard players set @s bus_success 0
scoreboard players set @s bus_wrong 0
scoreboard players set @s bus_time 1200
scoreboard players set @s bus_state 1

bossbar set rfm:bus_time players @a[tag=rfm_participant]
bossbar set rfm:bus_time max 1200
bossbar set rfm:bus_time value 1200
bossbar set rfm:bus_time name [{"translate":"rfm.text.a08c1f9f0020","color":"red"},{"score":{"name":"@s","objective":"bus_success"},"color":"yellow"},{"text":" / 6","color":"red"}]
bossbar set rfm:bus_time visible true

function rfm:task/action/welfare/welfare_4/reset_buttons
