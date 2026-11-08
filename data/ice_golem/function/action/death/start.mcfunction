#> ice_golem:action/death/start
# 死亡行動スタート

# スコアを設定
    scoreboard players set @s ActionID 100
    scoreboard players set @s ActionTimer 1

# AJModelをアニメーションさせる
    execute as @n[tag=ThisAJModel] run function aj:ice_golem/animations/_/stop
    execute as @n[tag=ThisAJModel] run function aj:ice_golem/animations/death/play