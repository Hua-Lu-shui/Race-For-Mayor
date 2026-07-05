tellraw @s {"text":"【生态决策】工厂排放","color":"gold","bold":true}
tellraw @s {"text":"工业区附近居民投诉空气异味，环保部门检测到部分企业排放接近上限。企业代表表示如果立刻整改，生产和就业都会受到影响。你需要决定监管力度。","color":"white"}

tellraw @s [{"text":"[激进] 立即停产整顿高排放工厂","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/factory/factory_a"}}]

tellraw @s [{"text":"[折中] 限期整改并提供设备补助","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/factory/factory_b"}}]

tellraw @s [{"text":"[保守] 暂不处罚，先口头警告","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/factory/factory_c"}}]
