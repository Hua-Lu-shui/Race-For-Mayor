#设置阶段为1，代表游戏进行中
function rfm:phase/phase1
#新游戏从第0轮准备状态开始；全员准备后round函数会递增为第1轮
scoreboard players set #round round 0
#初始化四项属性权重
scoreboard players set #weight fame_weight 10
scoreboard players set #weight economy_weight 10
scoreboard players set #weight welfare_weight 10
scoreboard players set #weight ecology_weight 10
#在侧边栏展示各项权重
scoreboard players operation 名誉 weight_display = #weight fame_weight
scoreboard players operation 经济 weight_display = #weight economy_weight
scoreboard players operation 民生 weight_display = #weight welfare_weight
scoreboard players operation 生态 weight_display = #weight ecology_weight
scoreboard objectives setdisplay sidebar weight_display
#清空上一局的事件抽取记录
scoreboard players set #current event 0
scoreboard players reset * event_used
#分配房间
function rfm:room/assign
#入住提示
schedule function rfm:schedule/room_delay 20t
