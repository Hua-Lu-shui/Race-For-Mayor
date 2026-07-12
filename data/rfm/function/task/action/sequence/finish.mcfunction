tellraw @a {"text":"本轮所有行动任务执行完毕。","color":"green","bold":true}
title @a title {"text":"行动任务完成","color":"green","bold":true}
scoreboard players set #current_action action_order 0

#留出3秒展示各行动任务刚刚播报的完成情况，再统一返回办公室
schedule function rfm:task/action/sequence/finish_return 60t replace
