#结束动作展示，允许玩家开始踩踏板
scoreboard players set @s exercise_state 1
scoreboard players set @s exercise_input 0
scoreboard players set @s exercise_answer 0
scoreboard players set @s exercise_target 0
scoreboard players set @s exercise_armed 1
title @a[tag=rfm_participant] clear
title @a[tag=rfm_participant] title {"translate":"rfm.text.79cc871ca992","color":"red","bold":true}
title @s actionbar [{"translate":"rfm.text.1fac2a88210d","color":"white"},{"translate":"rfm.text.14c12aa97294","color":"#67D5FF","bold":true},{"translate":"rfm.text.d1ac9610ece3","color":"white"}]
bossbar set rfm:exercise_time name [{"translate":"rfm.text.22999089974d","color":"red"},{"score":{"name":"@s","objective":"exercise_round"},"color":"yellow"},{"translate":"rfm.text.a624453a03d0","color":"red"},{"score":{"name":"@s","objective":"exercise_input"},"color":"white"},{"text":" / ","color":"red"},{"score":{"name":"@s","objective":"exercise_length"},"color":"white"}]
