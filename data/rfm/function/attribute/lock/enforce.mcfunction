#本函数以候选人为@s；锁定属性始终恢复为使用道具时保存的数值
execute if score @s fame_lock matches 1 run scoreboard players operation @s fame = @s fame_locked
execute if score @s economy_lock matches 1 run scoreboard players operation @s economy = @s economy_locked
execute if score @s welfare_lock matches 1 run scoreboard players operation @s welfare = @s welfare_locked
execute if score @s ecology_lock matches 1 run scoreboard players operation @s ecology = @s ecology_locked
