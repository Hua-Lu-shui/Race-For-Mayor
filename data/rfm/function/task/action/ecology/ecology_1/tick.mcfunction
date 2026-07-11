#根据本次正确编号，让对应排放口冒出所有玩家可见的黑烟
execute if score @s emission_target matches 1 run particle minecraft:large_smoke 96 -58 96 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 2 run particle minecraft:large_smoke 100 -58 96 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 3 run particle minecraft:large_smoke 104 -58 96 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 4 run particle minecraft:large_smoke 96 -58 100 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 5 run particle minecraft:large_smoke 100 -58 100 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 6 run particle minecraft:large_smoke 104 -58 100 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 7 run particle minecraft:large_smoke 96 -58 104 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 8 run particle minecraft:large_smoke 100 -58 104 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 9 run particle minecraft:large_smoke 104 -58 104 0.25 0.5 0.25 0.02 5 force @a

#检查行动玩家扔出的编号纸条
function rfm:task/action/ecology/ecology_1/detect_answer

#尚未作答时继续倒计时，50游戏刻等于2.5秒
execute if score @s emission_state matches 1 run scoreboard players remove @s emission_time 1
execute if score @s emission_state matches 1 store result bossbar rfm:emission_time value run scoreboard players get @s emission_time
execute if score @s emission_state matches 1 if score @s emission_time matches 41..50 run bossbar set rfm:emission_time name [{"text":"第 ","color":"white"},{"score":{"name":"@s","objective":"emission_round"},"color":"gold"},{"text":" / 10 轮  ·  剩余时间：2.5 秒","color":"green"}]
execute if score @s emission_state matches 1 if score @s emission_time matches 31..40 run bossbar set rfm:emission_time name [{"text":"第 ","color":"white"},{"score":{"name":"@s","objective":"emission_round"},"color":"gold"},{"text":" / 10 轮  ·  剩余时间：2.0 秒","color":"green"}]
execute if score @s emission_state matches 1 if score @s emission_time matches 21..30 run bossbar set rfm:emission_time name [{"text":"第 ","color":"white"},{"score":{"name":"@s","objective":"emission_round"},"color":"gold"},{"text":" / 10 轮  ·  剩余时间：1.5 秒","color":"yellow"}]
execute if score @s emission_state matches 1 if score @s emission_time matches 11..20 run bossbar set rfm:emission_time name [{"text":"第 ","color":"white"},{"score":{"name":"@s","objective":"emission_round"},"color":"gold"},{"text":" / 10 轮  ·  剩余时间：1.0 秒","color":"gold"}]
execute if score @s emission_state matches 1 if score @s emission_time matches 1..10 run bossbar set rfm:emission_time name [{"text":"第 ","color":"white"},{"score":{"name":"@s","objective":"emission_round"},"color":"gold"},{"text":" / 10 轮  ·  剩余时间：0.5 秒","color":"red"}]
execute if score @s emission_state matches 1 if score @s emission_time matches ..0 run function rfm:task/action/ecology/ecology_1/timeout
