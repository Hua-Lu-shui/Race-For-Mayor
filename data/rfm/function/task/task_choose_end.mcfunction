#将选择倒计时条隐藏
bossbar set rfm:choose_time visible false
#选择结束提示
title @a title {"text":"选择结束","color":"light_purple","bold":true}
title @a subtitle {"text":"开始执行本轮任务","color":"white"}
#向全体玩家公布本轮行动任务教程
execute as @a if score @s action_player matches 1 run function rfm:task/action/show_selected
