execute if score @s audit_book_c matches 1 if score @s audit_target matches 3 run function rfm:task/action/economy/economy_3/books/a_false {slot:"C",slot_id:3}
execute if score @s audit_book_c matches 1 unless score @s audit_target matches 3 run function rfm:task/action/economy/economy_3/books/a_true {slot:"C",slot_id:3}
execute if score @s audit_book_c matches 2 if score @s audit_target matches 3 run function rfm:task/action/economy/economy_3/books/b_false {slot:"C",slot_id:3}
execute if score @s audit_book_c matches 2 unless score @s audit_target matches 3 run function rfm:task/action/economy/economy_3/books/b_true {slot:"C",slot_id:3}
execute if score @s audit_book_c matches 3 if score @s audit_target matches 3 run function rfm:task/action/economy/economy_3/books/c_false {slot:"C",slot_id:3}
execute if score @s audit_book_c matches 3 unless score @s audit_target matches 3 run function rfm:task/action/economy/economy_3/books/c_true {slot:"C",slot_id:3}
execute if score @s audit_book_c matches 4 if score @s audit_target matches 3 run function rfm:task/action/economy/economy_3/books/d_false {slot:"C",slot_id:3}
execute if score @s audit_book_c matches 4 unless score @s audit_target matches 3 run function rfm:task/action/economy/economy_3/books/d_true {slot:"C",slot_id:3}
execute if score @s audit_book_c matches 5 if score @s audit_target matches 3 run function rfm:task/action/economy/economy_3/books/e_false {slot:"C",slot_id:3}
execute if score @s audit_book_c matches 5 unless score @s audit_target matches 3 run function rfm:task/action/economy/economy_3/books/e_true {slot:"C",slot_id:3}
execute if score @s audit_book_c matches 6 if score @s audit_target matches 3 run function rfm:task/action/economy/economy_3/books/f_false {slot:"C",slot_id:3}
execute if score @s audit_book_c matches 6 unless score @s audit_target matches 3 run function rfm:task/action/economy/economy_3/books/f_true {slot:"C",slot_id:3}
kill @e[type=minecraft:item_display,tag=rfm_audit_model_c]
kill @e[type=minecraft:interaction,tag=rfm_audit_book_c]
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
