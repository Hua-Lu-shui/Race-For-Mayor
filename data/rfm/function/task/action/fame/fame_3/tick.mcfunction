scoreboard players remove @s photo_time 1
scoreboard players operation @s photo_seconds = @s photo_time
scoreboard players add @s photo_seconds 19
scoreboard players operation @s photo_seconds /= #twenty photo_seconds
execute store result bossbar rfm:photo_time value run scoreboard players get @s photo_seconds
bossbar set rfm:photo_time name [{"translate":"rfm.text.5e04c39a72e9","color":"aqua"},{"score":{"name":"@s","objective":"photo_seconds"},"color":"white"},{"translate":"rfm.text.c70db01a999b","color":"aqua"},{"score":{"name":"@s","objective":"photo_attempt"},"color":"yellow"},{"text":" / 2","color":"aqua"}]

execute if block 180 -58 -19 minecraft:polished_blackstone_button[powered=true] run function rfm:task/action/fame/fame_3/submit
execute if score @s photo_state matches 1 if score @s photo_time matches ..0 run function rfm:task/action/fame/fame_3/result
