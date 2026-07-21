#找出最高最终票数；同票最高的候选人全部保留为获胜者
tag @a remove rfm_settling
tag @a remove rfm_winner
scoreboard players set #best_final final_votes -2147483648
execute as @a if score @s final_votes > #best_final final_votes run scoreboard players operation #best_final final_votes = @s final_votes
execute as @a if score @s final_votes = #best_final final_votes run tag @s add rfm_winner
scoreboard players set #settle_state settle_state 4

title @a times 10 200 40
title @a title [{"text":"统计完成，下一任市长是：","color":"gold","bold":true},{"selector":"@a[tag=rfm_winner]","separator":{"text":"、","color":"yellow"},"color":"yellow","bold":true},{"text":"！","color":"gold","bold":true}]
title @a subtitle {"text":"本局游戏结束","color":"green","bold":true}
tellraw @a [{"text":"统计完成，下一任市长是：","color":"gold","bold":true},{"selector":"@a[tag=rfm_winner]","separator":{"text":"、","color":"yellow"},"color":"yellow","bold":true},{"text":"！本局游戏结束。","color":"gold","bold":true}]
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1.0 0.8
