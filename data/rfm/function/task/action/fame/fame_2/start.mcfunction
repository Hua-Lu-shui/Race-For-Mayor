scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
function rfm:task/action/fame/fame_2/create_labels
function rfm:task/action/fame/fame_2/reset_buttons

scoreboard players set @s visit_route 0
scoreboard players set @s visit_step 0
scoreboard players set @s visit_target 0
scoreboard players set @s visit_answer 0
scoreboard players set @s visit_wrong 0
scoreboard players set @s visit_time 0
scoreboard players set @s visit_delay 0
scoreboard players set @s visit_state 2

gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 163 -48 -23 90 30
tp @s 143 -58 -31 0 0
function rfm:task/action/sequence/hide_observers

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.3b5b89df2cb1","color":"aqua","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.f7acefd2d4cd","color":"white"},{"translate":"rfm.text.a582f9914169","color":"#67D5FF","bold":true},{"translate":"rfm.text.886545dd2ae9","color":"white"},{"translate":"rfm.text.ba247ab5d48e","color":"#FFD166"},{"translate":"rfm.text.1fe9220eb01d","color":"white"},{"translate":"rfm.text.4439676fd18d","color":"#FFCB77"},{"text":"。","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.0a4c3ad3ca66","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={visit_ready:1}] 1
