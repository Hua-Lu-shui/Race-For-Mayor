execute store result score @s photo_target_2 run random value 1..8
execute if score @s photo_target_2 = @s photo_target_1 run function rfm:task/action/fame/fame_3/roll_target_2
