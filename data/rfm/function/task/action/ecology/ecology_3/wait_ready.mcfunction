#等待生态行动任务3的行动玩家完成准备
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{park_ready:1}}}}] run function rfm:task/action/ecology/ecology_3/start_countdown
