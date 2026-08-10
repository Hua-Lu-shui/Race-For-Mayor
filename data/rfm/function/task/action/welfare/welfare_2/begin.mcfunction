#正式开始全民健身挑战
scoreboard players set @s fitness_checkpoint 0
scoreboard players set @s fitness_time 220
scoreboard players set @s fitness_state 1

bossbar set rfm:fitness_time players @a
bossbar set rfm:fitness_time max 220
bossbar set rfm:fitness_time value 220
bossbar set rfm:fitness_time name {"text":"全民健身挑战  ·  剩余时间","color":"red"}
bossbar set rfm:fitness_time visible true

title @s actionbar [{"text":"开始：","color":"#FFCB77","bold":true},{"text":"冲过终点才算完成","color":"white"}]
