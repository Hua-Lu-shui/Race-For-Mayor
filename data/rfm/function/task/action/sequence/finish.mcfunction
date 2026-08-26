tellraw @a[tag=rfm_participant] {"translate":"rfm.text.f6d033e6af47","color":"green","bold":true}
title @a[tag=rfm_participant] title {"translate":"rfm.text.c46ca2042c32","color":"green","bold":true}
scoreboard players set #current_action action_order 0

#留出3秒展示各行动任务刚刚播报的完成情况，再统一返回办公室
schedule function rfm:task/action/sequence/finish_return 60t replace
