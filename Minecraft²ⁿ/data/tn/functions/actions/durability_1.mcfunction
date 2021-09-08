execute as @s[gamemode=!creative] store result score %durability enum run data get entity @s SelectedItem.tag.Damage
execute as @s[gamemode=!creative] run setblock ~ 0 ~ chest
execute as @s[gamemode=!creative] run data modify block ~ 0 ~ Items append from entity @s SelectedItem
execute as @s[gamemode=!creative] store result block ~ 0 ~ Items[0].tag.Damage int 1.0 run scoreboard players add %durability enum 1
execute as @s[gamemode=!creative] if score %durability enum matches 25.. run data remove block ~ 0 ~ Items
execute as @s[gamemode=!creative] run item replace entity @s weapon.mainhand from block ~ 0 ~ container.0
execute as @s[gamemode=!creative] run setblock ~ 0 ~ bedrock