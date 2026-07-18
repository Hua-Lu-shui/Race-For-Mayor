#五件必需品依次间隔两个箱子，确保分散在五个不同箱子中
data modify storage rfm:supply placement.item set value "minecraft:milk_bucket"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
function rfm:task/action/economy/economy_4/advance_chest_2
data modify storage rfm:supply placement.item set value "minecraft:charcoal"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
function rfm:task/action/economy/economy_4/advance_chest_2
data modify storage rfm:supply placement.item set value "minecraft:beetroot"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
function rfm:task/action/economy/economy_4/advance_chest_2
data modify storage rfm:supply placement.item set value "minecraft:redstone"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
function rfm:task/action/economy/economy_4/advance_chest_2
data modify storage rfm:supply placement.item set value "minecraft:string"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest

scoreboard players operation #supply_chest supply_order = #supply_base supply_order
scoreboard players add #supply_chest supply_order 1
execute if score #supply_chest supply_order matches 13.. run scoreboard players remove #supply_chest supply_order 12
data modify storage rfm:supply placement.item set value "minecraft:bone"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
function rfm:task/action/economy/economy_4/advance_chest_2
data modify storage rfm:supply placement.item set value "minecraft:clay_ball"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
function rfm:task/action/economy/economy_4/advance_chest_2
data modify storage rfm:supply placement.item set value "minecraft:bamboo"
function rfm:task/action/economy/economy_4/random_task_slot
function rfm:task/action/economy/economy_4/place_current_chest
