#冲过终点并进入结算
scoreboard players set @s fitness_checkpoint 5
bossbar set rfm:fitness_time name [{"text":"","font":"minecraft:default"},{"text":"\uE219","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE227","font":"rfm:bossbar"},{"text":"全民健身挑战  ·  检查点 ","color":"red"},{"score":{"name":"@s","objective":"fitness_checkpoint"},"color":"yellow"},{"text":" / 5","color":"red"}]
function rfm:task/action/welfare/welfare_2/result
