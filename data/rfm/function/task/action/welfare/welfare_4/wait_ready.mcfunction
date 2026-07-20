#等待行动玩家丢出准备地图，并在开始前锁定调度区
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{bus_ready:1}}}}] run function rfm:task/action/welfare/welfare_4/start_countdown
