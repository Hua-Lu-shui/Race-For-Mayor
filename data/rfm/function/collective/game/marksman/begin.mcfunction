scoreboard players set #group_state group_state 1
title @a[tag=rfm_participant] title {"translate":"rfm.text.b0797d456278","color":"green","bold":true}
item replace entity @a[tag=rfm_participant,scores={group_finished=0}] hotbar.0 with minecraft:bow[minecraft:custom_name='{"translate":"rfm.collective.marksman.bow","color":"yellow","bold":true,"italic":false}',minecraft:unbreakable={},minecraft:custom_data={rfm_marksman_bow:1}] 1
execute as @a[tag=rfm_participant,scores={group_finished=0}] run function rfm:collective/game/marksman/give_arrow
execute store result score #active player_count run execute if entity @a[tag=rfm_participant,scores={group_finished=0}]
execute if score #active player_count matches 1 run function rfm:collective/game/marksman/finish_winner
