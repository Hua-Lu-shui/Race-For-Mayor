#第1、3、5、7、9轮结束后抽取事件，其余轮次直接发放下一轮准备时钟
execute if score #round round matches 1 run function rfm:event/draw
execute if score #round round matches 3 run function rfm:event/draw
execute if score #round round matches 5 run function rfm:event/draw
execute if score #round round matches 7 run function rfm:event/draw
execute if score #round round matches 9 run function rfm:event/draw
execute if score #round round matches 4 run function rfm:collective/announce
execute if score #round round matches 8 run function rfm:collective/announce
execute unless score #round round matches 1 unless score #round round matches 3 unless score #round round matches 4 unless score #round round matches 5 unless score #round round matches 7 unless score #round round matches 8 unless score #round round matches 9 run function rfm:round/ready/next
