scoreboard players set #choose_time choose_time 30
bossbar set rfm:choose_time visible true
bossbar set rfm:choose_time max 30
bossbar set rfm:choose_time value 30
bossbar set rfm:choose_time players @a
bossbar set rfm:choose_time name {"text":"任务选择时间","color":"light_purple"}
schedule function rfm:task/task_choose 1s
