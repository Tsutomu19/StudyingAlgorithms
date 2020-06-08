

# C052:ゲームの画面
# 描画する画素数は (30 × 240) + (30 × 180) - (30 × 30) = 11700 画素となります。



input = gets.split(" ").map(&:to_i)
h,w = input[0],input[1]


lines = readlines(chomp: true).map{|line| line.split(' ').map(&:to_i)}
h,w = input[0][0],input[0][1]
p h




input = gets.split(" ").map(&:to_i)
h,w = input[0],input[1]

move = gets.split(" ").map(&:to_i)
dy,dx = move[0],move[1]

if 
    p (|dx| * h) + (|dy| * w) - (|dx| * |dy|)
else
end









# D153:食材選び
# 100 200 300

p gets.split(" ").map(&:to_i).sort[1]



# C066:金魚すくい

# あなたは N 個のポイを順に使って 
# 1 番目の金魚から M 番目までを順番にすくうことにしました。

# 5 2 10
# 5
# 5
# 3
# 1
# 4

input = gets.split(" ").map(&:to_i)
m,n,x = input[0],input[1],input[2]

line = (1..m).map{ gets.chomp.split(" ").map(&:to_i)}
p line




input = gets.split(" ").map(&:to_i)
m,n,x = input[0],input[1],input[2]
weigth =  (1..m).map{ gets.chomp.split(" ").map(&:to_i) }
.each do |w|
    
end





# yuki
# C066:金魚すくい

# あなたは N 個のポイを順に使って 
# 1 番目の金魚から M 番目までを順番にすくうことにしました。

# 5 2 10
# 5
# 5
# 3
# 1
# 4
data = gets.split(" ").map(&:to_i)

fish_count = data[0]
poi_count = data[1]
poi_power = data[2]

fish = (1..fish_count).map{gets.chomp}.map(&:to_i)
answer = 0

fish.each do |f|
  # ポイにダメージ
    poi_power -= f
    
    # もしポイの耐久力があったら
    if poi_power > 0
      # 釣れた数が増える
        answer +=1
    else # ダメだったら
      # まずポイを減らす
        poi_count -= 1
      # ポイが無くなったらそこで終わり、breakして繰り返し終了
        break if poi_count == 0
      # ゲームが続くなら、ポイのパワーを復活
        poi_power = data[2]
      # そもそも勝てないサイズの魚がきたらそこで終了、breakしてputsへ。
        break if f >= data[2]
      # ゲームが続くなら、eachで次の魚に行かないようにredoさせる
        redo if poi_count > 0
    end
end

p answer











C049:【ぱいじょ！コラボ問題】エレベーター


floor = (1..gets.to_i).map{gets.chomp}.map(&:to_i)
# [3, 1, 4]
answer = []
answer << floor[0] -1
p answer
floor.each do |f|

end



















# yuki
count = gets.to_i
ans = [0]
elelog = [1]

(1..count).map{gets.chomp}.map(&:to_i).each do |f|
    ans << (elelog.last - f).abs if elelog.last != f
    elelog << f
end

p ans.sum








# C042:リーグ表の作成
これをまとめると以下のような表にすることができます。
ここで、i 行 j 列目 (i ≠ j) は参加者 i から見た参加者 j との試合の結果を表し、
勝利なら "W"、敗北なら "L" となります。i 行 i 列目は「参加者 i と参加者 i の試合」
という存在しない試合に対応するので半角ハイフン ("-") で埋めます。
# 3
# 1 3
# 2 1
# 2 3

input = (1..gets.to_i).map{gets.split(" ").map(&:to_i)}
# [[1, 3], [2, 1], [2, 3]]

answer = []
input.each do |f,s|
if f == 1 && s == 3
    answer << "W"
elsif 
end
f,s 
p answer.join("")





member = gets.to_i
# チーム数　×　（チーム数　－　１）　÷　２
battle_count = member*(member-1) / 2

log_battle = (1..battle_count).map{gets.split(" ").map(&:to_i)}.sort {|a,b| a[0] <=> b[0]}

for i in 1..member do
    for j in 1..member do
        if i == j
            print "-"
            print " " unless j == member
            # iが1でjが2の時、つまり1番が2番に買っているか負けているか
            # 勝ちがあればーみたいな
        elsif log_battle.include?([i,j])
            print "W"
            print " " unless j == member
        else
            print "L"
            print " " unless j == member
        end
    end
    puts 
end