#只有玩家丢出过纸，并且附近存在“准备下一轮”专用纸条时才算准备完成
#任务开始使用的emission_ready和sample_ready纸条不会通过此检查
execute as @a[scores={next_round_ready=0,next_round_drop=1..}] at @s if entity @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}] run function rfm:round/ready/player_ready

#所有玩家的准备状态判断完成后，再统一删除地上的下一轮准备纸条
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]

#统计当前在线玩家数和已准备玩家数
execute store result score #online_total player_count run execute if entity @a
execute store result score #ready_total player_count run execute if entity @a[scores={next_round_ready=1}]

#当前所有在线玩家均已准备时开始下一轮
execute if score #online_total player_count = #ready_total player_count if score #online_total player_count matches 1.. run function rfm:round/ready/start
