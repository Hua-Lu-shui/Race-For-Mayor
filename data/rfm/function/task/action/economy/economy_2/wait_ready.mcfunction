#等待经济行动任务2的行动玩家完成准备
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{negotiation_ready:1}}}}] run function rfm:task/action/economy/economy_2/start_countdown
