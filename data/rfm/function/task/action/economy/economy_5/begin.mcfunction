#启动经济行动任务5
scoreboard players set @s employment_completed 0
scoreboard players set @s employment_time 600
scoreboard players set @s employment_state 1

bossbar set rfm:employment_time players @a
bossbar set rfm:employment_time max 600
bossbar set rfm:employment_time value 600
bossbar set rfm:employment_time name [{"text":"","font":"minecraft:default"},{"text":"\uE20C","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE234","font":"rfm:bossbar"},{"text":"就业走访","color":"yellow"}]
bossbar set rfm:employment_time visible true

tellraw @a [{"text":"求职登记表现在可以领取。查看","color":"white"},{"text":"技能和工作条件","color":"#67D5FF","bold":true},{"text":"，将五份登记表分别扔到","color":"white"},{"text":"合适的招聘村民脚边","color":"#FFD166","bold":true},{"text":"！","color":"white"}]
