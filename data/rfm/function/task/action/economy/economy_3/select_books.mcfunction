#从六种工程账本中抽取三种，三个位置之间不重复
execute store result score @s audit_book_a run random value 1..6
function rfm:task/action/economy/economy_3/reroll_b
function rfm:task/action/economy/economy_3/reroll_c
