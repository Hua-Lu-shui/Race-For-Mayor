#正式开始全民健身挑战
scoreboard players set @s fitness_checkpoint 0
scoreboard players set @s fitness_target_1 0
scoreboard players set @s fitness_target_2 0
scoreboard players set @s fitness_target_3 0
scoreboard players set @s fitness_time 300
scoreboard players set @s fitness_state 1

bossbar set rfm:fitness_time players @a
bossbar set rfm:fitness_time max 300
bossbar set rfm:fitness_time value 300
bossbar set rfm:fitness_time name [{"text":"全民健身挑战  ·  检查点 ","color":"red"},{"score":{"name":"@s","objective":"fitness_checkpoint"},"color":"yellow"},{"text":" / 5","color":"red"}]
bossbar set rfm:fitness_time visible true

title @s actionbar [{"text":"第一段：","color":"#FFCB77","bold":true},{"text":"跨越障碍，到达平衡木入口","color":"white"}]
