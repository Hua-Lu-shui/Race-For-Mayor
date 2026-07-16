#等待生态行动任务4的行动玩家完成准备
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{trash_ready:1}}}}] run function rfm:task/action/ecology/ecology_4/start_countdown
