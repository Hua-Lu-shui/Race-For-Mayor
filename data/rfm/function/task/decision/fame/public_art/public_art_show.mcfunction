#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】公共艺术装置","color":"gold","bold":true}
tellraw @s {"text":"艺术家提议在中心广场建设一座大胆的新装置。支持者认为它能成为城市符号，反对者则觉得造型突兀且花费不值。","color":"white"}
tellraw @s [{"text":"[激进] 直接委托建成永久地标","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 临时展出后由市民表决","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 取消项目恢复广场原貌","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
