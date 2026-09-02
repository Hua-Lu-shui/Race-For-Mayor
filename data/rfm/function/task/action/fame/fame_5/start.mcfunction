scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
kill @e[tag=rfm_cheer_citizen]

scoreboard players set @s cheer_score 0
scoreboard players set @s cheer_combo 0
scoreboard players set @s cheer_time 0
scoreboard players set @s cheer_delay 0
scoreboard players set @s cheer_spawn 0
scoreboard players set @s cheer_type 0
scoreboard players set @s cheer_state 2

gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 232 -51 -18 180 32
tp @s 232 -59 -18 180 0
function rfm:task/action/sequence/hide_observers

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.64f9e53717f9","color":"aqua","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.e447afb8ce24","color":"white"},{"translate":"rfm.text.f8b5a9a97edb","color":"#67D5FF","bold":true},{"translate":"rfm.text.37184cb51817","color":"white"},{"translate":"rfm.text.84e37d8352be","color":"#FFD166","bold":true},{"translate":"rfm.text.82e05718ea1b","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a2247370d761","color":"white"},{"translate":"rfm.text.eeac62215afc","color":"#FFCB77","bold":true},{"translate":"rfm.text.c1465f5dd1ab","color":"white"},{"translate":"rfm.text.a6efff261f33","color":"#FFCB77"},{"translate":"rfm.text.2593535b4743","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.2e86c018ee6c","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.444741ad7049","color":"gray","italic":false}'],minecraft:custom_data={cheer_ready:1}] 1
