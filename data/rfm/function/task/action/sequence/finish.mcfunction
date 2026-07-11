tellraw @a {"text":"本轮所有行动任务执行完毕。","color":"green","bold":true}
scoreboard players set #current_action action_order 0

#恢复所有玩家的游戏模式，并传送回各自办公室
gamemode adventure @a
execute as @a run function rfm:room/return

title @a title {"text":"本轮结束","color":"green","bold":true}

#取消可能残留的自动开局安排，进入全员准备状态
schedule clear rfm:round/round
scoreboard players set #waiting next_round_ready 1
scoreboard players set @a next_round_ready 0
scoreboard players set @a next_round_drop 0

#向每名玩家发放下一轮准备纸条
item replace entity @a hotbar.4 with minecraft:paper[minecraft:custom_name='{"text":"准备下一轮","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出；全员准备后开始下一轮","color":"gray","italic":false}'],minecraft:custom_data={next_round_ready:1}] 1
