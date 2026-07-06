tellraw @s {"text":"【民生决策】应急避难点","color":"gold","bold":true}
tellraw @s {"text":"暴雨季临近，低洼社区担心临时安置不足。建设避难点会提高安全感，也要占用场地和资金。","color":"white"}
tellraw @s [{"text":"[激进] 快速建设避难点","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/emergency_shelter/emergency_shelter_a"}}]
tellraw @s [{"text":"[折中] 改造学校体育馆","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/emergency_shelter/emergency_shelter_b"}}]
tellraw @s [{"text":"[保守] 只储备应急物资","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/emergency_shelter/emergency_shelter_c"}}]
