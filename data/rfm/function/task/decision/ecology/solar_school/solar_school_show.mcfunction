tellraw @s {"text":"【生态决策】校园光伏","color":"gold","bold":true}
tellraw @s {"text":"教育部门想在学校屋顶安装光伏板，既节能又有教育意义。但建设成本较高。","color":"white"}
tellraw @s [{"text":"[激进] 全市学校铺设光伏","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/solar_school/solar_school_a"}}]
tellraw @s [{"text":"[折中] 先选十所学校试点","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/solar_school/solar_school_b"}}]
tellraw @s [{"text":"[保守] 暂只做节能宣传","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/solar_school/solar_school_c"}}]
