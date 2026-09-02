scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
function rfm:task/action/fame/fame_4/create_reporters

scoreboard players set @s qa_round 0
scoreboard players set @s qa_target 0
scoreboard players set @s qa_previous 0
scoreboard players set @s qa_correct 0
scoreboard players set @s qa_time 0
scoreboard players set @s qa_armed 0
scoreboard players set @s qa_delay 0
scoreboard players set @s qa_state 2

gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 204 -53 -21 180 30
tp @s 204 -58 -21 180 0
function rfm:task/action/sequence/hide_observers

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b98c49967463","color":"aqua","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.93fbdf0f9524","color":"white"},{"translate":"rfm.text.6d7be5426e25","color":"#FFCB77","bold":true},{"translate":"rfm.text.706237cff40e","color":"white"},{"translate":"rfm.text.22b0f8a7e017","color":"#67D5FF","bold":true},{"translate":"rfm.text.144896339332","color":"white"},{"translate":"rfm.text.d9b2940ab909","color":"#FFCB77"},{"text":"。","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.b5a2e32e26f7","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={qa_ready:1}] 1
