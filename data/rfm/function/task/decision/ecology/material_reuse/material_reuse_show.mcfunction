#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【生态决策】拆除建材循环","color":"gold","bold":true}
tellraw @s {"text":"旧建筑拆除产生大量砖石、木材和金属，目前多数直接外运填埋。回收再利用能减少资源浪费，却会抬高分拣和施工成本。","color":"white"}
tellraw @s [{"text":"[激进] 强制所有工程分类再利用","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 公共工程先执行三成回用","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 继续由承包商自行处理","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
