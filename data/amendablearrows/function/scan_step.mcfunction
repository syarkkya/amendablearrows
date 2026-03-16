scoreboard players remove @s amendablearrows_steps 1
execute if block ~ ~ ~ amendments:liquid_cauldron run function amendablearrows:mark_cauldron
execute if score @s amendablearrows_steps matches 1.. unless block ~ ~ ~ amendments:liquid_cauldron positioned ^ ^ ^0.1 run function amendablearrows:scan_step