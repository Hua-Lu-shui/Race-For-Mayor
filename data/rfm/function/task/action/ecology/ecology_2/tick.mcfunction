#减少总时间并同步Bossbar
scoreboard players remove @s sample_time 1
execute store result bossbar rfm:sample_time value run scoreboard players get @s sample_time

#当前应取样的水源显示全员可见的绿色粒子
execute if score @s sample_progress matches 0 run particle minecraft:happy_villager 194 -59 100 0.25 0.25 0.25 0.02 3 force @a
execute if score @s sample_progress matches 1 run particle minecraft:happy_villager 198 -59 100 0.25 0.25 0.25 0.02 3 force @a
execute if score @s sample_progress matches 2 run particle minecraft:happy_villager 202 -59 100 0.25 0.25 0.25 0.02 3 force @a
execute if score @s sample_progress matches 3 run particle minecraft:happy_villager 206 -59 100 0.25 0.25 0.25 0.02 3 force @a
execute if score @s sample_progress matches 4 run particle minecraft:happy_villager 210 -59 100 0.25 0.25 0.25 0.02 3 force @a
execute if score @s sample_progress matches 5 run particle minecraft:happy_villager 214 -59 100 0.25 0.25 0.25 0.02 3 force @a

#在正确取样点附近获得水瓶后完成该点
execute if score @s sample_progress matches 0 positioned 194 -60 100 if entity @s[distance=..2] if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run function rfm:task/action/ecology/ecology_2/sample
execute if score @s sample_progress matches 1 positioned 198 -60 100 if entity @s[distance=..2] if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run function rfm:task/action/ecology/ecology_2/sample
execute if score @s sample_progress matches 2 positioned 202 -60 100 if entity @s[distance=..2] if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run function rfm:task/action/ecology/ecology_2/sample
execute if score @s sample_progress matches 3 positioned 206 -60 100 if entity @s[distance=..2] if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run function rfm:task/action/ecology/ecology_2/sample
execute if score @s sample_progress matches 4 positioned 210 -60 100 if entity @s[distance=..2] if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run function rfm:task/action/ecology/ecology_2/sample
execute if score @s sample_progress matches 5 positioned 214 -60 100 if entity @s[distance=..2] if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run function rfm:task/action/ecology/ecology_2/sample

execute if score @s sample_state matches 1 if score @s sample_time matches ..0 run function rfm:task/action/ecology/ecology_2/result
