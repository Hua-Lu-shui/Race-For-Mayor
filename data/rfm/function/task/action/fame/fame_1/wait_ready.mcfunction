#等待名誉行动任务1的行动玩家完成准备
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{speech_ready:1}}}}] run function rfm:task/action/fame/fame_1/start_countdown
