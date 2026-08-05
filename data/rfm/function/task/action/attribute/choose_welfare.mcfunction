scoreboard players set @s action_attribute_choice 0
#民生行动任务使用801至805
function rfm:task/action/attribute/roll_welfare
tellraw @s [{"text":"你已选择","color":"white"},{"text":"民生","color":"red"},{"text":"行动任务","color":"#67D5FF","bold":true},{"text":"，请等待","color":"white"},{"text":"选择倒计时结束","color":"#FFCB77"},{"text":"后公布详细教程。","color":"white"}]
