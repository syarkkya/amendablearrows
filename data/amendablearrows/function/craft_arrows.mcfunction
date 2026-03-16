scoreboard players set #max amendablearrows_arrows 16
execute if score @s amendablearrows_arrows > #max amendablearrows_arrows run scoreboard players operation @s amendablearrows_arrows = #max amendablearrows_arrows

execute store result storage amendablearrows:macro count int 1 run scoreboard players get @s amendablearrows_arrows
data modify storage amendablearrows:macro potion_data set from block ~ ~ ~ fluid.components."minecraft:potion_contents"

function amendablearrows:give_arrows with storage amendablearrows:macro

playsound minecraft:item.bottle.fill block @a ~ ~ ~ 1 1
particle minecraft:splash ~0.5 ~0.8 ~0.5 0.2 0.1 0.2 1 15

data modify storage amendablearrows:macro fluid set from block ~ ~ ~ fluid

execute if block ~ ~ ~ amendments:liquid_cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron replace
execute if block ~ ~ ~ amendments:liquid_cauldron[level=2] run data modify storage amendablearrows:macro fluid.count set value 1
execute if block ~ ~ ~ amendments:liquid_cauldron[level=2] run data modify storage amendablearrows:macro level set value 1
execute if block ~ ~ ~ amendments:liquid_cauldron[level=2] run function amendablearrows:set_block with storage amendablearrows:macro
execute if block ~ ~ ~ amendments:liquid_cauldron[level=3] run data modify storage amendablearrows:macro fluid.count set value 2
execute if block ~ ~ ~ amendments:liquid_cauldron[level=3] run data modify storage amendablearrows:macro level set value 2
execute if block ~ ~ ~ amendments:liquid_cauldron[level=3] run function amendablearrows:set_block with storage amendablearrows:macro