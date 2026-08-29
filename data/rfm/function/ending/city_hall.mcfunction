execute unless score #session_online game_session = #session_size game_session run schedule function rfm:ending/city_hall 20t replace
execute unless score #session_online game_session = #session_size game_session run return 0
#南瓜头遮挡视野期间将所有玩家传送至市政厅，并初始化最终票数侧边栏
tp @a[tag=rfm_participant] 49 -57 31 180 0
gamemode adventure @a[tag=rfm_participant]
#先删除上一局所有在线及离线玩家的最终票数条目，再只为本局参与者创建条目
scoreboard players reset * final_votes
scoreboard players set @a[tag=rfm_participant] final_votes 0
scoreboard objectives setdisplay sidebar final_votes
schedule function rfm:ending/start_count 60t replace
