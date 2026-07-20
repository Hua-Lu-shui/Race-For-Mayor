#在领先者公布完毕后介绍集体行动
title @a times 10 80 20
title @a title {"text":"集体行动：城市议题响应赛","color":"gold","bold":true}
title @a subtitle {"text":"抢先抵达正确的属性区域，争夺更高排名","color":"yellow"}
tellraw @a {"text":"【集体行动】城市议题响应赛","color":"gold","bold":true}
tellraw @a [{"text":"【行动背景】","color":"gold","bold":true},{"text":"城市接连出现需要立即处理的议题。所有候选人必须判断议题所属方向，并尽快赶到对应响应区。","color":"white"}]
tellraw @a [{"text":"【行动规则】","color":"aqua","bold":true},{"text":"共进行8次响应。每次抵达正确区域的前五名依次获得5、4、3、2、1分；走错区域会扣1分并返回中心。最终按总分排名，同分随机决定先后。","color":"white"}]
tellraw @a [{"text":"【排名奖励】","color":"light_purple","bold":true},{"text":"排名越高，越先进入道具屋挑选道具。其他候选人将在等待屋等候。","color":"white"}]
schedule function rfm:collective/start 120t replace
