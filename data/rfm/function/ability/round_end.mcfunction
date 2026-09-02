execute as @a[tag=rfm_participant,scores={candidate=1}] run function rfm:ability/star/restore
execute as @a[tag=rfm_participant] run function rfm:attribute/lock/enforce
execute as @a[tag=rfm_participant] run function rfm:attribute/minimum
