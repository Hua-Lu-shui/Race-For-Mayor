#执行attribute函数对应的游戏流程
#创建四个属性计分板
scoreboard objectives add fame dummy "名誉"
scoreboard objectives add economy dummy "经济"
scoreboard objectives add welfare dummy "民生"
scoreboard objectives add ecology dummy "生态"
#角色能力使用的回合快照、比较值与触发标记
scoreboard objectives add ability_fame dummy
scoreboard objectives add ability_economy dummy
scoreboard objectives add ability_welfare dummy
scoreboard objectives add ability_ecology dummy
scoreboard objectives add ability_min dummy
scoreboard objectives add ability_max dummy
scoreboard objectives add ability_trigger dummy
#属性变化动画：记录旧值、差值和播放状态
scoreboard objectives add fame_last dummy
scoreboard objectives add econ_last dummy
scoreboard objectives add welfare_last dummy
scoreboard objectives add eco_last dummy
scoreboard objectives add fame_delta dummy
scoreboard objectives add econ_delta dummy
scoreboard objectives add welfare_delta dummy
scoreboard objectives add eco_delta dummy
scoreboard objectives add attr_probe dummy
scoreboard objectives add attr_changed dummy
scoreboard objectives add attr_anim dummy
scoreboard objectives add attr_flash dummy
scoreboard objectives add attr_seen dummy
#属性锁定状态与锁定值
scoreboard objectives add fame_lock dummy
scoreboard objectives add economy_lock dummy
scoreboard objectives add welfare_lock dummy
scoreboard objectives add ecology_lock dummy
scoreboard objectives add fame_locked dummy
scoreboard objectives add economy_locked dummy
scoreboard objectives add welfare_locked dummy
scoreboard objectives add ecology_locked dummy
#动作栏使用分离计分板，让未锁定数值显示白色、锁定数值显示黑色
scoreboard objectives add fame_show dummy
scoreboard objectives add econ_show dummy
scoreboard objectives add welfare_show dummy
scoreboard objectives add eco_show dummy
scoreboard objectives add fame_lshow dummy
scoreboard objectives add econ_lshow dummy
scoreboard objectives add welfare_lshow dummy
scoreboard objectives add eco_lshow dummy
#创建四个属性权重计分板
scoreboard objectives add fame_weight dummy "名誉权重"
scoreboard objectives add economy_weight dummy "经济权重"
scoreboard objectives add welfare_weight dummy "民生权重"
scoreboard objectives add ecology_weight dummy "生态权重"
#创建侧边栏权重显示计分板
scoreboard objectives add weight_display dummy {"text":"✦ 属性权重 ✦","color":"gold","bold":true}
scoreboard objectives modify weight_display numberformat styled {"color":"white","bold":true}
#设置侧边栏四项权重的名称样式
team add weight_fame
team modify weight_fame color aqua
team modify weight_fame prefix {"text":"◆ ","color":"aqua"}
team join weight_fame 名誉
team add weight_economy
team modify weight_economy color yellow
team modify weight_economy prefix {"text":"◆ ","color":"yellow"}
team join weight_economy 经济
team add weight_welfare
team modify weight_welfare color red
team modify weight_welfare prefix {"text":"◆ ","color":"red"}
team join weight_welfare 民生
team add weight_ecology
team modify weight_ecology color green
team modify weight_ecology prefix {"text":"◆ ","color":"green"}
team join weight_ecology 生态
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

