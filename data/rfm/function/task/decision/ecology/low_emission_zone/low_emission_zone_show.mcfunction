tellraw @s {"text":"【生态决策】低排放区","color":"gold","bold":true}
tellraw @s {"text":"中心城区污染和拥堵问题突出，交通部门建议设立低排放区。政策能改善环境，但会影响部分车辆和商户。","color":"white"}
tellraw @s [{"text":"[激进] 立即设立低排放区","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/low_emission_zone/low_emission_zone_a"}}]
tellraw @s [{"text":"[折中] 高峰期试行限制","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/low_emission_zone/low_emission_zone_b"}}]
tellraw @s [{"text":"[保守] 暂不限制车辆","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/low_emission_zone/low_emission_zone_c"}}]
