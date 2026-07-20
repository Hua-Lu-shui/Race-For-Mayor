#推进60秒倒计时
scoreboard players remove @s manhole_time 1
execute store result bossbar rfm:manhole_time value run scoreboard players get @s manhole_time

#读取井盖交互实体上的左右点击记录
execute as @e[type=minecraft:interaction,tag=rfm_manhole_interaction] at @s if data entity @s interaction run function rfm:task/action/welfare/welfare_5/handle_right_click
execute as @e[type=minecraft:interaction,tag=rfm_manhole_interaction] at @s if data entity @s attack run function rfm:task/action/welfare/welfare_5/handle_left_click

execute if score @s manhole_state matches 1 if score @s manhole_time matches ..0 run function rfm:task/action/welfare/welfare_5/result
