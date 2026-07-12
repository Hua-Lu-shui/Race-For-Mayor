#恢复所有玩家的游戏模式，并传送回各自办公室
gamemode adventure @a
execute as @a run function rfm:room/return

title @a title {"text":"本轮结束","color":"green","bold":true}

#取消可能残留的自动开局安排
schedule clear rfm:round/round

#第1至9轮结束后，进入下一轮全员准备
execute if score #round round matches ..9 run function rfm:round/ready/next

#第10轮结束后，不再发放准备纸条，进入最终结算流程
execute if score #round round matches 10.. run function rfm:ending/prepare
