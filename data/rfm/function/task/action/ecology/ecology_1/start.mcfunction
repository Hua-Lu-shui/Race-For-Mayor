#临时任务场地：中心约为100 -60 100，后续可统一替换
#进入行动任务时关闭可能残留的下一轮等待状态
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_drop 0
#所有人进入旁观位置，当前行动玩家恢复冒险模式并站到答题位置
gamemode spectator @a
tp @a 100 -54 114 180 25
gamemode adventure @s
tp @s 100 -60 110 180 0

#生成九个排放口的悬浮编号
function rfm:task/action/ecology/ecology_1/create_labels

#初始化十轮排放巡查
scoreboard players set @s emission_round 0
scoreboard players set @s emission_correct 0
scoreboard players set @s emission_target 0
scoreboard players set @s emission_answer 0
scoreboard players set @s emission_time 0
scoreboard players set @s emission_delay 0
#状态5表示等待玩家扔出准备纸条
scoreboard players set @s emission_state 5

#所有玩家到达任务场地后再公布教程
tellraw @a [{"text":"【生态行动】排放巡查","color":"gold","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"green"}]
tellraw @a {"text":"9个排放口中每次会有1个冒出黑烟。行动玩家需要在2.5秒内扔出快捷栏中对应编号的纸条，共进行10次巡查。","color":"white"}

title @s clear
title @s title {"text":"排放巡查","color":"green","bold":true}
tellraw @a {"text":"请行动玩家阅读教程。准备完成后，扔出快捷栏中的“准备完成”纸条。","color":"yellow"}

#只发放一张准备纸条；编号纸条将在倒计时结束后发放
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"text":"准备完成","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q扔出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={emission_ready:1}] 1
