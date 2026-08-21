execute unless score #session_online game_session = #session_size game_session run schedule function rfm:ending/next_player 20t replace
execute unless score #session_online game_session = #session_size game_session run return 0
#清除上一名候选人的统计标记，并寻找下一个已分配房间
tag @a[tag=rfm_participant] remove rfm_settling
scoreboard players add #settle_room settle_room 1
execute if score #settle_room settle_room matches 9.. run return run function rfm:ending/finish

scoreboard players set #room_found settle_value 0
execute as @a[tag=rfm_participant] if score @s room = #settle_room settle_room run function rfm:ending/begin_player

#房间无人占用时继续检查下一个编号
execute if score #room_found settle_value matches 0 run function rfm:ending/next_player
