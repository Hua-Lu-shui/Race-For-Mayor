scoreboard players set #waiting next_round_ready 1
scoreboard players set @a next_round_ready 0
scoreboard players set @a next_round_drop 0

#向每名玩家发放下一轮准备纸条
item replace entity @a hotbar.4 with minecraft:paper[minecraft:custom_name='{"text":"准备下一轮","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出；全员准备后开始下一轮","color":"gray","italic":false}'],minecraft:custom_data={next_round_ready:1}] 1
