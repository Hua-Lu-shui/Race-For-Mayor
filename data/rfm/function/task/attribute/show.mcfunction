#设置属性选择计分板为0
scoreboard players set @s attribute_choice 0
#名誉，经济，生态属性选项
scoreboard players set @s attribute_option_1 1
scoreboard players set @s attribute_option_2 2
scoreboard players set @s attribute_option_3 4
#开启属性选择计分板
scoreboard players enable @s attribute_choice
#提示选择任务类型
tellraw @s {"text":"请选择本轮决策任务方向：","color":"yellow","bold":true}

tellraw @s [{"text":"[名誉]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger attribute_choice set 1"}},{"text":"  提升公众形象、媒体评价、竞选声望","color":"gray"}]

tellraw @s [{"text":"[经济]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger attribute_choice set 2"}},{"text":"  影响财政、商业、就业和城市发展","color":"gray"}]

tellraw @s [{"text":"[生态]","color":"green","clickEvent":{"action":"run_command","value":"/trigger attribute_choice set 4"}},{"text":"  影响环境、污染治理和城市宜居度","color":"gray"}]