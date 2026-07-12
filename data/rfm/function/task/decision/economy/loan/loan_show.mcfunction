scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
#显示任务背景以及选项
tellraw @s {"text":"【经济决策】城市建设借款","color":"gold","bold":true}

tellraw @s {"text":"市政府准备推进一批基础建设项目，但当前财政资金不足。银行愿意提供贷款，市民也期待尽快改善城市基建。你需要决定是否举债推进建设。","color":"white"}

tellraw @s [{"text":"[激进] 大量借款","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"text":"[折中] 小额融资","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"text":"[保守] 不借款","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

