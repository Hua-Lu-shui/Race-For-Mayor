#将头衔影响并入最终票数，并在侧边栏正式显示当前候选人的结果
execute as @a[tag=rfm_settling,limit=1] run scoreboard players operation @s vote_total += @s title_bonus
execute as @a[tag=rfm_settling,limit=1] run scoreboard players operation @s final_votes = @s vote_total
title @a times 5 55 10
title @a title [{"text":"最终票数：","color":"gold","bold":true},{"score":{"name":"@a[tag=rfm_settling,limit=1]","objective":"final_votes"},"color":"yellow","bold":true}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.6 1.0
schedule function rfm:ending/next_player 60t replace
