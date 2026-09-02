data modify storage rfm:supply placement.item set value "minecraft:wheat"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
function rfm:task/action/economy/economy_4/advance_chest_2
data modify storage rfm:supply placement.item set value "minecraft:coal"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
function rfm:task/action/economy/economy_4/advance_chest_2
data modify storage rfm:supply placement.item set value "minecraft:potato"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
function rfm:task/action/economy/economy_4/advance_chest_2
data modify storage rfm:supply placement.item set value "minecraft:glass_bottle"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
function rfm:task/action/economy/economy_4/advance_chest_2
data modify storage rfm:supply placement.item set value "minecraft:white_wool"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest

scoreboard players operation #supply_chest supply_order = #supply_base supply_order
scoreboard players add #supply_chest supply_order 1
execute if score #supply_chest supply_order matches 25.. run scoreboard players remove #supply_chest supply_order 24
data modify storage rfm:supply placement.item set value "minecraft:feather"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
function rfm:task/action/economy/economy_4/advance_chest_2
data modify storage rfm:supply placement.item set value "minecraft:copper_ingot"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
function rfm:task/action/economy/economy_4/advance_chest_2
data modify storage rfm:supply placement.item set value "minecraft:beetroot_seeds"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
