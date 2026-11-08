#> ice_golem:action/ranged_attack/start
# 遠距離攻撃行動スタート

# スコアを設定
    scoreboard players set @s ActionID 4
    scoreboard players set @s ActionTimer 1

# AJModelをアニメーションさせる
    execute as @n[tag=ThisAJModel] run function aj:ice_golem/animations/ranged_attack/play