execute if score #round round matches 1 run schedule function rfm:event/draw 100t replace
execute if score #round round matches 3 run schedule function rfm:event/draw 100t replace
execute if score #round round matches 5 run schedule function rfm:event/draw 100t replace
execute if score #round round matches 7 run schedule function rfm:event/draw 100t replace
execute if score #round round matches 9 run schedule function rfm:event/draw 100t replace

execute unless score #round round matches 1 unless score #round round matches 3 unless score #round round matches 5 unless score #round round matches 7 unless score #round round matches 9 run schedule function rfm:round/leader/show 40t replace
