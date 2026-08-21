#执行task assign函数对应的游戏流程
#按大厅设置读取本局决策任务倒计时（20秒或30秒）
scoreboard players operation #choose_time choose_time = #decision_time game_setting
scoreboard players set @a[tag=rfm_participant] decision_choice 0
#使倒计时条可见，并同步最大值和当前值
bossbar set rfm:choose_time visible true
execute store result bossbar rfm:choose_time max run scoreboard players get #choose_time choose_time
execute store result bossbar rfm:choose_time value run scoreboard players get #choose_time choose_time
bossbar set rfm:choose_time players @a[tag=rfm_participant]
bossbar set rfm:choose_time name [{"text":"","font":"minecraft:default"},{"text":"\uE20E","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE232","font":"rfm:bossbar"},{"text":"任务选择时间","color":"light_purple"}]
schedule function rfm:task/task_choose 1s
