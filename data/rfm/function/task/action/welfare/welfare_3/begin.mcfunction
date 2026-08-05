#正式开始课间操领队任务，操作时间只在玩家输入动作时减少
scoreboard players set @s exercise_round 1
scoreboard players set @s exercise_wrong 0
scoreboard players set @s exercise_time 600
scoreboard players set @s exercise_input 0
scoreboard players set @s exercise_answer 0
scoreboard players set @s exercise_target 0
scoreboard players set @s exercise_armed 0

bossbar set rfm:exercise_time players @a
bossbar set rfm:exercise_time max 600
bossbar set rfm:exercise_time value 600
bossbar set rfm:exercise_time name [{"text":"","font":"minecraft:default"},{"text":"\uE217","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE229","font":"rfm:bossbar"},{"text":"课间操领队  ·  第 ","color":"red"},{"score":{"name":"@s","objective":"exercise_round"},"color":"yellow"},{"text":" / 3 轮","color":"red"}]
bossbar set rfm:exercise_time visible true

function rfm:task/action/welfare/welfare_3/prepare_round
