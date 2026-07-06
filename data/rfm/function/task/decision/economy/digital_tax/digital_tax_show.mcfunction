tellraw @s {"text":"【经济决策】数字税务","color":"gold","bold":true}
tellraw @s {"text":"财政部门想上线数字税务系统，减少偷漏税并提高效率。商户担心操作复杂和隐私问题。","color":"white"}
tellraw @s [{"text":"[激进] 全面上线系统","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/digital_tax/digital_tax_a"}}]
tellraw @s [{"text":"[折中] 先对大商户试点","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/digital_tax/digital_tax_b"}}]
tellraw @s [{"text":"[保守] 继续人工申报","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/digital_tax/digital_tax_c"}}]
