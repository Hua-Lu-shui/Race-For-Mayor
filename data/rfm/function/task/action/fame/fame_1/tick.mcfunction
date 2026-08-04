#持续显示当前市民的粒子，并推进3秒反应倒计时
function rfm:task/action/fame/fame_1/emit_reaction
scoreboard players remove @s speech_delay 1
execute store result bossbar rfm:speech_time value run scoreboard players get @s speech_delay
bossbar set rfm:speech_time name [{"text":"街头演讲 · 已完成 ","color":"aqua"},{"score":{"name":"@s","objective":"speech_round"},"color":"white"},{"text":" / 10 · 成功 ","color":"aqua"},{"score":{"name":"@s","objective":"speech_correct"},"color":"green"}]

#读取三个真实按钮：1安抚情绪，2补充说明，3坚定承诺
execute if block 118 -57 -19 minecraft:stone_button[powered=true] run scoreboard players set @s speech_answer 1
execute if block 119 -57 -19 minecraft:stone_button[powered=true] run scoreboard players set @s speech_answer 2
execute if block 120 -57 -19 minecraft:stone_button[powered=true] run scoreboard players set @s speech_answer 3
execute if score @s speech_answer matches 1.. run function rfm:task/action/fame/fame_1/check

execute if score @s speech_state matches 1 if score @s speech_delay matches ..0 run function rfm:task/action/fame/fame_1/timeout
