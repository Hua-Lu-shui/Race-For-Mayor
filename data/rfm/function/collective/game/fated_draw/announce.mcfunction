#显示游戏名称与抽签规则
title @a times 10 80 20
title @a title [{"text":"令牌争夺","color":"#C6A8FF","bold":true},{"text":"：命中注定","color":"gold","bold":true}]
title @a subtitle [{"text":"从桌面纸条中抽取自己的最终名次","color":"white"}]
tellraw @a [{"text":"【令牌争夺】","color":"#C6A8FF","bold":true},{"text":"命中注定","color":"gold","bold":true}]
tellraw @a [{"text":"【游戏规则】","color":"#67D5FF","bold":true},{"text":"桌上会按照参赛人数生成等量纸条，每张纸条随机对应一个不重复的名次。抽取一张尚未被抽走的纸条，纸条中的名次就是你的最终排名。","color":"white"}]
tellraw @a [{"text":"【排名奖励】","color":"#FFD166","bold":true},{"text":"抽到的名次越高，越先进入","color":"white"},{"text":"令牌屋","color":"#C6A8FF"},{"text":"挑选令牌。","color":"white"}]
item replace entity @a hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备开始","color":"#C6A8FF","bold":true,"italic":false}',minecraft:lore=['{"text":"全员准备后开始抽签","color":"gray","italic":false}'],minecraft:custom_data={collective_start_ready:1}] 1
