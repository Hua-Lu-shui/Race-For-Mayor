#返还明星被任务压低的非名誉属性
execute as @a[tag=rfm_participant,scores={candidate=1}] run function rfm:ability/star/restore
#遵守属性锁定并确保数值不低于0
execute as @a[tag=rfm_participant] run function rfm:attribute/lock/enforce
execute as @a[tag=rfm_participant] run function rfm:attribute/minimum
