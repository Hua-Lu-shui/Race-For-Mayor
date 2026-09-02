function rfm:task/action/fame/fame_2/reset_buttons
scoreboard players set @s visit_delay 0
execute if score @s visit_answer = @s visit_target run scoreboard players set @s visit_delay 1
execute if score @s visit_delay matches 0 run function rfm:task/action/fame/fame_2/failure
execute if score @s visit_delay matches 1 run function rfm:task/action/fame/fame_2/success
