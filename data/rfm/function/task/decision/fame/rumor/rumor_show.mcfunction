scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】谣言回应","color":"gold","bold":true}
tellraw @s {"text":"网络上出现关于你的负面传闻，部分市民开始质疑你的立场。团队建议尽快回应，但回应方式不同，可能带来完全不同的舆论效果。","color":"white"}
tellraw @s [{"text":"[激进] 公开点名反击造谣者","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 发布证据并平静说明","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 暂时不回应等待降温","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]