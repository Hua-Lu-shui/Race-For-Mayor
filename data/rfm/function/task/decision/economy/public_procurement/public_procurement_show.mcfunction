tellraw @s {"text":"【经济决策】政府采购","color":"gold","bold":true}
tellraw @s {"text":"市政采购即将更新规则。选择本地企业能保护就业，公开竞价能降低成本，但两者很难完全兼得。","color":"white"}
tellraw @s [{"text":"[激进] 优先本地企业","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/public_procurement/public_procurement_a"}}]
tellraw @s [{"text":"[折中] 本地加分公开竞价","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/public_procurement/public_procurement_b"}}]
tellraw @s [{"text":"[保守] 完全最低价中标","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/public_procurement/public_procurement_c"}}]
