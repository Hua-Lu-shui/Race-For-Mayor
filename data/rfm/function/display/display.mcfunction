#执行display函数对应的游戏流程
execute as @a if score #phase phase matches 1 run title @s actionbar [{"text":"名誉 ","color":"aqua"},{"score":{"name":"@s","objective":"fame"},"color": "white"},{"text":"  经济 ","color":"yellow"},{"score":{"name":"@s","objective":"economy"},"color": "white"},{"text":"  民生 ","color":"red"},{"score":{"name":"@s","objective":"welfare"},"color": "white"},{"text":"  生态 ","color":"green"},{"score":{"name":"@s","objective":"ecology"},"color": "white"}]

#属性显示无需每tick刷新，每5tick更新一次即可
schedule function rfm:display/display 5t replace
