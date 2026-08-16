#只说明游戏名称与规则，不说明背景
title @a times 10 80 20
title @a title [{"text":"令牌争夺","color":"#C6A8FF","bold":true},{"text":"：见缝插针","color":"light_purple","bold":true}]
title @a subtitle [{"text":"借助漂浮效果穿过障碍，抢先升至终点","color":"white"}]
tellraw @a [{"text":"【令牌争夺】","color":"#C6A8FF","bold":true},{"text":"见缝插针","color":"light_purple","bold":true}]
tellraw @a [{"text":"【游戏规则】","color":"#67D5FF","bold":true},{"text":"所有玩家从同一起点出发。游戏开始后会获得漂浮效果，请在上升途中穿过障碍并抵达顶部终点；越早抵达的玩家排名越高。","color":"white"}]
tellraw @a [{"text":"【排名奖励】","color":"#FFD166","bold":true},{"text":"排名越高，越先进入","color":"white"},{"text":"令牌屋","color":"#C6A8FF"},{"text":"挑选令牌。","color":"white"}]
item replace entity @a hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备开始","color":"#C6A8FF","bold":true,"italic":false}',minecraft:lore=['{"text":"全员准备后开始小游戏","color":"gray","italic":false}'],minecraft:custom_data={collective_start_ready:1}] 1
