#第一轮不再自动开始，改为等待所有玩家扔出准备纸条
schedule clear rfm:round/round
scoreboard players set #waiting next_round_ready 1
scoreboard players set @a next_round_ready 0
scoreboard players set @a next_round_drop 0

item replace entity @a hotbar.4 with minecraft:paper[minecraft:custom_name='{"text":"准备第一轮","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出；全员准备后开始第一轮","color":"gray","italic":false}'],minecraft:custom_data={next_round_ready:1}] 1
