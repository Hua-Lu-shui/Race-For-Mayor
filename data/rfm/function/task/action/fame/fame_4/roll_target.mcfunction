execute store result score @s qa_target run random value 1..4
execute if score @s qa_target = @s qa_previous run function rfm:task/action/fame/fame_4/roll_target
