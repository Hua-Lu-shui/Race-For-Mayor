tellraw @s {"text":"【名誉决策】志愿者动员","color":"gold","bold":true}
tellraw @s {"text":"一批大学生志愿者愿意参与社区服务，但他们担心活动被包装成竞选作秀。你需要决定如何组织这次动员。","color":"white"}
tellraw @s [{"text":"[激进] 发动大规模宣传","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/volunteer/volunteer_a"}}]
tellraw @s [{"text":"[折中] 低调安排社区服务","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/volunteer/volunteer_b"}}]
tellraw @s [{"text":"[保守] 暂缓官方介入","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/volunteer/volunteer_c"}}]
