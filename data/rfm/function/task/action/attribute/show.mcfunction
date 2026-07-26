scoreboard players set @s action_attribute_choice 0

#从四种属性中随机隐藏一种，剩下三种给行动玩家选择
execute store result score @s action_attribute_missing run random value 1..4
#若该玩家某类五项任务均已抽过，则不随机隐藏其他方向，改为显示所有仍可选的方向
execute if score @s action_used_fame matches 31 run scoreboard players set @s action_attribute_missing 0
execute if score @s action_used_econ matches 31 run scoreboard players set @s action_attribute_missing 0
execute if score @s action_used_welf matches 31 run scoreboard players set @s action_attribute_missing 0
execute if score @s action_used_eco matches 31 run scoreboard players set @s action_attribute_missing 0

scoreboard players set @s action_attribute_option_1 0
scoreboard players set @s action_attribute_option_2 0
scoreboard players set @s action_attribute_option_3 0

execute if score @s action_attribute_missing matches 1 run scoreboard players set @s action_attribute_option_1 2
execute if score @s action_attribute_missing matches 1 run scoreboard players set @s action_attribute_option_2 3
execute if score @s action_attribute_missing matches 1 run scoreboard players set @s action_attribute_option_3 4

execute if score @s action_attribute_missing matches 2 run scoreboard players set @s action_attribute_option_1 1
execute if score @s action_attribute_missing matches 2 run scoreboard players set @s action_attribute_option_2 3
execute if score @s action_attribute_missing matches 2 run scoreboard players set @s action_attribute_option_3 4

execute if score @s action_attribute_missing matches 3 run scoreboard players set @s action_attribute_option_1 1
execute if score @s action_attribute_missing matches 3 run scoreboard players set @s action_attribute_option_2 2
execute if score @s action_attribute_missing matches 3 run scoreboard players set @s action_attribute_option_3 4

execute if score @s action_attribute_missing matches 4 run scoreboard players set @s action_attribute_option_1 1
execute if score @s action_attribute_missing matches 4 run scoreboard players set @s action_attribute_option_2 2
execute if score @s action_attribute_missing matches 4 run scoreboard players set @s action_attribute_option_3 3

#允许玩家改变行动任务属性计分板
scoreboard players enable @s action_attribute_choice
#提示选择任务类型
tellraw @s {"text":"请选择本轮行动任务方向：","color":"gold","bold":true}

execute unless score @s action_attribute_missing matches 1 unless score @s action_used_fame matches 31 run tellraw @s [{"text":"[名誉行动]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger action_attribute_choice set 1"}},{"text":"  需要公开表现、沟通或影响舆论的行动","color":"gray"}]

execute unless score @s action_attribute_missing matches 2 unless score @s action_used_econ matches 31 run tellraw @s [{"text":"[经济行动]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger action_attribute_choice set 2"}},{"text":"  需要跑市场、招商或处理财政资源的行动","color":"gray"}]

execute unless score @s action_attribute_missing matches 3 unless score @s action_used_welf matches 31 run tellraw @s [{"text":"[民生行动]","color":"red","clickEvent":{"action":"run_command","value":"/trigger action_attribute_choice set 3"}},{"text":"  需要服务居民、处理公共事务的行动","color":"gray"}]

execute unless score @s action_attribute_missing matches 4 unless score @s action_used_eco matches 31 run tellraw @s [{"text":"[生态行动]","color":"green","clickEvent":{"action":"run_command","value":"/trigger action_attribute_choice set 4"}},{"text":"  需要环保巡查、治理或绿化建设的行动","color":"gray"}]
