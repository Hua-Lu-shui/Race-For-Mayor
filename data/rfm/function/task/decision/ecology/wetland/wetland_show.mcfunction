tellraw @s {"text":"【生态决策】湿地保护","color":"gold","bold":true}
tellraw @s {"text":"城郊湿地被开发商看中，居民也希望保留自然空间。保护湿地会限制开发收益。","color":"white"}
tellraw @s [{"text":"[激进] 划为永久保护区","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/wetland/wetland_a"}}]
tellraw @s [{"text":"[折中] 保护核心区","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/wetland/wetland_b"}}]
tellraw @s [{"text":"[保守] 允许低密度开发","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/wetland/wetland_c"}}]
