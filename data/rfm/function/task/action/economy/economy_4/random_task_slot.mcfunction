#任务物资随机进入大箱子的左半或右半，并使用该半箱的任意槽位
execute store result score #supply_half supply_order run random value 0..1
execute store result storage rfm:supply placement.slot int 1 run random value 0..26
