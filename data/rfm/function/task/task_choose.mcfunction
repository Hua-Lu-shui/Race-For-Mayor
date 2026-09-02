scoreboard players remove #choose_time choose_time 1
execute store result bossbar rfm:choose_time value run scoreboard players get #choose_time choose_time
execute if score #choose_time choose_time matches 1.. run schedule function rfm:task/task_choose 1s
execute if score #choose_time choose_time matches ..0 run function rfm:task/task_choose_end
