#倒计时与Bossbar
scoreboard players remove #group_time group_time 1
execute store result bossbar rfm:needle_time value run scoreboard players get #group_time group_time

#占位终点检测盒：左下角(-5,150,-5)，范围向+X/+Y/+Z延伸10/20/10格
#建好场地后修改x/y/z与dx/dy/dz，使检测盒完整覆盖顶部终点区域
execute as @a[scores={group_finished=0}] if entity @s[x=-5,y=150,z=-5,dx=10,dy=20,dz=10] run function rfm:collective/game/needle_gap/finish_player

#全部完成时立即结算；5分钟到时则让未完赛玩家以0分进入末位排名
execute if score #group_state group_state matches 1 unless entity @a[scores={group_finished=0}] run function rfm:collective/finish
execute if score #group_state group_state matches 1 if score #group_time group_time matches ..0 run function rfm:collective/game/needle_gap/timeout
