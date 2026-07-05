scoreboard players set @s action_attribute_choice 0
execute store result score @s action_task run random value 1301..1305
tellraw @s {"text":"你已选择民生行动任务，请等待选择倒计时结束后公布详细教程。","color":"red"}
