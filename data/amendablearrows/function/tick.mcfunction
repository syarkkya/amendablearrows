execute as @e[type=interaction,tag=amendablearrows_interact] run scoreboard players remove @s amendablearrows_life 1
execute as @e[type=interaction,tag=amendablearrows_interact] if score @s amendablearrows_life matches ..0 run kill @s

execute as @e[type=interaction,tag=amendablearrows_interact] if data entity @s interaction at @s run function amendablearrows:hit_cauldron

execute as @a if items entity @s weapon.mainhand arrow at @s anchored eyes positioned ^ ^ ^ run function amendablearrows:scan
execute as @a if items entity @s weapon.offhand arrow at @s anchored eyes positioned ^ ^ ^ run function amendablearrows:scan