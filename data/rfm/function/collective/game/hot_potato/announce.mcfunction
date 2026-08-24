title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title [{"text":"令牌争夺","color":"#C6A8FF","bold":true},{"text":"：击鼓传花","color":"yellow","bold":true}]
title @a[tag=rfm_participant] subtitle {"text":"音乐停止时，持有滨菊的玩家淘汰","color":"white"}
tellraw @a[tag=rfm_participant] [{"text":"【令牌争夺】","color":"#C6A8FF","bold":true},{"text":"击鼓传花","color":"yellow","bold":true}]
tellraw @a[tag=rfm_participant] [{"text":"【游戏规则】","color":"#67D5FF","bold":true},{"text":"游戏开始后，一名随机玩家会获得滨菊。手持滨菊右键其他玩家即可传递；音乐会在随机时刻停止，此时持花者淘汰。任何玩家连续持花超过3秒也会立即淘汰。每次淘汰后重新随机发花，直至决出第一名。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"【排名奖励】","color":"#FFD166","bold":true},{"text":"越晚淘汰，排名越高；第一名最先进入","color":"white"},{"text":"令牌屋","color":"#C6A8FF"},{"text":"挑选令牌。","color":"white"}]
item replace entity @a[tag=rfm_participant] hotbar.4 with minecraft:paper[minecraft:custom_name='{"text":"准备开始","color":"#C6A8FF","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出；全员准备后开始小游戏","color":"gray","italic":false}'],minecraft:custom_data={collective_start_ready:1}] 1
