#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【民生决策】殡葬服务收费","color":"gold","bold":true}
tellraw @s {"text":"多户家庭投诉办理丧事时收费项目不透明，又缺少可以比较的基础服务。行业协会担心强行限价会让小型服务点退出。","color":"white"}
tellraw @s [{"text":"[激进] 建立公营一站式殡葬服务","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 统一基础套餐并公开价格","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 仅要求商家自愿公示","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
