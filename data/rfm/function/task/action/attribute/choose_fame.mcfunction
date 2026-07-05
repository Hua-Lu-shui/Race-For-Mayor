scoreboard players set @s action_attribute_choice 0
execute store result score @s action_task run random value 1101..1105
tellraw @s {"text":"你已选择名誉行动任务，请等待选择倒计时结束后公布详细教程。","color":"aqua"}
