#临时招聘会场地
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0

scoreboard players set @s employment_layout 0
scoreboard players set @s employment_completed 0
scoreboard players set @s employment_done_1 0
scoreboard players set @s employment_done_2 0
scoreboard players set @s employment_done_3 0
scoreboard players set @s employment_done_4 0
scoreboard players set @s employment_done_5 0
scoreboard players set @s employment_time 0
scoreboard players set @s employment_delay 0
scoreboard players set @s employment_state 2
execute store result score @s employment_layout run random value 1..3

gamemode adventure @a
tp @a 235 -58 12 0 0
tp @s 235 -58 25 90 0

#玩家到场并加载会场区块后再生成任务实体
function rfm:task/action/economy/economy_5/create_scene

tellraw @a [{"text":"【经济行动】就业走访","color":"yellow","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"右键求职者面前的登记表，查看技能和工作条件，再把登记表交给对应招聘官。","color":"white"}

title @s clear
title @s title {"text":"就业走访","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={employment_ready:1}] 1
