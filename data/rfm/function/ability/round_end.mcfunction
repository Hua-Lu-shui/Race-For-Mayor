#先恢复明星被任务压低的非名誉属性
execute as @a[scores={candidate=1}] run function rfm:ability/star/restore
#再判断企业家此刻的经济是否为最低属性
execute as @a[scores={candidate=2}] run function rfm:ability/business/round_end
#遵守属性锁定并确保数值不低于0
execute as @a run function rfm:attribute/lock/enforce
execute as @a run function rfm:attribute/minimum
