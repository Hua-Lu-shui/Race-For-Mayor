#重置所有房间的占用状态，0表示空闲，1表示已占用
scoreboard players set #room_1 room 0
scoreboard players set #room_2 room 0
scoreboard players set #room_3 room 0
scoreboard players set #room_4 room 0
scoreboard players set #room_5 room 0
scoreboard players set #room_6 room 0
scoreboard players set #room_7 room 0
scoreboard players set #room_8 room 0
#将所有玩家的房间编号重置为0，确保每局游戏开始时玩家都没有分配到房间
scoreboard players set @a[tag=rfm_participant] room 0
#随机排列玩家，再为每名玩家随机抽取一个空闲房间
execute as @a[tag=rfm_participant,sort=random] run function rfm:room/next
