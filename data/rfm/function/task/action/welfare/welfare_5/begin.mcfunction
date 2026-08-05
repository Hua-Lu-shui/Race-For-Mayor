#正式开始井盖安全巡检任务
scoreboard players set @s manhole_selected 0
scoreboard players set @s manhole_pick 0
scoreboard players set @s manhole_repaired 0
scoreboard players set @s manhole_time 1200
scoreboard players set @s manhole_state 1

function rfm:task/action/welfare/welfare_5/select_faults

bossbar set rfm:manhole_time players @a
bossbar set rfm:manhole_time max 1200
bossbar set rfm:manhole_time value 1200
bossbar set rfm:manhole_time name [{"text":"\uE219","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE227","font":"rfm:bossbar"},{"text":"井盖安全巡检  ·  已修复 ","color":"red"},{"score":{"name":"@s","objective":"manhole_repaired"},"color":"yellow"},{"text":" / 6","color":"red"}]
bossbar set rfm:manhole_time visible true
title @a title {"text":"开始巡检！","color":"green","bold":true}
