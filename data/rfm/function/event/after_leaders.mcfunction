#属性公示结束后结算藏品效果，再进入下一回合准备或令牌争夺
function rfm:collection/after_leaders
execute if score #round round matches 4 run function rfm:collective/prepare
execute if score #round round matches 8 run function rfm:collective/prepare
execute unless score #round round matches 4 unless score #round round matches 8 run function rfm:round/ready/next
