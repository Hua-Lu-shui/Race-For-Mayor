function rfm:task/action/fame/fame_1/emit_reaction
scoreboard players remove @s speech_delay 1
execute store result bossbar rfm:speech_time value run scoreboard players get @s speech_delay
bossbar set rfm:speech_time name [{"translate":"rfm.text.bf694c436bd5","color":"aqua"},{"score":{"name":"@s","objective":"speech_round"},"color":"white"},{"translate":"rfm.text.b33a2d8fcfd2","color":"aqua"},{"score":{"name":"@s","objective":"speech_correct"},"color":"green"}]

execute if block 118 -57 -19 minecraft:stone_button[powered=true] run scoreboard players set @s speech_answer 1
execute if block 119 -57 -19 minecraft:stone_button[powered=true] run scoreboard players set @s speech_answer 2
execute if block 120 -57 -19 minecraft:stone_button[powered=true] run scoreboard players set @s speech_answer 3
execute if score @s speech_answer matches 1.. run function rfm:task/action/fame/fame_1/check

execute if score @s speech_state matches 1 if score @s speech_delay matches ..0 run function rfm:task/action/fame/fame_1/timeout
