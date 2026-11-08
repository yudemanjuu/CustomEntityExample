#> ice_golem:action/walk/tick
# 死亡行動tick処理

# 赤くする
    execute as @n[tag=ThisAJModel] run function aj:ice_golem/variants/hurt/apply

# 1、動かなくする
    execute if score @s ActionTimer matches 1 run attribute @s knockback_resistance base set 10000
    execute if score @s ActionTimer matches 1 run attribute @s movement_speed base set 0.01
    # fx
        execute if score @s ActionTimer matches 1 run particle poof ~ ~ ~ 0.2 0.2 0.2 0.25 20
        execute if score @s ActionTimer matches 1 run particle block{block_state:{id:"ice"}} ~ ~0.2 ~ 0.2 0.4 0.2 0.2 100

# 25、死ぬ
    # fx
        execute if score @s ActionTimer matches 25 run particle poof ~ ~ ~ 0.2 0.2 0.2 0.1 20
        execute if score @s ActionTimer matches 25 run playsound block.glass.break hostile @a ~ ~ ~ 1 1
    execute if score @s ActionTimer matches 25 as @n[tag=ThisAJModel] run function aj:ice_golem/remove/this
    execute if score @s ActionTimer matches 25 run kill @s