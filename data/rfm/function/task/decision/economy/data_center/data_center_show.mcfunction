#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【经济决策】数据中心落户","color":"gold","bold":true}
tellraw @s {"text":"一家云计算企业计划建设大型数据中心，承诺带来税收和技术岗位，但机房将长期消耗大量电力与冷却水。","color":"white"}
tellraw @s [{"text":"[激进] 划出园区快速落地","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 先建小型节能示范机房","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 拒绝高能耗项目","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
