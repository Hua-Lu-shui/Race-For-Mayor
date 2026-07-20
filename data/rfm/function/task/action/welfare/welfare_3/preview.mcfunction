#展示动作期间锁定玩家；展示时间不计入正式操作倒计时
scoreboard players remove @s exercise_delay 1
execute if score @s exercise_delay matches ..0 if score @s exercise_preview < @s exercise_length run function rfm:task/action/welfare/welfare_3/preview_next
execute if score @s exercise_state matches 5 if score @s exercise_delay matches ..0 if score @s exercise_preview = @s exercise_length run function rfm:task/action/welfare/welfare_3/start_input
