#第3、4回合公示后保留现有神秘人，只为每名玩家刷新一件与上回合不同的藏品
execute as @a[tag=rfm_participant] run function rfm:collection/mysterious/refresh_one
tellraw @a[tag=rfm_participant] [{"text":"神秘人仍在办公室等候。","color":"dark_purple","bold":true}]
