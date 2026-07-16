#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【民生决策】社区医院","color":"gold","bold":true}
tellraw @s {"text":"老城区居民反映看病排队时间太长，最近的综合医院距离也很远。卫生部门建议增设社区医院，但财政部门担心后续运营压力。你需要决定医疗投入方案。","color":"white"}

tellraw @s [{"text":"[激进] 新建多所社区医院","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"text":"[折中] 改造现有卫生站","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"text":"[保守] 暂缓扩建，优化预约流程","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
