#河道场地
#进入行动任务时关闭可能残留的下一轮等待状态
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0
#所有玩家进入观战位置，行动玩家站到河道起点
gamemode adventure @a
tp @a 158 -48 74 90 30
tp @s 144 -57 69 0 0

function rfm:task/action/ecology/ecology_2/create_labels

#初始化任务状态，等待行动玩家确认准备
scoreboard players set @s sample_progress 0
scoreboard players set @s sample_time 0
scoreboard players set @s sample_delay 0
scoreboard players set @s sample_state 2

tellraw @a [{"text":"【生态行动】河道取样","color":"green","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"行动玩家需要沿河道依次完成1至6号取样点。在当前目标附近用玻璃瓶取得水样。","color":"white"}

title @s clear
title @s title {"text":"河道取样","color":"green","bold":true}

item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={sample_ready:1}] 1
