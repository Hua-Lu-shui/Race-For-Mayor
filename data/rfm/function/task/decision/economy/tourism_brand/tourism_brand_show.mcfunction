tellraw @s {"text":"【经济决策】旅游品牌","color":"gold","bold":true}
tellraw @s {"text":"文旅部门建议打造城市旅游品牌，投入广告、活动和景点包装。短期花钱较多，但可能带来长期消费。","color":"white"}
tellraw @s [{"text":"[激进] 全面投放旅游广告","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/tourism_brand/tourism_brand_a"}}]
tellraw @s [{"text":"[折中] 主推周末短途游","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/tourism_brand/tourism_brand_b"}}]
tellraw @s [{"text":"[保守] 只维护现有景点","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/tourism_brand/tourism_brand_c"}}]
