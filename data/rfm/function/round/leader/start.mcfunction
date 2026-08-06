#事件回合返回办公室后停留5秒再公示事件，确保永久公开领先者的事件能影响本轮属性公示
execute if score #round round matches 1 run schedule function rfm:event/draw 100t replace
execute if score #round round matches 3 run schedule function rfm:event/draw 100t replace
execute if score #round round matches 5 run schedule function rfm:event/draw 100t replace
execute if score #round round matches 7 run schedule function rfm:event/draw 100t replace
execute if score #round round matches 9 run schedule function rfm:event/draw 100t replace

#非事件回合返回办公室后停留2秒，直接开始属性公示
execute unless score #round round matches 1 unless score #round round matches 3 unless score #round round matches 5 unless score #round round matches 7 unless score #round round matches 9 run schedule function rfm:round/leader/show 40t replace
