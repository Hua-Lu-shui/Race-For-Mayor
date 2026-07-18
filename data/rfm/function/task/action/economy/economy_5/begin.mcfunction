#启动经济行动任务5
scoreboard players set @s employment_completed 0
scoreboard players set @s employment_time 600
scoreboard players set @s employment_state 1

bossbar set rfm:employment_time players @a
bossbar set rfm:employment_time max 600
bossbar set rfm:employment_time value 600
bossbar set rfm:employment_time name {"text":"就业走访","color":"yellow"}
bossbar set rfm:employment_time visible true

tellraw @a {"text":"求职登记表现在可以领取。查看技能和工作条件，将五份登记表分别扔到合适的招聘村民脚边！","color":"white"}
