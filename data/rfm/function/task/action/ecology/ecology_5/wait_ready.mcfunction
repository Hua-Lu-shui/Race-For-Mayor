#等待生态行动任务5的行动玩家完成准备
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{energy_ready:1}}}}] run function rfm:task/action/ecology/ecology_5/start_countdown
