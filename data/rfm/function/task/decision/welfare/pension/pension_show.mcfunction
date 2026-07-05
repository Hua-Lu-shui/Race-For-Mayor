tellraw @s {"text":"【民生决策】养老服务","color":"gold","bold":true}
tellraw @s {"text":"城市老年人口增加，许多家庭希望政府提供更多养老服务。民政部门提出建设日间照料中心，但财政压力和运营人员缺口都很现实。你需要决定养老政策。","color":"white"}

tellraw @s [{"text":"[激进] 建设社区养老中心","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/pension/pension_a"}}]

tellraw @s [{"text":"[折中] 发放居家养老服务券","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/pension/pension_b"}}]

tellraw @s [{"text":"[保守] 鼓励家庭和社会组织承担","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/pension/pension_c"}}]
