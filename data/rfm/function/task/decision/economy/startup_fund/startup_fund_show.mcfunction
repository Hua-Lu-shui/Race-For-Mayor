tellraw @s {"text":"【经济决策】创业基金","color":"gold","bold":true}
tellraw @s {"text":"本地小企业协会申请设立创业扶持基金，用于店铺升级和新项目启动。财政压力不小，但能带动商业活力。","color":"white"}
tellraw @s [{"text":"[激进] 设立大额基金","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/startup_fund/startup_fund_a"}}]
tellraw @s [{"text":"[折中] 小额分批扶持","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/startup_fund/startup_fund_b"}}]
tellraw @s [{"text":"[保守] 改为贷款担保","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/startup_fund/startup_fund_c"}}]
