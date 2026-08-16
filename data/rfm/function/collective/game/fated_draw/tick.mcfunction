#抽签倒计时与Bossbar；纸条右键由lottery_pick_1～8进度触发对应抽签函数
scoreboard players remove #group_time group_time 1
execute store result bossbar rfm:lottery_time value run scoreboard players get #group_time group_time
execute if score #group_state group_state matches 1 unless entity @a[scores={group_finished=0}] run function rfm:collective/finish
execute if score #group_state group_state matches 1 if score #group_time group_time matches ..0 run function rfm:collective/game/fated_draw/timeout
