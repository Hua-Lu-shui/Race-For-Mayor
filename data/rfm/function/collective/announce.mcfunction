#玩家抵达小游戏场地后介绍背景与规则，并等待全员丢出“准备开始”地图
title @a times 10 80 20
title @a title [{"text":"令牌争夺","color":"#C6A8FF","bold":true},{"text":"：城市议题响应赛","color":"white"}]
title @a subtitle [{"text":"抢先抵达","color":"white"},{"text":"正确的属性区域","color":"#FFD166","bold":true},{"text":"，争夺更高排名","color":"white"}]
tellraw @a [{"text":"【令牌争夺】","color":"#C6A8FF","bold":true},{"text":"城市议题响应赛","color":"white"}]
tellraw @a [{"text":"【行动背景】","color":"#67D5FF","bold":true},{"text":"城市接连出现需要立即处理的议题。所有候选人必须判断议题所属方向，并尽快赶到对应响应区。","color":"white"}]
tellraw @a [{"text":"【行动规则】","color":"#67D5FF","bold":true},{"text":"共进行","color":"white"},{"text":"8次响应","color":"#FFCB77"},{"text":"。每次抵达正确区域的前五名依次获得5、4、3、2、1分；走错区域会扣1分并返回中心。","color":"white"},{"text":"最终按总分排名","color":"#FFD166","bold":true},{"text":"，同分随机决定先后。","color":"white"}]
tellraw @a [{"text":"【排名奖励】","color":"#FFD166","bold":true},{"text":"排名越高，越先进入","color":"white"},{"text":"令牌屋","color":"#C6A8FF"},{"text":"挑选","color":"white"},{"text":"令牌","color":"#C6A8FF"},{"text":"。其他候选人将在等待屋等候。","color":"white"}]
item replace entity @a hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备开始","color":"#C6A8FF","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出；全员准备后开始小游戏","color":"gray","italic":false}'],minecraft:custom_data={collective_start_ready:1}] 1
