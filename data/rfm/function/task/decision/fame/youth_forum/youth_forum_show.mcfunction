tellraw @s {"text":"【名誉决策】青年论坛","color":"gold","bold":true}
tellraw @s {"text":"青年选民组织了一场公开论坛，话题集中在就业、住房和城市文化。论坛表现会影响年轻群体对你的印象。","color":"white"}
tellraw @s [{"text":"[激进] 提出完整青年计划","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/youth_forum/youth_forum_a"}}]
tellraw @s [{"text":"[折中] 承诺试点项目","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/youth_forum/youth_forum_b"}}]
tellraw @s [{"text":"[保守] 只参加合影交流","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/youth_forum/youth_forum_c"}}]
