#读取当前输入位置的正确动作并判断
scoreboard players set @s exercise_armed 0
scoreboard players set @s exercise_target 0
execute if score @s exercise_input matches 0 run scoreboard players operation @s exercise_target = @s exercise_step_1
execute if score @s exercise_input matches 1 run scoreboard players operation @s exercise_target = @s exercise_step_2
execute if score @s exercise_input matches 2 run scoreboard players operation @s exercise_target = @s exercise_step_3
execute if score @s exercise_input matches 3 run scoreboard players operation @s exercise_target = @s exercise_step_4
execute if score @s exercise_input matches 4 run scoreboard players operation @s exercise_target = @s exercise_step_5
execute if score @s exercise_input matches 5 run scoreboard players operation @s exercise_target = @s exercise_step_6

execute if score @s exercise_answer = @s exercise_target run function rfm:task/action/welfare/welfare_3/correct
execute unless score @s exercise_answer = @s exercise_target run function rfm:task/action/welfare/welfare_3/wrong
