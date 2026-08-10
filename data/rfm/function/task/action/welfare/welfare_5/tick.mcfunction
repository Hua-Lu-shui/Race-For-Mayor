#推进30秒倒计时
scoreboard players remove @s cooking_time 1
execute store result bossbar rfm:cooking_time value run scoreboard players get @s cooking_time

#读取土豆点击面上的左右键记录
execute as @e[type=minecraft:interaction,tag=rfm_cooking_interaction,limit=1] at @s if data entity @s interaction run function rfm:task/action/welfare/welfare_5/handle_right_click
execute as @e[type=minecraft:interaction,tag=rfm_cooking_interaction,limit=1] at @s if data entity @s attack run function rfm:task/action/welfare/welfare_5/handle_left_click

execute if score @s cooking_state matches 1 if score @s cooking_time matches ..0 run function rfm:task/action/welfare/welfare_5/result
