tellraw @s {"text":"【生态决策】生态巡查队","color":"gold","bold":true}
tellraw @s {"text":"郊区偷倒垃圾和违规采砂时有发生。建立巡查队能压制破坏行为，但需要人力和经费。","color":"white"}
tellraw @s [{"text":"[激进] 组建专职巡查队","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/eco_patrol/eco_patrol_a"}}]
tellraw @s [{"text":"[折中] 联合社区志愿巡查","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/eco_patrol/eco_patrol_b"}}]
tellraw @s [{"text":"[保守] 只接受举报处理","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/eco_patrol/eco_patrol_c"}}]
