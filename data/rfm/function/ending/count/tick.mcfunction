execute unless score #session_online game_session = #session_size game_session run schedule function rfm:ending/count/tick 20t replace
execute unless score #session_online game_session = #session_size game_session run return 0
scoreboard players set #vote_changed settle_value 0
execute if score #shown_fame settle_value < @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_fame run scoreboard players set #vote_changed settle_value 1
execute if score #shown_economy settle_value < @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_economy run scoreboard players set #vote_changed settle_value 1
execute if score #shown_welfare settle_value < @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_welfare run scoreboard players set #vote_changed settle_value 1
execute if score #shown_ecology settle_value < @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_ecology run scoreboard players set #vote_changed settle_value 1

execute if score #shown_fame settle_value < @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_fame run scoreboard players add #shown_fame settle_value 1
execute if score #shown_economy settle_value < @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_economy run scoreboard players add #shown_economy settle_value 1
execute if score #shown_welfare settle_value < @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_welfare run scoreboard players add #shown_welfare settle_value 1
execute if score #shown_ecology settle_value < @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_ecology run scoreboard players add #shown_ecology settle_value 1

title @a[tag=rfm_participant] title [{"score":{"name":"#shown_fame","objective":"settle_value"},"color":"aqua","bold":true},{"text":"   "},{"score":{"name":"#shown_economy","objective":"settle_value"},"color":"yellow","bold":true},{"text":"   "},{"score":{"name":"#shown_welfare","objective":"settle_value"},"color":"red","bold":true},{"text":"   "},{"score":{"name":"#shown_ecology","objective":"settle_value"},"color":"green","bold":true}]
execute if score #vote_changed settle_value matches 1 as @a[tag=rfm_participant] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 1.6

scoreboard players set #vote_counting settle_value 0
execute if score #shown_fame settle_value < @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_fame run scoreboard players set #vote_counting settle_value 1
execute if score #shown_economy settle_value < @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_economy run scoreboard players set #vote_counting settle_value 1
execute if score #shown_welfare settle_value < @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_welfare run scoreboard players set #vote_counting settle_value 1
execute if score #shown_ecology settle_value < @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_ecology run scoreboard players set #vote_counting settle_value 1
execute if score #vote_counting settle_value matches 1 run schedule function rfm:ending/count/tick 1t replace
execute if score #vote_counting settle_value matches 0 run schedule function rfm:ending/combine 20t replace
