#结束动作展示，允许玩家开始踩踏板
scoreboard players set @s exercise_state 1
scoreboard players set @s exercise_input 0
scoreboard players set @s exercise_answer 0
scoreboard players set @s exercise_target 0
scoreboard players set @s exercise_armed 1
title @a clear
title @a title [{"text":"请开始","color":"white"},{"text":"领操","color":"#67D5FF","bold":true},{"text":"！","color":"white"}]
title @s actionbar [{"text":"按刚才的顺序","color":"white"},{"text":"踩踏板","color":"#67D5FF","bold":true},{"text":"；每次踩完先离开踏板","color":"white"}]
bossbar set rfm:exercise_time name [{"text":"","font":"minecraft:default"},{"text":"\uE222","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE21E","font":"rfm:bossbar"},{"text":"课间操领队  ·  第 ","color":"red"},{"score":{"name":"@s","objective":"exercise_round"},"color":"yellow"},{"text":" / 3 轮  ·  已输入 ","color":"red"},{"score":{"name":"@s","objective":"exercise_input"},"color":"white"},{"text":" / ","color":"red"},{"score":{"name":"@s","objective":"exercise_length"},"color":"white"}]
