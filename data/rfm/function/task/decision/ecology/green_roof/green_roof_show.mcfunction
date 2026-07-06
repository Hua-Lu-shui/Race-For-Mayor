tellraw @s {"text":"【生态决策】屋顶绿化","color":"gold","bold":true}
tellraw @s {"text":"环保团体建议推广屋顶绿化，降低热岛效应。物业担心维护成本，商户担心施工影响营业。","color":"white"}
tellraw @s [{"text":"[激进] 强制新建筑绿化","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/green_roof/green_roof_a"}}]
tellraw @s [{"text":"[折中] 补贴自愿改造","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/green_roof/green_roof_b"}}]
tellraw @s [{"text":"[保守] 只做示范项目","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/green_roof/green_roof_c"}}]
