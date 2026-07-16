#重置决策属性选择计分板
scoreboard players set @s attribute_choice 0

#从四种属性中随机隐藏一种，剩下三种给玩家选择
execute store result score @s attribute_missing run random value 1..4

scoreboard players set @s attribute_option_1 0
scoreboard players set @s attribute_option_2 0
scoreboard players set @s attribute_option_3 0

execute if score @s attribute_missing matches 1 run scoreboard players set @s attribute_option_1 2
execute if score @s attribute_missing matches 1 run scoreboard players set @s attribute_option_2 3
execute if score @s attribute_missing matches 1 run scoreboard players set @s attribute_option_3 4

execute if score @s attribute_missing matches 2 run scoreboard players set @s attribute_option_1 1
execute if score @s attribute_missing matches 2 run scoreboard players set @s attribute_option_2 3
execute if score @s attribute_missing matches 2 run scoreboard players set @s attribute_option_3 4

execute if score @s attribute_missing matches 3 run scoreboard players set @s attribute_option_1 1
execute if score @s attribute_missing matches 3 run scoreboard players set @s attribute_option_2 2
execute if score @s attribute_missing matches 3 run scoreboard players set @s attribute_option_3 4

execute if score @s attribute_missing matches 4 run scoreboard players set @s attribute_option_1 1
execute if score @s attribute_missing matches 4 run scoreboard players set @s attribute_option_2 2
execute if score @s attribute_missing matches 4 run scoreboard players set @s attribute_option_3 3

#允许玩家改变属性选择计分板
scoreboard players enable @s attribute_choice
#提示选择任务类型
tellraw @s {"text":"请选择本轮决策任务方向：","color":"yellow","bold":true}

execute unless score @s attribute_missing matches 1 run tellraw @s [{"text":"[名誉]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger attribute_choice set 1"}},{"text":"  影响公众形象、媒体评价、竞选声望","color":"gray"}]

execute unless score @s attribute_missing matches 2 run tellraw @s [{"text":"[经济]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger attribute_choice set 2"}},{"text":"  影响财政、商业、就业和城市发展","color":"gray"}]

execute unless score @s attribute_missing matches 3 run tellraw @s [{"text":"[民生]","color":"red","clickEvent":{"action":"run_command","value":"/trigger attribute_choice set 3"}},{"text":"  影响公共服务、住房、教育和生活保障","color":"gray"}]

execute unless score @s attribute_missing matches 4 run tellraw @s [{"text":"[生态]","color":"green","clickEvent":{"action":"run_command","value":"/trigger attribute_choice set 4"}},{"text":"  影响环境、污染治理和城市宜居度","color":"gray"}]
