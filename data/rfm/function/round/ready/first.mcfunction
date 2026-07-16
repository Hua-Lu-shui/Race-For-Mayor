#处理第一名玩家提交下一轮准备的状态
schedule clear rfm:round/round
scoreboard players set #waiting next_round_ready 1
scoreboard players set @a next_round_ready 0
scoreboard players set @a next_round_clock 0

item replace entity @a hotbar.4 with minecraft:clock[minecraft:custom_name='{"text":"准备第一轮","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出；全员准备后开始第一轮","color":"gray","italic":false}'],minecraft:custom_data={next_round_ready:1}] 1
