#生成固定文字的设置告示牌；当前设置值通过点击后的聊天提示反馈
setblock 63 -49 -21 minecraft:cherry_wall_sign[facing=west,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"text":"计票动画开关","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 11"}}','""','""']}}
setblock 63 -49 -19 minecraft:cherry_wall_sign[facing=west,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"text":"决策倒计时时长","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 12"}}','""','""']}}
