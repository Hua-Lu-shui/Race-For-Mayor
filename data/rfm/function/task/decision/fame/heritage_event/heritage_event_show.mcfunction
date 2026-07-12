scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】城市记忆活动","color":"gold","bold":true}
tellraw @s {"text":"老城区居民希望举办城市记忆展，展示社区历史和老建筑故事。活动能凝聚认同，但需要预算和组织。","color":"white"}
tellraw @s [{"text":"[激进] 办大型城市记忆节","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 办社区巡回小展","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 只支持民间自办","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
