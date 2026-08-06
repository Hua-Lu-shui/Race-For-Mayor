#潜行键重新按下时立即锁定本轮答案
scoreboard players set @s qa_armed 0
scoreboard players set @s qa_state 4

#玩家站在中央答疑台，只按重新潜行瞬间的水平朝向判定
#北：135..180或-180..-135；东：-135..-45；南：-45..45；西：45..135
execute if score @s qa_target matches 1 if entity @s[y_rotation=135..180] run function rfm:task/action/fame/fame_4/success
execute if score @s qa_state matches 4 if score @s qa_target matches 1 if entity @s[y_rotation=-180..-135] run function rfm:task/action/fame/fame_4/success
execute if score @s qa_state matches 4 if score @s qa_target matches 2 if entity @s[y_rotation=-135..-45] run function rfm:task/action/fame/fame_4/success
execute if score @s qa_state matches 4 if score @s qa_target matches 3 if entity @s[y_rotation=-45..45] run function rfm:task/action/fame/fame_4/success
execute if score @s qa_state matches 4 if score @s qa_target matches 4 if entity @s[y_rotation=45..135] run function rfm:task/action/fame/fame_4/success

execute if score @s qa_state matches 4 run function rfm:task/action/fame/fame_4/wrong_response
