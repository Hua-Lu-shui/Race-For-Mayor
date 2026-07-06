tellraw @s {"text":"【经济决策】职业培训","color":"gold","bold":true}
tellraw @s {"text":"不少工人需要转岗培训，新兴行业也缺技术人员。培训花费财政资金，但能提高就业质量。","color":"white"}
tellraw @s [{"text":"[激进] 免费大规模培训","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/skills_training/skills_training_a"}}]
tellraw @s [{"text":"[折中] 企业和政府分担","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/skills_training/skills_training_b"}}]
tellraw @s [{"text":"[保守] 只提供线上课程","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/skills_training/skills_training_c"}}]
