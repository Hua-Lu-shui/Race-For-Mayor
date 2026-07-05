tellraw @s {"text":"【名誉决策】反腐表态","color":"gold","bold":true}
tellraw @s {"text":"市民对政府采购和工程招标产生质疑，要求候选人公开表态。强硬调查可能赢得信任，也可能影响现有项目推进。","color":"white"}
tellraw @s [{"text":"[激进] 立即全面调查旧项目","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/anti_corruption/anti_corruption_a"}}]
tellraw @s [{"text":"[折中] 建立公开审计制度","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/anti_corruption/anti_corruption_b"}}]
tellraw @s [{"text":"[保守] 先维持项目稳定推进","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/anti_corruption/anti_corruption_c"}}]