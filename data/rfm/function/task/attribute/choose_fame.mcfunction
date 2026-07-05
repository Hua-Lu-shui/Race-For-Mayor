scoreboard players set @s attribute_choice 0

execute store result score @s decision_task run random value 101..105

execute if score @s decision_task matches 101 run function rfm:task/decision/fame/media/media_show
execute if score @s decision_task matches 102 run function rfm:task/decision/fame/debate/debate_show
execute if score @s decision_task matches 103 run function rfm:task/decision/fame/anti_corruption/anti_corruption_show
execute if score @s decision_task matches 104 run function rfm:task/decision/fame/charity/charity_show
execute if score @s decision_task matches 105 run function rfm:task/decision/fame/rumor/rumor_show