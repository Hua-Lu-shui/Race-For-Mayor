tellraw @s {"text":"【民生决策】托育服务","color":"gold","bold":true}
tellraw @s {"text":"年轻家庭反映托育资源不足，影响工作和生活。扩大托育能改善民生，但需要场地和人员。","color":"white"}
tellraw @s [{"text":"[激进] 建设公共托育中心","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/childcare/childcare_a"}}]
tellraw @s [{"text":"[折中] 补贴社区托育点","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/childcare/childcare_b"}}]
tellraw @s [{"text":"[保守] 鼓励企业自办","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/childcare/childcare_c"}}]
