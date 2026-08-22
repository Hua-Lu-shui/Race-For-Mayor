#在玩家到达前搭建比赛厨房和料理台
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
function rfm:task/action/welfare/welfare_5/create_scene

#初始化任务状态，等待行动玩家确认准备
scoreboard players set @s cooking_clicks 0
scoreboard players set @s cooking_time 0
scoreboard players set @s cooking_state 2
scoreboard players set @s cooking_delay 0

#其他玩家在厨房上方观战，行动玩家站在料理台前
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 263 -58 -55 180 0
tp @s 263 -58 -67 0 0

tellraw @a[tag=rfm_participant] [{"text":"【民生行动】厨艺大比拼","color":"red","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"比赛开始后，对准料理台上的","color":"white"},{"text":"土豆","color":"#67D5FF","bold":true},{"text":"连续点击，每次点击视为切一刀。","color":"white"},{"text":"累计切满250刀","color":"#FFD166","bold":true},{"text":"即可完成料理。","color":"white"}]

title @s clear
title @s title {"text":"厨艺大比拼","color":"red","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"text":"准备完成","color":"red","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={cooking_ready:1}] 1
