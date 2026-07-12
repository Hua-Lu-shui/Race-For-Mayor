scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【民生决策】老人助餐","color":"gold","bold":true}
tellraw @s {"text":"多个社区提出老人助餐需求，尤其是独居老人。项目温暖人心，但需要稳定财政支持。","color":"white"}
tellraw @s [{"text":"[激进] 全城推行助餐点","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 先覆盖重点社区","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 发放少量餐券","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
