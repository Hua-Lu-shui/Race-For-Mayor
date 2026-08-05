#神秘人只在第2、3、4回合的属性公示结束后分别出现
execute if score #round round matches 2..4 run function rfm:collection/mysterious/spawn_all
#第五回合结束后不再生成；额外清理用于防止异常流程留下旧实体
execute if score #round round matches 5 run function rfm:collection/mysterious/cleanup
