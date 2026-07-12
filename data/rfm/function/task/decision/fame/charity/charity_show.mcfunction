scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】公益活动","color":"gold","bold":true}
tellraw @s {"text":"社区组织邀请你参加一场公益活动。活动能拉近你和市民的距离，但投入时间和资源越多，对其他事务的影响也越明显。","color":"white"}
tellraw @s [{"text":"[激进] 举办大型公益宣传周","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 参加社区志愿服务","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 只发表线上支持声明","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]