#执行attribute函数对应的游戏流程
#创建四个属性计分板
scoreboard objectives add fame dummy "名誉"
scoreboard objectives add economy dummy "经济"
scoreboard objectives add welfare dummy "民生"
scoreboard objectives add ecology dummy "生态"
#创建候选人类型
scoreboard objectives add candidate dummy
#创建身份队伍，用于在Tab列表玩家名前显示身份
team add star
team modify star prefix {"text":"[明星] ","color":"aqua"}
team add business
team modify business prefix {"text":"[企业家] ","color":"yellow"}
team add community
team modify community prefix {"text":"[社区领袖] ","color":"red"}
team add scholar
team modify scholar prefix {"text":"[学者] ","color":"green"}
team add official
team modify official prefix {"text":"[公务员] ","color":"light_purple"}

