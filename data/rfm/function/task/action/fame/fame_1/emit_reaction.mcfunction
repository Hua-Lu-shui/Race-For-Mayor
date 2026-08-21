#类型1：愤怒粒子，需要选择“安抚情绪”
execute if score @s speech_category matches 1 if score @s speech_question matches 1 run particle minecraft:angry_villager 116 -59 -24 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]
execute if score @s speech_category matches 1 if score @s speech_question matches 2 run particle minecraft:angry_villager 119 -59 -24 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]
execute if score @s speech_category matches 1 if score @s speech_question matches 3 run particle minecraft:angry_villager 122 -59 -24 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]
execute if score @s speech_category matches 1 if score @s speech_question matches 4 run particle minecraft:angry_villager 113 -59 -28 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]
execute if score @s speech_category matches 1 if score @s speech_question matches 5 run particle minecraft:angry_villager 117 -59 -28 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]
execute if score @s speech_category matches 1 if score @s speech_question matches 6 run particle minecraft:angry_villager 121 -59 -28 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]
execute if score @s speech_category matches 1 if score @s speech_question matches 7 run particle minecraft:angry_villager 125 -59 -28 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]

#类型2：烟雾粒子，需要选择“补充说明”
execute if score @s speech_category matches 2 if score @s speech_question matches 1 run particle minecraft:smoke 116 -59 -24 0.2 0.3 0.2 0.01 2 force @a[tag=rfm_participant]
execute if score @s speech_category matches 2 if score @s speech_question matches 2 run particle minecraft:smoke 119 -59 -24 0.2 0.3 0.2 0.01 2 force @a[tag=rfm_participant]
execute if score @s speech_category matches 2 if score @s speech_question matches 3 run particle minecraft:smoke 122 -59 -24 0.2 0.3 0.2 0.01 2 force @a[tag=rfm_participant]
execute if score @s speech_category matches 2 if score @s speech_question matches 4 run particle minecraft:smoke 113 -59 -28 0.2 0.3 0.2 0.01 2 force @a[tag=rfm_participant]
execute if score @s speech_category matches 2 if score @s speech_question matches 5 run particle minecraft:smoke 117 -59 -28 0.2 0.3 0.2 0.01 2 force @a[tag=rfm_participant]
execute if score @s speech_category matches 2 if score @s speech_question matches 6 run particle minecraft:smoke 121 -59 -28 0.2 0.3 0.2 0.01 2 force @a[tag=rfm_participant]
execute if score @s speech_category matches 2 if score @s speech_question matches 7 run particle minecraft:smoke 125 -59 -28 0.2 0.3 0.2 0.01 2 force @a[tag=rfm_participant]

#类型3：音符粒子，需要选择“坚定承诺”
execute if score @s speech_category matches 3 if score @s speech_question matches 1 run particle minecraft:note 116 -59 -24 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]
execute if score @s speech_category matches 3 if score @s speech_question matches 2 run particle minecraft:note 119 -59 -24 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]
execute if score @s speech_category matches 3 if score @s speech_question matches 3 run particle minecraft:note 122 -59 -24 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]
execute if score @s speech_category matches 3 if score @s speech_question matches 4 run particle minecraft:note 113 -59 -28 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]
execute if score @s speech_category matches 3 if score @s speech_question matches 5 run particle minecraft:note 117 -59 -28 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]
execute if score @s speech_category matches 3 if score @s speech_question matches 6 run particle minecraft:note 121 -59 -28 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]
execute if score @s speech_category matches 3 if score @s speech_question matches 7 run particle minecraft:note 125 -59 -28 0.2 0.3 0.2 0 1 force @a[tag=rfm_participant]
