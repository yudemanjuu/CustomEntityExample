#> ice_golem:action/attack/tick
# 攻撃行動tick処理

# 1、動かなくする
    execute if score @s ActionTimer matches 1 run attribute @s movement_speed base set 0.01

# 12、攻撃
    execute if score @s ActionTimer matches 12 run tag @s add This
    execute if score @s ActionTimer matches 12 positioned ~ ~1.5 ~ run function ice_golem:action/attack/particle
    execute if score @s ActionTimer matches 12 positioned ^ ^ ^2.1 run tag @e[distance=..2,type=!#ice_golem:no_damage] add Attacked
    execute if score @s ActionTimer matches 12 as @e[tag=Attacked] run damage @s 3 freeze by @n[tag=This] from @n[tag=This]
    execute if score @s ActionTimer matches 12 as @e[tag=Attacked] run damage @s 7 mob_attack by @n[tag=This] from @n[tag=This]
    execute if score @s ActionTimer matches 12 run tag @s remove This
    execute if score @s ActionTimer matches 12 run tag @e[tag=Attacked] remove Attacked
# 25、行動終了
    execute if score @s ActionTimer matches 25 run scoreboard players set @s ActionID 0
    execute if score @s ActionTimer matches 25 run attribute @s movement_speed base set 0.25
