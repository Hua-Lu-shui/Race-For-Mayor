#在玩家到达前搭建比赛厨房和料理台
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
function rfm:task/action/welfare/welfare_5/create_scene

#初始化任务状态，等待行动玩家确认准备
scoreboard players set @s cooking_clicks 0
scoreboard players set @s cooking_time 0
scoreboard players set @s cooking_state 2
scoreboard players set @s cooking_delay 0

#其他玩家在厨房上方观战，行动玩家站在料理台前
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 263 -58 -55 180 0
tp @s 263 -58 -67 0 0

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.3c615e874d30","color":"red","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.abc37e4f724b","color":"white"},{"translate":"rfm.text.d416eb384889","color":"#67D5FF","bold":true},{"translate":"rfm.text.a2e828fd388d","color":"white"},{"translate":"rfm.text.84387cfc1edc","color":"#FFD166","bold":true},{"translate":"rfm.text.746cd9eac797","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.b92864cb1c0b","color":"red","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"red","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={cooking_ready:1}] 1
