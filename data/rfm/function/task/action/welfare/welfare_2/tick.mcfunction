#推进计时并执行当前随机路线的检查
scoreboard players remove @s fitness_time 1
execute store result bossbar rfm:fitness_time value run scoreboard players get @s fitness_time

execute if score @s fitness_course matches 1 run function rfm:task/action/welfare/welfare_2/course_1_tick
execute if score @s fitness_course matches 2 run function rfm:task/action/welfare/welfare_2/course_2_tick
execute if score @s fitness_course matches 3 run function rfm:task/action/welfare/welfare_2/course_3_tick

#跌入赛道下方时返回最近检查点，并扣除3秒
execute if entity @s[y=-80,dy=18] run function rfm:task/action/welfare/welfare_2/fall_check
execute if score @s fitness_state matches 1 if score @s fitness_time matches ..0 run function rfm:task/action/welfare/welfare_2/result
