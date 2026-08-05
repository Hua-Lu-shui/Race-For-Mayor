#执行task choose end函数对应的游戏流程
#将选择倒计时条隐藏
bossbar set rfm:choose_time visible false
#选择结束提示
title @a title {"text":"选择结束","color":"light_purple","bold":true}
title @a subtitle {"text":"开始执行本回合任务","color":"white"}
#清除超时未完成的选择，防止倒计时后继续点击旧选项
scoreboard players set @a decision_task 0
scoreboard players set @a decision_choice 0
scoreboard players set @a attribute_choice 0
scoreboard players set @a action_attribute_choice 0
#按照已分配的行动顺序，从第一项行动任务开始执行
function rfm:task/action/sequence/start
