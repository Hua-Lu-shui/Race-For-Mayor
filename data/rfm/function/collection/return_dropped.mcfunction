#当前执行者是藏品掉落实体；返还原投掷者后直接删除自身，避免再次全局扫描
execute on origin run function rfm:collection/deliver
execute on origin run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.7 1.2
kill @s
