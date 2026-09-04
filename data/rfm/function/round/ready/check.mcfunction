execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}] on origin if entity @s[tag=rfm_participant,scores={next_round_ready=0}] run function rfm:round/ready/player_ready

kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]

execute store result score #online_total player_count run execute if entity @a[tag=rfm_participant]
execute store result score #ready_total player_count run execute if entity @a[tag=rfm_participant,scores={next_round_ready=1}]

execute if score #session_online game_session = #session_size game_session if score #online_total player_count = #ready_total player_count if score #online_total player_count matches 1.. run function rfm:round/ready/start
