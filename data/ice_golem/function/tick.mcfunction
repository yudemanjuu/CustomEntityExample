#> ice_golem:tick
# ice_golemのtick処理、AIエンティティが実行

# タグ付け
    function ice_golem:tag_linked_entity with entity @s data

# 死亡
    execute store result score @s Health run data get entity @s Health
    execute if score @s Health matches ..960 if score @s ActionID matches ..99 run function ice_golem:action/death/start

# 攻撃選択AI
    execute if score @s ActionID matches ..2 run function ice_golem:ai

# 歩行、AJModelとの同期ずれで判定
    execute if score @s ActionID matches ..1 if entity @n[tag=ThisAJModel,distance=0.02..] run function ice_golem:action/walk/start

# 待機
    execute unless score @s ActionID matches 1.. run function ice_golem:action/idle/start

# 行動のtick処理
    function ice_golem:action/tick

# 位置と向きを同期
    execute rotated ~ 0 run tp @n[tag=ThisAJModel] ~ ~ ~ ~ ~

# ダメージを受けたら赤く
    execute if data entity @s {HurtTime:10s} as @n[tag=ThisAJModel] run function aj:ice_golem/variants/hurt/apply
    execute if data entity @s {HurtTime:1s} as @n[tag=ThisAJModel] run function aj:ice_golem/variants/default/apply
# reset
    tag @e[tag=ThisAJModel] remove ThisAJModel