#记录本tick内丢出过纸条的玩家
execute as @a[scores={next_round_ready=0,next_round_drop=1..}] run function rfm:round/ready/player_ready

#统计当前在线玩家数和已准备玩家数
execute store result score #online_total player_count run execute if entity @a
execute store result score #ready_total player_count run execute if entity @a[scores={next_round_ready=1}]

#当前所有在线玩家均已准备时开始下一轮
execute if score #online_total player_count = #ready_total player_count if score #online_total player_count matches 1.. run function rfm:round/ready/start
