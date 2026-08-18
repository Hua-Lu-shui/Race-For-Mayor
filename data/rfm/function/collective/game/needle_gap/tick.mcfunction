#倒计时与Bossbar
scoreboard players remove #group_time group_time 1
execute store result bossbar rfm:needle_time value run scoreboard players get #group_time group_time

#玩家到达Y=56或更高的位置时完成比赛
execute as @a[scores={group_finished=0}] at @s if entity @s[y=56,dy=264] run function rfm:collective/game/needle_gap/finish_player

#全部完成时立即结算；5分钟到时则让未完赛玩家以0分进入末位排名
execute if score #group_state group_state matches 1 unless entity @a[scores={group_finished=0}] run function rfm:collective/finish
execute if score #group_state group_state matches 1 if score #group_time group_time matches ..0 run function rfm:collective/game/needle_gap/timeout
