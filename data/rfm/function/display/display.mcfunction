#执行display函数对应的游戏流程
#游戏进行中，将四项权重同步到侧边栏
execute if score #phase phase matches 1 run scoreboard players operation 名誉 weight_display = #weight fame_weight
execute if score #phase phase matches 1 run scoreboard players operation 经济 weight_display = #weight economy_weight
execute if score #phase phase matches 1 run scoreboard players operation 民生 weight_display = #weight welfare_weight
execute if score #phase phase matches 1 run scoreboard players operation 生态 weight_display = #weight ecology_weight

execute as @a if score #phase phase matches 1 run title @s actionbar [{"text":"名誉 ","color":"aqua"},{"score":{"name":"@s","objective":"fame"},"color": "white"},{"text":"  经济 ","color":"yellow"},{"score":{"name":"@s","objective":"economy"},"color": "white"},{"text":"  民生 ","color":"red"},{"score":{"name":"@s","objective":"welfare"},"color": "white"},{"text":"  生态 ","color":"green"},{"score":{"name":"@s","objective":"ecology"},"color": "white"}]

#属性显示无需每tick刷新，每5tick更新一次即可
schedule function rfm:display/display 5t replace
