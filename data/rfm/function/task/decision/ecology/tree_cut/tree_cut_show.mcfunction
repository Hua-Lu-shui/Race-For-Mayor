tellraw @s {"text":"【生态决策】行道树更换","color":"gold","bold":true}
tellraw @s {"text":"部分老树影响道路和管线安全，园林部门建议更换。居民担心城市绿荫减少。","color":"white"}
tellraw @s [{"text":"[激进] 保树并调整道路","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/tree_cut/tree_cut_a"}}]
tellraw @s [{"text":"[折中] 分批更换并补种","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/tree_cut/tree_cut_b"}}]
tellraw @s [{"text":"[保守] 快速砍伐重铺道路","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/tree_cut/tree_cut_c"}}]
