#将选择倒计时条隐藏
bossbar set rfm:choose_time visible false
#选择结束提示
title @a title {"text":"选择结束","color":"light_purple","bold":true}
title @a subtitle {"text":"开始执行本轮任务","color":"white"}
#清除超时未完成的选择，防止倒计时后继续点击旧选项
scoreboard players set @a decision_task 0
scoreboard players set @a attribute_choice 0
scoreboard players set @a action_attribute_choice 0
#单人行动任务分别公布
execute as @a if score @s action_role matches 1 run function rfm:task/action/show_selected
#双人行动任务只由队长公布一次
execute as @a if score @s action_role matches 2 if score @s action_task matches 1.. run function rfm:task/action/duo/show_selected
#队长超时未选择时，整组双人行动任务取消
execute as @a if score @s action_role matches 2 if score @s action_task matches 0 run tellraw @a {"text":"双人行动队长没有在倒计时内选择方向，本轮双人行动任务取消。","color":"gray"}
