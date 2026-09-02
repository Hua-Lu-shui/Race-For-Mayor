tellraw @s [{"translate":"rfm.text.14443f1d3e54","color":"white"},{"translate":"rfm.text.996c7bc33057","color":"#C6A8FF","bold":true},{"translate":"rfm.text.bc4fc281e102","color":"white"}]
scoreboard players add #current_picker item_selecting 1
schedule function rfm:item/select/next 1t replace
