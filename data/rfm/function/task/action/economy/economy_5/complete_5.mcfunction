#完成唐雨的岗位匹配
scoreboard players set @s employment_done_5 1
scoreboard players add @s employment_completed 1
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{resume_id:5}}}}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.71b40a98dc43","color":"green"},{"translate":"rfm.text.95b4cab47bc4","color":"yellow","bold":true}]
playsound minecraft:entity.player.levelup master @a[tag=rfm_participant] ~ ~ ~ 0.7 1.5
