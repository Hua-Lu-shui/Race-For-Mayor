#创建“#next_room”计分板，用于记录下一个房间的编号
scoreboard players set #next_room room 0
#将所有玩家的房间编号重置为0，确保每局游戏开始时玩家都没有分配到房间
scoreboard players set @a room 0
#随机决定玩家入驻房间的顺序来实现随机分配房间的效果
execute as @a[sort=random] run function rfm:room/next