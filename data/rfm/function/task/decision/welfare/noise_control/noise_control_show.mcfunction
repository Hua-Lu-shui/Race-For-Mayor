tellraw @s {"text":"【民生决策】夜间噪音","color":"gold","bold":true}
tellraw @s {"text":"商业街夜间营业带来消费，也让附近居民长期投诉噪音。你需要平衡生活质量和夜间经济。","color":"white"}
tellraw @s [{"text":"[激进] 严格限制夜间营业","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/noise_control/noise_control_a"}}]
tellraw @s [{"text":"[折中] 限定噪音和营业时段","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/noise_control/noise_control_b"}}]
tellraw @s [{"text":"[保守] 优先保障商户经营","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/noise_control/noise_control_c"}}]
