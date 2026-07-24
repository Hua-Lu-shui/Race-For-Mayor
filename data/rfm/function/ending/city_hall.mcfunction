#南瓜头遮挡视野期间将所有玩家传送至市政厅，并初始化最终票数侧边栏
tp @a 49 -57 34 0 0
gamemode adventure @a
scoreboard players set @a final_votes 0
scoreboard objectives setdisplay sidebar final_votes
schedule function rfm:ending/start_count 60t replace
