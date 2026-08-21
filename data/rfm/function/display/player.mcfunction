#准备动作栏数值；锁定值仍以普通白色显示，并由主tick按锁定玩家恢复
scoreboard players operation @s fame_show = @s fame
scoreboard players operation @s econ_show = @s economy
scoreboard players operation @s welfare_show = @s welfare
scoreboard players operation @s eco_show = @s ecology
function rfm:display/render
