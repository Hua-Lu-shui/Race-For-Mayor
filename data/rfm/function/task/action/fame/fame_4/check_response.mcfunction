scoreboard players set @s qa_armed 0
scoreboard players set @s qa_state 4

execute if score @s qa_target matches 1 if entity @s[y_rotation=135..180] run function rfm:task/action/fame/fame_4/success
execute if score @s qa_state matches 4 if score @s qa_target matches 1 if entity @s[y_rotation=-180..-135] run function rfm:task/action/fame/fame_4/success
execute if score @s qa_state matches 4 if score @s qa_target matches 2 if entity @s[y_rotation=-135..-45] run function rfm:task/action/fame/fame_4/success
execute if score @s qa_state matches 4 if score @s qa_target matches 3 if entity @s[y_rotation=-45..45] run function rfm:task/action/fame/fame_4/success
execute if score @s qa_state matches 4 if score @s qa_target matches 4 if entity @s[y_rotation=45..135] run function rfm:task/action/fame/fame_4/success

execute if score @s qa_state matches 4 run function rfm:task/action/fame/fame_4/wrong_response
