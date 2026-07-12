scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】事实核查合作","color":"gold","bold":true}
tellraw @s {"text":"独立媒体提出建立竞选事实核查专区，所有候选人的承诺都会被追踪。参与会增加透明度，也会限制你之后的宣传空间。","color":"white"}
tellraw @s [{"text":"[激进] 主动加入并公开数据","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 只公开核心承诺","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 暂不加入平台","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
