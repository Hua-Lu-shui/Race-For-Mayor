#等待民生行动任务2的行动玩家完成准备
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{fitness_ready:1}}}}] run function rfm:task/action/welfare/welfare_2/start_countdown
#正式开始前持续把行动玩家锁在本局赛道起点
function rfm:task/action/welfare/welfare_2/teleport_start
