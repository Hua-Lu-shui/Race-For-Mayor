scoreboard players operation #choose_time choose_time = #decision_time game_setting
scoreboard players set @a[tag=rfm_participant] decision_choice 0
bossbar set rfm:choose_time visible true
execute store result bossbar rfm:choose_time max run scoreboard players get #choose_time choose_time
execute store result bossbar rfm:choose_time value run scoreboard players get #choose_time choose_time
bossbar set rfm:choose_time players @a[tag=rfm_participant]
bossbar set rfm:choose_time name [{"text":"","font":"minecraft:default"},{"translate":"rfm.bossbar.choose.offset_left","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"translate":"rfm.bossbar.choose.offset_right","font":"rfm:bossbar"},{"translate":"rfm.text.c9ab18509d8b","color":"light_purple"}]
schedule function rfm:task/task_choose 1s
