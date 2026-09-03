function rfm:collection/after_leaders
execute if score #round round matches 4 run function rfm:collective/prepare
execute if score #round round matches 8 run function rfm:collective/prepare
execute if score #round round matches 10.. run function rfm:ending/prepare
execute unless score #round round matches 4 unless score #round round matches 8 unless score #round round matches 10.. run function rfm:round/ready/next
