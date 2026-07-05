tellraw @s {"text":"【生态决策】垃圾分类","color":"gold","bold":true}
tellraw @s {"text":"城市垃圾处理压力上升，环保组织要求推行严格分类制度。物业和居民担心执行太复杂，短期内会增加管理成本和抱怨。你需要决定推进方式。","color":"white"}

tellraw @s [{"text":"[激进] 立刻全城强制分类","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/trash/trash_a"}}]

tellraw @s [{"text":"[折中] 先在重点社区试点","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/trash/trash_b"}}]

tellraw @s [{"text":"[保守] 只做宣传暂不处罚","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/trash/trash_c"}}]
