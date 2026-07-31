#临时市场调研场地：20名商人按5列4排分布
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0

#生成商人
scoreboard players set @s market_round 0
scoreboard players set @s market_goods 0
scoreboard players set @s market_target 0
scoreboard players set @s market_answer 0
scoreboard players set @s market_correct 0
scoreboard players set @s market_time 0
scoreboard players set @s market_delay 0
scoreboard players set @s market_state 2
function rfm:task/action/economy/economy_1/prepare_round

#商人准备完毕后再把所有玩家送入市场
gamemode adventure @a
tp @a 127 -50 22 90 30
tp @s 114 -59 22 -90 0

tellraw @a [{"text":"【经济行动】市场调研","color":"yellow","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"行动玩家需要查看20名商人的交易，并实际完成其中最实惠的一笔交易。任务只进行一轮。","color":"white"}

title @s clear
title @s title {"text":"市场调研","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={market_ready:1}] 1
