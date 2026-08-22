#只说明游戏名称与规则，不说明背景
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title [{"text":"令牌争夺","color":"#C6A8FF","bold":true},{"text":"：奋泳争先","color":"aqua","bold":true}]
title @a[tag=rfm_participant] subtitle [{"text":"抢先按下自己泳道的终点按钮","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"【令牌争夺】","color":"#C6A8FF","bold":true},{"text":"奋泳争先","color":"aqua","bold":true}]
tellraw @a[tag=rfm_participant] [{"text":"【游戏规则】","color":"#67D5FF","bold":true},{"text":"每名玩家从独立起点出发。游到自己泳道末端并按下终点按钮即完成比赛，越早按下按钮的玩家排名越高。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"【排名奖励】","color":"#FFD166","bold":true},{"text":"排名越高，越先进入","color":"white"},{"text":"令牌屋","color":"#C6A8FF"},{"text":"挑选令牌。","color":"white"}]
item replace entity @a[tag=rfm_participant] hotbar.4 with minecraft:paper[minecraft:custom_name='{"text":"准备开始","color":"#C6A8FF","bold":true,"italic":false}',minecraft:lore=['{"text":"全员准备后开始小游戏","color":"gray","italic":false}'],minecraft:custom_data={collective_start_ready:1}] 1
