#临时市场调研场地：20名商人按5列4排分布
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0

#先搭建场地并生成全部商人，避免玩家到场后看到村民突然出现
fill 288 -61 96 308 -61 117 minecraft:smooth_stone replace
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
gamemode spectator @a
tp @a 298 -53 116 180 25
gamemode adventure @s
tp @s 298 -60 114 180 0

tellraw @a [{"text":"【经济行动】市场调研","color":"yellow","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"行动玩家需要查看20名商人的交易，并实际完成其中单位价格最低的一笔交易。任务只进行一轮。","color":"white"}

title @s clear
title @s title {"text":"市场调研","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={market_ready:1}] 1
