#设置阶段为1，代表游戏进行中
function rfm:phase/phase1
#新游戏从第0轮准备状态开始；全员准备后round函数会递增为第1轮
scoreboard players set #round round 0
#分配房间
function rfm:room/assign
#入住提示
schedule function rfm:schedule/room_delay 20t
