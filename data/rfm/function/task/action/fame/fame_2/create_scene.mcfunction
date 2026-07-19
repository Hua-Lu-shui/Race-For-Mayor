#清空并搭建泰拉瑞亚式竖向社区场地
fill 512 -62 95 562 -35 105 minecraft:air replace

#楼房背墙、五层楼板（四层住房加屋顶）和玻璃正面
fill 519 -61 96 554 -37 96 minecraft:bricks replace
fill 519 -61 96 554 -61 104 minecraft:stone_bricks replace
fill 519 -55 96 554 -55 104 minecraft:stone_bricks replace
fill 519 -49 96 554 -49 104 minecraft:stone_bricks replace
fill 519 -43 96 554 -43 104 minecraft:stone_bricks replace
fill 519 -37 96 554 -37 100 minecraft:stone_bricks replace

fill 520 -60 100 553 -56 100 minecraft:light_gray_stained_glass replace
fill 520 -54 100 553 -50 100 minecraft:light_blue_stained_glass replace
fill 520 -48 100 553 -44 100 minecraft:lime_stained_glass replace
fill 520 -42 100 553 -38 100 minecraft:yellow_stained_glass replace

#每层五个房间的分隔墙
fill 519 -61 96 519 -37 100 minecraft:polished_deepslate replace
fill 526 -61 96 526 -37 100 minecraft:polished_deepslate replace
fill 533 -61 96 533 -37 100 minecraft:polished_deepslate replace
fill 540 -61 96 540 -37 100 minecraft:polished_deepslate replace
fill 547 -61 96 547 -37 100 minecraft:polished_deepslate replace
fill 554 -61 96 554 -37 100 minecraft:polished_deepslate replace

#四层走廊外侧使用隐形护栏，将玩家限制在竖平面内
fill 519 -60 104 554 -58 104 minecraft:barrier replace
fill 519 -54 104 554 -52 104 minecraft:barrier replace
fill 519 -48 104 554 -46 104 minecraft:barrier replace
fill 519 -42 104 554 -40 104 minecraft:barrier replace

#一楼到二楼：右侧楼梯
fill 554 -61 101 560 -61 103 minecraft:stone_bricks replace
fill 560 -60 101 560 -60 103 minecraft:polished_andesite_stairs[facing=east,half=bottom] replace
fill 559 -59 101 559 -59 103 minecraft:polished_andesite_stairs[facing=east,half=bottom] replace
fill 558 -58 101 558 -58 103 minecraft:polished_andesite_stairs[facing=east,half=bottom] replace
fill 557 -57 101 557 -57 103 minecraft:polished_andesite_stairs[facing=east,half=bottom] replace
fill 556 -56 101 556 -56 103 minecraft:polished_andesite_stairs[facing=east,half=bottom] replace
fill 555 -55 101 555 -55 103 minecraft:polished_andesite_stairs[facing=east,half=bottom] replace
fill 555 -60 100 560 -52 100 minecraft:barrier replace
fill 555 -60 104 560 -52 104 minecraft:barrier replace

#二楼到三楼：左侧楼梯
fill 513 -55 101 519 -55 103 minecraft:stone_bricks replace
fill 513 -54 101 513 -54 103 minecraft:polished_andesite_stairs[facing=west,half=bottom] replace
fill 514 -53 101 514 -53 103 minecraft:polished_andesite_stairs[facing=west,half=bottom] replace
fill 515 -52 101 515 -52 103 minecraft:polished_andesite_stairs[facing=west,half=bottom] replace
fill 516 -51 101 516 -51 103 minecraft:polished_andesite_stairs[facing=west,half=bottom] replace
fill 517 -50 101 517 -50 103 minecraft:polished_andesite_stairs[facing=west,half=bottom] replace
fill 518 -49 101 518 -49 103 minecraft:polished_andesite_stairs[facing=west,half=bottom] replace
fill 513 -54 100 518 -46 100 minecraft:barrier replace
fill 513 -54 104 518 -46 104 minecraft:barrier replace

#三楼到四楼：右侧楼梯
fill 554 -49 101 560 -49 103 minecraft:stone_bricks replace
fill 560 -48 101 560 -48 103 minecraft:polished_andesite_stairs[facing=east,half=bottom] replace
fill 559 -47 101 559 -47 103 minecraft:polished_andesite_stairs[facing=east,half=bottom] replace
fill 558 -46 101 558 -46 103 minecraft:polished_andesite_stairs[facing=east,half=bottom] replace
fill 557 -45 101 557 -45 103 minecraft:polished_andesite_stairs[facing=east,half=bottom] replace
fill 556 -44 101 556 -44 103 minecraft:polished_andesite_stairs[facing=east,half=bottom] replace
fill 555 -43 101 555 -43 103 minecraft:polished_andesite_stairs[facing=east,half=bottom] replace
fill 555 -48 100 560 -40 100 minecraft:barrier replace
fill 555 -48 104 560 -40 104 minecraft:barrier replace

#防止玩家从楼梯外端离开竖平面
fill 512 -54 100 512 -46 104 minecraft:barrier replace
fill 561 -60 100 561 -40 104 minecraft:barrier replace
