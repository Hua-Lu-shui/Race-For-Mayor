#类型1：愤怒粒子，需要选择“安抚情绪”
execute if score @s speech_category matches 1 if score @s speech_question matches 1 run particle minecraft:angry_villager 482 -58 99 0.2 0.3 0.2 0 1 force @a
execute if score @s speech_category matches 1 if score @s speech_question matches 2 run particle minecraft:angry_villager 485 -58 100 0.2 0.3 0.2 0 1 force @a
execute if score @s speech_category matches 1 if score @s speech_question matches 3 run particle minecraft:angry_villager 488 -58 99 0.2 0.3 0.2 0 1 force @a
execute if score @s speech_category matches 1 if score @s speech_question matches 4 run particle minecraft:angry_villager 491 -58 100 0.2 0.3 0.2 0 1 force @a
execute if score @s speech_category matches 1 if score @s speech_question matches 5 run particle minecraft:angry_villager 494 -58 99 0.2 0.3 0.2 0 1 force @a
execute if score @s speech_category matches 1 if score @s speech_question matches 6 run particle minecraft:angry_villager 484 -58 97 0.2 0.3 0.2 0 1 force @a
execute if score @s speech_category matches 1 if score @s speech_question matches 7 run particle minecraft:angry_villager 492 -58 97 0.2 0.3 0.2 0 1 force @a

#类型2：烟雾粒子，需要选择“补充说明”
execute if score @s speech_category matches 2 if score @s speech_question matches 1 run particle minecraft:smoke 482 -58 99 0.2 0.3 0.2 0.01 2 force @a
execute if score @s speech_category matches 2 if score @s speech_question matches 2 run particle minecraft:smoke 485 -58 100 0.2 0.3 0.2 0.01 2 force @a
execute if score @s speech_category matches 2 if score @s speech_question matches 3 run particle minecraft:smoke 488 -58 99 0.2 0.3 0.2 0.01 2 force @a
execute if score @s speech_category matches 2 if score @s speech_question matches 4 run particle minecraft:smoke 491 -58 100 0.2 0.3 0.2 0.01 2 force @a
execute if score @s speech_category matches 2 if score @s speech_question matches 5 run particle minecraft:smoke 494 -58 99 0.2 0.3 0.2 0.01 2 force @a
execute if score @s speech_category matches 2 if score @s speech_question matches 6 run particle minecraft:smoke 484 -58 97 0.2 0.3 0.2 0.01 2 force @a
execute if score @s speech_category matches 2 if score @s speech_question matches 7 run particle minecraft:smoke 492 -58 97 0.2 0.3 0.2 0.01 2 force @a

#类型3：音符粒子，需要选择“坚定承诺”
execute if score @s speech_category matches 3 if score @s speech_question matches 1 run particle minecraft:note 482 -58 99 0.2 0.3 0.2 0 1 force @a
execute if score @s speech_category matches 3 if score @s speech_question matches 2 run particle minecraft:note 485 -58 100 0.2 0.3 0.2 0 1 force @a
execute if score @s speech_category matches 3 if score @s speech_question matches 3 run particle minecraft:note 488 -58 99 0.2 0.3 0.2 0 1 force @a
execute if score @s speech_category matches 3 if score @s speech_question matches 4 run particle minecraft:note 491 -58 100 0.2 0.3 0.2 0 1 force @a
execute if score @s speech_category matches 3 if score @s speech_question matches 5 run particle minecraft:note 494 -58 99 0.2 0.3 0.2 0 1 force @a
execute if score @s speech_category matches 3 if score @s speech_question matches 6 run particle minecraft:note 484 -58 97 0.2 0.3 0.2 0 1 force @a
execute if score @s speech_category matches 3 if score @s speech_question matches 7 run particle minecraft:note 492 -58 97 0.2 0.3 0.2 0 1 force @a
