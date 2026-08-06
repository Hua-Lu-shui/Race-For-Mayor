#根据本次正确编号，让对应排放口冒出所有玩家可见的黑烟
execute if score @s emission_target matches 1 run particle minecraft:large_smoke 123 -58 72 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 2 run particle minecraft:large_smoke 120 -58 72 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 3 run particle minecraft:large_smoke 117 -58 72 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 4 run particle minecraft:large_smoke 123 -58 75 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 5 run particle minecraft:large_smoke 120 -58 75 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 6 run particle minecraft:large_smoke 117 -58 75 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 7 run particle minecraft:large_smoke 123 -58 78 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 8 run particle minecraft:large_smoke 120 -58 78 0.25 0.5 0.25 0.02 5 force @a
execute if score @s emission_target matches 9 run particle minecraft:large_smoke 117 -58 78 0.25 0.5 0.25 0.02 5 force @a

#检查行动玩家扔出的编号纸条
function rfm:task/action/ecology/ecology_1/detect_answer

#尚未作答时继续倒计时，40游戏刻等于2秒
execute if score @s emission_state matches 1 run scoreboard players remove @s emission_time 1
execute if score @s emission_state matches 1 store result bossbar rfm:emission_time value run scoreboard players get @s emission_time
execute if score @s emission_state matches 1 if score @s emission_time matches ..0 run function rfm:task/action/ecology/ecology_1/timeout
