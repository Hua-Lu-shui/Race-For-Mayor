#推进计时，并按终点和剩余时间判断任务完成情况
scoreboard players remove @s fitness_time 1
execute store result bossbar rfm:fitness_time value run scoreboard players get @s fitness_time

execute if entity @s[x=139,y=-80,z=-120,dx=0,dy=80,dz=120] run function rfm:task/action/welfare/welfare_2/finish

execute if score @s fitness_state matches 1 if score @s fitness_time matches ..0 run function rfm:task/action/welfare/welfare_2/result
