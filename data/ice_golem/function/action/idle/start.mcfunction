#> ice_golem:action/idle/start
# 待機行動スタート

# スコアを設定
    scoreboard players set @s ActionID 1
    scoreboard players set @s ActionTimer 1

# AJModelをアニメーションさせる
    execute as @n[tag=ThisAJModel] run function aj:ice_golem/animations/idle/play