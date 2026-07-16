#重新抽取经济行动任务3的账本B以避免重复
execute store result score @s audit_book_b run random value 1..6
execute if score @s audit_book_b = @s audit_book_a run function rfm:task/action/economy/economy_3/reroll_b
