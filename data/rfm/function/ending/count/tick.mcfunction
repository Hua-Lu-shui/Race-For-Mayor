#每游戏刻严格增加1票，因此实际票数越高，统计动画持续越久
execute if score #vote_shown settle_value < #vote_target settle_value run scoreboard players add #vote_shown settle_value 1

execute if score #vote_stage settle_value matches 1 run title @a title [{"text":"名誉票数：","color":"aqua","bold":true},{"score":{"name":"#vote_shown","objective":"settle_value"},"color":"white","bold":true}]
execute if score #vote_stage settle_value matches 2 run title @a title [{"text":"经济票数：","color":"yellow","bold":true},{"score":{"name":"#vote_shown","objective":"settle_value"},"color":"white","bold":true}]
execute if score #vote_stage settle_value matches 3 run title @a title [{"text":"民生票数：","color":"red","bold":true},{"score":{"name":"#vote_shown","objective":"settle_value"},"color":"white","bold":true}]
execute if score #vote_stage settle_value matches 4 run title @a title [{"text":"生态票数：","color":"green","bold":true},{"score":{"name":"#vote_shown","objective":"settle_value"},"color":"white","bold":true}]
execute if score #vote_target settle_value matches 1.. if score #vote_shown settle_value < #vote_target settle_value run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.2 1.6

#尚未达到目标时下一刻继续；达到后停留1秒再切换项目
execute if score #vote_shown settle_value < #vote_target settle_value run schedule function rfm:ending/count/tick 1t replace
execute if score #vote_shown settle_value = #vote_target settle_value if score #vote_stage settle_value matches 1 run schedule function rfm:ending/count/start_economy 20t replace
execute if score #vote_shown settle_value = #vote_target settle_value if score #vote_stage settle_value matches 2 run schedule function rfm:ending/count/start_welfare 20t replace
execute if score #vote_shown settle_value = #vote_target settle_value if score #vote_stage settle_value matches 3 run schedule function rfm:ending/count/start_ecology 20t replace
execute if score #vote_shown settle_value = #vote_target settle_value if score #vote_stage settle_value matches 4 run schedule function rfm:ending/combine 20t replace
