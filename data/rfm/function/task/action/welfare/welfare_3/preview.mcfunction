scoreboard players remove @s exercise_delay 1
execute if score @s exercise_delay matches ..0 if score @s exercise_preview < @s exercise_length run function rfm:task/action/welfare/welfare_3/preview_next
execute if score @s exercise_state matches 5 if score @s exercise_delay matches ..0 if score @s exercise_preview = @s exercise_length run function rfm:task/action/welfare/welfare_3/start_input
