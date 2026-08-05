#进入行动任务时关闭可能残留的下一回合等待状态
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0
#所有人进入旁观位置，当前行动玩家恢复冒险模式并站到答题位置
gamemode adventure @a
tp @a 121 -48 74 180 0
tp @s 120 -55 68 0 0

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
tellraw @a [{"text":"【生态行动】排放巡查","color":"green","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a [{"text":"9个排放口中每次会有1个冒出黑烟。","color":"white"},{"text":"行动玩家","color":"#67D5FF","bold":true},{"text":"需要在","color":"white"},{"text":"2秒内","color":"#FFCB77","bold":true},{"text":"扔出","color":"white"},{"text":"对应编号的纸条","color":"#FFD166","bold":true},{"text":"，共进行10次巡查。","color":"white"}]

title @s clear
title @s title {"text":"排放巡查","color":"green","bold":true}

#只发放一张准备空地图；编号纸条将在倒计时结束后发放
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={emission_ready:1}] 1
