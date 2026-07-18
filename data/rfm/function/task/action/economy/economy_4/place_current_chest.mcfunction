#把当前大箱子编号和随机半边转换为实际方块坐标
execute if score #supply_chest supply_order matches 1 if score #supply_half supply_order matches 0 run data modify storage rfm:supply placement merge value {x:394,z:112}
execute if score #supply_chest supply_order matches 1 if score #supply_half supply_order matches 1 run data modify storage rfm:supply placement merge value {x:395,z:112}
execute if score #supply_chest supply_order matches 2 if score #supply_half supply_order matches 0 run data modify storage rfm:supply placement merge value {x:400,z:112}
execute if score #supply_chest supply_order matches 2 if score #supply_half supply_order matches 1 run data modify storage rfm:supply placement merge value {x:401,z:112}
execute if score #supply_chest supply_order matches 3 if score #supply_half supply_order matches 0 run data modify storage rfm:supply placement merge value {x:406,z:112}
execute if score #supply_chest supply_order matches 3 if score #supply_half supply_order matches 1 run data modify storage rfm:supply placement merge value {x:407,z:112}
execute if score #supply_chest supply_order matches 4 if score #supply_half supply_order matches 0 run data modify storage rfm:supply placement merge value {x:412,z:112}
execute if score #supply_chest supply_order matches 4 if score #supply_half supply_order matches 1 run data modify storage rfm:supply placement merge value {x:413,z:112}
execute if score #supply_chest supply_order matches 5 if score #supply_half supply_order matches 0 run data modify storage rfm:supply placement merge value {x:394,z:116}
execute if score #supply_chest supply_order matches 5 if score #supply_half supply_order matches 1 run data modify storage rfm:supply placement merge value {x:395,z:116}
execute if score #supply_chest supply_order matches 6 if score #supply_half supply_order matches 0 run data modify storage rfm:supply placement merge value {x:400,z:116}
execute if score #supply_chest supply_order matches 6 if score #supply_half supply_order matches 1 run data modify storage rfm:supply placement merge value {x:401,z:116}
execute if score #supply_chest supply_order matches 7 if score #supply_half supply_order matches 0 run data modify storage rfm:supply placement merge value {x:406,z:116}
execute if score #supply_chest supply_order matches 7 if score #supply_half supply_order matches 1 run data modify storage rfm:supply placement merge value {x:407,z:116}
execute if score #supply_chest supply_order matches 8 if score #supply_half supply_order matches 0 run data modify storage rfm:supply placement merge value {x:412,z:116}
execute if score #supply_chest supply_order matches 8 if score #supply_half supply_order matches 1 run data modify storage rfm:supply placement merge value {x:413,z:116}
execute if score #supply_chest supply_order matches 9 if score #supply_half supply_order matches 0 run data modify storage rfm:supply placement merge value {x:394,z:120}
execute if score #supply_chest supply_order matches 9 if score #supply_half supply_order matches 1 run data modify storage rfm:supply placement merge value {x:395,z:120}
execute if score #supply_chest supply_order matches 10 if score #supply_half supply_order matches 0 run data modify storage rfm:supply placement merge value {x:400,z:120}
execute if score #supply_chest supply_order matches 10 if score #supply_half supply_order matches 1 run data modify storage rfm:supply placement merge value {x:401,z:120}
execute if score #supply_chest supply_order matches 11 if score #supply_half supply_order matches 0 run data modify storage rfm:supply placement merge value {x:406,z:120}
execute if score #supply_chest supply_order matches 11 if score #supply_half supply_order matches 1 run data modify storage rfm:supply placement merge value {x:407,z:120}
execute if score #supply_chest supply_order matches 12 if score #supply_half supply_order matches 0 run data modify storage rfm:supply placement merge value {x:412,z:120}
execute if score #supply_chest supply_order matches 12 if score #supply_half supply_order matches 1 run data modify storage rfm:supply placement merge value {x:413,z:120}
function rfm:task/action/economy/economy_4/place_item with storage rfm:supply placement
