execute unless score #session_online game_session = #session_size game_session run schedule function rfm:ending/title/show 20t replace
execute unless score #session_online game_session = #session_size game_session run return 0
execute as @a[tag=rfm_participant,tag=rfm_settling,limit=1] run function rfm:ending/title/apply
execute as @a[tag=rfm_participant,tag=rfm_settling,limit=1,scores={title_bonus=0}] run title @a[tag=rfm_participant] title {"translate":"rfm.text.a63cfb50329c","color":"gray","bold":true}
execute as @a[tag=rfm_participant,tag=rfm_settling,limit=1,scores={title_bonus=1..}] run title @a[tag=rfm_participant] title [{"translate":"rfm.text.7e8891cea673","color":"light_purple","bold":true},{"text":"+","color":"white","bold":true},{"score":{"name":"@s","objective":"title_bonus"},"color":"white","bold":true}]
execute as @a[tag=rfm_participant,tag=rfm_settling,limit=1,scores={title_bonus=..-1}] run title @a[tag=rfm_participant] title [{"translate":"rfm.text.7e8891cea673","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"title_bonus"},"color":"white","bold":true}]
execute as @a[tag=rfm_participant] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.6 1.2
schedule function rfm:ending/finalize_player 40t replace
