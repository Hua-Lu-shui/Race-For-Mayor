#锁定值优先恢复，并准备黑色或白色的动作栏数值
function rfm:attribute/lock/enforce
scoreboard players reset @s fame_show
scoreboard players reset @s fame_lshow
scoreboard players reset @s econ_show
scoreboard players reset @s econ_lshow
scoreboard players reset @s welfare_show
scoreboard players reset @s welfare_lshow
scoreboard players reset @s eco_show
scoreboard players reset @s eco_lshow
execute unless score @s fame_lock matches 1 run scoreboard players operation @s fame_show = @s fame
execute if score @s fame_lock matches 1 run scoreboard players operation @s fame_lshow = @s fame
execute unless score @s economy_lock matches 1 run scoreboard players operation @s econ_show = @s economy
execute if score @s economy_lock matches 1 run scoreboard players operation @s econ_lshow = @s economy
execute unless score @s welfare_lock matches 1 run scoreboard players operation @s welfare_show = @s welfare
execute if score @s welfare_lock matches 1 run scoreboard players operation @s welfare_lshow = @s welfare
execute unless score @s ecology_lock matches 1 run scoreboard players operation @s eco_show = @s ecology
execute if score @s ecology_lock matches 1 run scoreboard players operation @s eco_lshow = @s ecology

#首次显示或新一局开始时，以当前属性作为动画起点
execute unless score @s attr_seen matches 1 run scoreboard players operation @s fame_last = @s fame
execute unless score @s attr_seen matches 1 run scoreboard players operation @s econ_last = @s economy
execute unless score @s attr_seen matches 1 run scoreboard players operation @s welfare_last = @s welfare
execute unless score @s attr_seen matches 1 run scoreboard players operation @s eco_last = @s ecology
execute unless score @s attr_seen matches 1 run scoreboard players set @s fame_delta 0
execute unless score @s attr_seen matches 1 run scoreboard players set @s econ_delta 0
execute unless score @s attr_seen matches 1 run scoreboard players set @s welfare_delta 0
execute unless score @s attr_seen matches 1 run scoreboard players set @s eco_delta 0
execute unless score @s attr_seen matches 1 run scoreboard players set @s attr_anim 0
scoreboard players set @s attr_seen 1

#比较真实属性和上次显示值；任何来源造成的新变化都会重新播放60刻动画
scoreboard players set @s attr_changed 0
scoreboard players operation @s attr_probe = @s fame
scoreboard players operation @s attr_probe -= @s fame_last
execute unless score @s attr_probe = @s fame_delta run scoreboard players set @s attr_changed 1
scoreboard players operation @s fame_delta = @s attr_probe
scoreboard players operation @s attr_probe = @s economy
scoreboard players operation @s attr_probe -= @s econ_last
execute unless score @s attr_probe = @s econ_delta run scoreboard players set @s attr_changed 1
scoreboard players operation @s econ_delta = @s attr_probe
scoreboard players operation @s attr_probe = @s welfare
scoreboard players operation @s attr_probe -= @s welfare_last
execute unless score @s attr_probe = @s welfare_delta run scoreboard players set @s attr_changed 1
scoreboard players operation @s welfare_delta = @s attr_probe
scoreboard players operation @s attr_probe = @s ecology
scoreboard players operation @s attr_probe -= @s eco_last
execute unless score @s attr_probe = @s eco_delta run scoreboard players set @s attr_changed 1
scoreboard players operation @s eco_delta = @s attr_probe
execute if score @s attr_changed matches 1 run scoreboard players set @s attr_anim 60

#每轮亮15刻、灭5刻，共闪烁三次；属性数值始终显示最新值
scoreboard players set @s attr_flash 0
execute if score @s attr_anim matches 46..60 run scoreboard players set @s attr_flash 1
execute if score @s attr_anim matches 26..40 run scoreboard players set @s attr_flash 1
execute if score @s attr_anim matches 6..20 run scoreboard players set @s attr_flash 1
function rfm:display/render
execute if score @s attr_anim matches 1.. run scoreboard players remove @s attr_anim 5
execute if score @s attr_anim matches ..0 run scoreboard players operation @s fame_last = @s fame
execute if score @s attr_anim matches ..0 run scoreboard players operation @s econ_last = @s economy
execute if score @s attr_anim matches ..0 run scoreboard players operation @s welfare_last = @s welfare
execute if score @s attr_anim matches ..0 run scoreboard players operation @s eco_last = @s ecology
execute if score @s attr_anim matches ..0 run scoreboard players set @s fame_delta 0
execute if score @s attr_anim matches ..0 run scoreboard players set @s econ_delta 0
execute if score @s attr_anim matches ..0 run scoreboard players set @s welfare_delta 0
execute if score @s attr_anim matches ..0 run scoreboard players set @s eco_delta 0
