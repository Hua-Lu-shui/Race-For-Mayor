tellraw @s {"text":"【民生决策】公共球场","color":"gold","bold":true}
tellraw @s {"text":"居民希望开放更多运动场地，学校和单位担心管理成本和安全责任。","color":"white"}
tellraw @s [{"text":"[激进] 全面开放公共球场","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/sports_field/sports_field_a"}}]
tellraw @s [{"text":"[折中] 预约制开放时段","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/sports_field/sports_field_b"}}]
tellraw @s [{"text":"[保守] 维持现状","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/sports_field/sports_field_c"}}]
