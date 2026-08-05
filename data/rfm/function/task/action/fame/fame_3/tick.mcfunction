#推进45秒计时并读取快门按钮；五个站位方块由右键进度直接处理
scoreboard players remove @s photo_time 1
scoreboard players operation @s photo_seconds = @s photo_time
scoreboard players add @s photo_seconds 19
scoreboard players operation @s photo_seconds /= #twenty photo_seconds
execute store result bossbar rfm:photo_time value run scoreboard players get @s photo_seconds
bossbar set rfm:photo_time name [{"text":"\uE21D","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE223","font":"rfm:bossbar"},{"text":"市民合影 · 剩余 ","color":"aqua"},{"score":{"name":"@s","objective":"photo_seconds"},"color":"white"},{"text":" 秒 · 已提交 ","color":"aqua"},{"score":{"name":"@s","objective":"photo_attempt"},"color":"yellow"},{"text":" / 2","color":"aqua"}]

execute if block 596 -60 110 minecraft:polished_blackstone_button[powered=true] run function rfm:task/action/fame/fame_3/submit
execute if score @s photo_state matches 1 if score @s photo_time matches ..0 run function rfm:task/action/fame/fame_3/result
