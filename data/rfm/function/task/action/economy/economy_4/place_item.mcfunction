$data remove block $(x) $(y) $(z) Items[{Slot:$(slot)b}]
$data modify block $(x) $(y) $(z) Items append value {Slot:$(slot)b,id:"$(item)",count:1,components:{"minecraft:custom_data":{rfm_supply_item:1}}}
