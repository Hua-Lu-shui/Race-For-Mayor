tellraw @s {"text":"【民生决策】无障碍改造","color":"gold","bold":true}
tellraw @s {"text":"残障居民反映公共设施无障碍不足。改造范围越大，公平感越强，但预算压力也越明显。","color":"white"}
tellraw @s [{"text":"[激进] 全面改造公共设施","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/disabled_access/disabled_access_a"}}]
tellraw @s [{"text":"[折中] 优先改造医院车站","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/disabled_access/disabled_access_b"}}]
tellraw @s [{"text":"[保守] 只修复投诉点位","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/disabled_access/disabled_access_c"}}]
