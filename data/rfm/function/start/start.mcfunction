#设置阶段为1，代表游戏进行中
function rfm:phase/phase1
#分配房间
function rfm:room/assign
#入住提示
schedule function rfm:schedule/room_delay 20t
