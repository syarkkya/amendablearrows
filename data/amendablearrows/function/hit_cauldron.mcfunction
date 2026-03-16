execute as @a[distance=..6,limit=1,sort=nearest] store result score @s amendablearrows_arrows run clear @s minecraft:arrow 0
execute as @a[distance=..6,limit=1,sort=nearest] if score @s amendablearrows_arrows matches 1.. run function amendablearrows:craft_arrows
kill @s