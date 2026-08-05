scoreboard players set @s action_attribute_choice 0
#名誉行动任务使用601至605
function rfm:task/action/attribute/roll_fame
tellraw @s [{"text":"你已选择","color":"white"},{"text":"名誉","color":"aqua"},{"text":"行动任务","color":"#67D5FF","bold":true},{"text":"，请等待","color":"white"},{"text":"选择倒计时结束","color":"#FFCB77"},{"text":"后公布详细教程。","color":"white"}]
