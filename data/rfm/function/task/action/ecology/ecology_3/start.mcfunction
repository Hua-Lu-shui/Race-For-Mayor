#公园维护场地
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0

gamemode adventure @a
tp @a 190 -47 71 -90 30
tp @s 206 -58 63 45 0

function rfm:task/action/ecology/ecology_3/create_labels
scoreboard players set @s park_progress 0
scoreboard players set @s park_time 0
scoreboard players set @s park_delay 0
scoreboard players set @s park_state 2

tellraw @a [{"text":"【生态行动】公园维护","color":"green","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a [{"text":"行动玩家","color":"#67D5FF","bold":true},{"text":"需要依次前往","color":"white"},{"text":"6个维护点","color":"#FFCB77"},{"text":"，在点位附近丢出","color":"white"},{"text":"“维护确认”纸条","color":"#FFD166","bold":true},{"text":"。","color":"white"}]
title @s clear
title @s title {"text":"公园维护","color":"green","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={park_ready:1}] 1
