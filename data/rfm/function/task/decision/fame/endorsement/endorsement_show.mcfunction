scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】名人背书","color":"gold","bold":true}
tellraw @s {"text":"一位本地知名企业家愿意公开支持你，但他的商业争议还没有完全平息。接受背书能扩大声量，也会带来质疑。","color":"white"}
tellraw @s [{"text":"[激进] 高调同台造势","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 只接受政策交流","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 婉拒公开背书","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
