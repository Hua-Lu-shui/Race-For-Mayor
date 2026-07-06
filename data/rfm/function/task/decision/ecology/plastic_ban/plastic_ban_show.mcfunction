tellraw @s {"text":"【生态决策】限塑令","color":"gold","bold":true}
tellraw @s {"text":"市场和餐饮店一次性塑料使用量很高。限塑能减少污染，但商户和顾客短期会不适应。","color":"white"}
tellraw @s [{"text":"[激进] 立即全面禁塑","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/plastic_ban/plastic_ban_a"}}]
tellraw @s [{"text":"[折中] 分阶段限制使用","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/plastic_ban/plastic_ban_b"}}]
tellraw @s [{"text":"[保守] 只倡导自愿减量","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/plastic_ban/plastic_ban_c"}}]
