scoreboard players set @s action_attribute_choice 0
#经济行动任务使用701至705
function rfm:task/action/attribute/roll_economy
tellraw @s [{"text":"你已选择","color":"white"},{"text":"经济","color":"yellow"},{"text":"行动任务","color":"#67D5FF","bold":true},{"text":"，请等待","color":"white"},{"text":"选择倒计时结束","color":"#FFCB77"},{"text":"后公布详细教程。","color":"white"}]
