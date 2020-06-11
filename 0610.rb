# 1回目の組み合わせの番号を決定
pair_a = gets.chomp.split(" ").map(&:to_i)
pair_b = gets.chomp.split(" ").map(&:to_i)

# 1回目の速度を設定
@first_time = gets.chomp.split(" ").map(&:to_i)

# エントリーナンバーに応じた速度を設定
a = @first_time[pair_a[0]-1]
b = @first_time[pair_a[1]-1]
c = @first_time[pair_b[0]-1]
d = @first_time[pair_b[1]-1]

# 1回戦目の勝利判定
def which_win(a,b)
    if a > b
        @first_time.index(b)+1
    else
        @first_time.index(a)+1
    end
end

# 勝者を変数に代入
winner_a = which_win(a,b)
winner_b = which_win(c,d)

# 次の速度は、エントリーナンバーが少ない順に来る
# そのため、あらかじめ勝者の順番も整えておく
# なぜなら、そこが揃っているとif文で判定がきっと書きやすくなるから
sort_ab = []
sort_ab << winner_a
sort_ab << winner_b
# 変数に入れるのがめんどくさいため、破壊的に変更
sort_ab.sort!

last_time = gets.chomp.split(" ").map(&:to_i)

# 最後の判定、勝者の順番を揃えていたから0,1のようにして呼び出せる
if last_time[0] < last_time[1]
    puts sort_ab[0]
    puts sort_ab[1]
else
    puts sort_ab[1]
    puts sort_ab[0]
end




tsutomu2020/05/24
com_a = gets.chomp.split(" ").map(&:to_i)
com_b = gets.chomp.split(" ").map(&:to_i)
pre = gets.chomp.split(" ").map(&:to_i)
final = gets.chomp.split(" ").map(&:to_i)

# 数値比べて勝った方を配列に
winner = []
if pre[com_a[0] -1 ] < pre[com_a[1] -1 ]
    winner << com_a[0] 
else
    winner << com_a[1] 
end


if pre[com_b[0] -1 ] < pre[com_b[1] -1 ]
    winner << com_b[0] 
else
    winner << com_b[1] 
end

# 考え方がよく分からず、手が動きませんでした。




1 3
2 4
988 876 921 906
866 911



a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
first = gets.split(" ").map(&:to_i)
winner_a = []
winner_b = []

if first[a-1] < first[b-1]
    p winner_a << a[a-1]
else
    winner_a << a[a-1]
end




first.each do |f|
    if f[]
winner << f[f+1]
# 比較して大きい方を入れる
end



second = gets.split(" ").map(&:to_i)



1番目と3番目を抜き取る


犬ぞりトーナメントレース大会の優勝者と準優勝者のエントリーナンバーをこの順に改行区切りで出力してください。
出力の末尾に改行を 1 つ入れ、余計な文字、空行を含んではいけません。




team_a, team_b = gets.split(" ").map(&:to_i).sort, gets.split(" ").map(&:to_i).sort

data_first = gets.split(" ").map(&:to_i)

next_battle = []
data_first[team_a[0]-1] > data_first[team_a[1]-1]? next_battle << team_a[1] : next_battle << team_a[0]
data_first[team_b[0]-1] > data_first[team_b[1]-1]? next_battle << team_b[1] : next_battle << team_b[0]

final = next_battle.sort
data_second = gets.split(" ").map(&:to_i)


# sortをちゃんとかけてるからこれで済む
if data_second[0] > data_second[1]
    p final[1],final[0]
else
    p final[0],final[1]
end





C072:モンスターの進化

C072:モンスターの進化
100 150 200
3
paizabird 100 200 130 180 80 120
paizawolf 180 220 100 120 90 140
paizasheep 80 110 150 220 170 250



[["paizabird", "100", "200", "130", "180", "80", "120"], 
["paizawolf", "180", "220", "100", "120", "90", "140"], 
["paizasheep", "80", "110", "150", "220", "170", "250"]]




now_level = gets.split(" ").map(&:to_i)
revolution_num = gets.to_i
monster = (1..revolution_num).map{gets.split(" ")}

now_level.each do |atk,def,agi|
    if 
end





puts "no evolution"






data, count_e = gets.split(" ").map(&:to_i), gets.to_i

all_data = (1..count_e).map{gets.chomp.split(" ")}
next_evol = []

all_data.each {|d| next_evol << d[0] if data[0].between?(d[1].to_i,d[2].to_i) && data[1].between?(d[3].to_i,d[4].to_i) && data[2].between?(d[5].to_i,d[6].to_i) }

puts next_evol == [] ? "no evolution" : next_evol



最終的に何をする？を意識しよう
結局何する？を意識しながら読む
俺は何したらいいんだね
早いの
番号出すんやね
速度の番号が連動



C062:回転寿司のメロン
init = gets.to_i
foods = []

init.times do |i|
  foods.push(gets.to_s.chomp)
end

foods.each_with_index do |food,i|
  if food == "melon"
    foods.slice!(i+1,10)
  end
end

p foods.count("melon")



15
melon
ikura
sake
kappa
maguro
melon
uni
toro
ebi
amaebi
tamagoyaki
ika
anago
melon
hamachi

あなたはメロンを食べきるのに、自分の前に 10 皿流れていく程度の時間がかかります。
メ
食べられるメロン "melon" の数を出力してください。

# ["melon", "ikura", "sake", "kappa", "maguro", "melon", "uni", "toro", "ebi", "amaebi", "tamagoyaki", "ika", "anago", "melon", "hamachi"]

sushi = (1..gets.to_i).map{gets.chomp}
melon = 0

sushi.each_with_index do |s,i|
    if s == "melon"
        s.slice(i..i+10)
        melon +=1
    end
end
p melon

melonがあったら配列へ、10ことって配列へ
batu



sushi = (1..gets.to_i).map{gets.chomp}
melon = 0
sushi.each_with_index do |s,i|
    if s == "melon"
        sushi.slice!(i+1,10)
        melon +=1
    end
end
p melon





6 8 6
My#name#
is#paiza
.#I#like
#program
ming#ver
y#much.#


input = gets.split(" ").map(&:to_i)
height = input[0]
wide = input[0]
after_wide = input[0]

p (1..height).map{gets.chomp!.split("")}
"My#name#\nis#paiza\n.#I#like\n#program\nming#ver\ny#much.#\n"
"My#name#is#paiza.#I#like#programming#very#much.#"


input = gets.split(" ").map(&:to_i)
height = input[0]
wide = input[0]
after_wide = input[0]

moji = (1..height).map{gets.chomp!.split("")}.join("")
moji.
puts ""



input = gets.split(" ").map(&:to_i)
height = input[0]
wide = input[0]
after_wide = input[0]
arr = []
moji = (1..height).map{gets.chomp!.split("")}.flatten
moji.each_with_index do |m,i|
    arr << moji.slice(i..after_wide-1)
end
p arr


["M", "y", "#", "n", "a", "m", "e", "#", "i", "s", "#", "p", "a", "i", "z", "a", ".", "#", "I", "#", "l", "i", "k", "e", "#", "p", "r", "o", "g", "r", "a", "m", "m", "i", "n", "g", "#", "v", "e", "r", "y", "#", "m", "u", "c", "h", ".", "#"]



input = gets.split(" ").map(&:to_i)
height = input[0]
wide = input[0]
after_wide = input[0]
arr = []
moji = (1..height).map{gets.chomp!.split("")}.flatten
moji.do |m|
    arr << moji[0..5].to_a
end
p arr





input = gets.split(" ").map(&:to_i)
height = input[0]
wide = input[0]
after_wide = input[0]
arr = []
moji = (1..height).map{gets.chomp!.split("")}.flatten
moji.each do |m|
    arr << moji.each_slice(3).to_a
end
p arr



data = gets.split(" ").map(&:to_i)
now_line = data[0]
now_width = data[1]
change_width = data[2]

text = (1..now_line).map{gets.chomp}.join

puts text.scan(/.{1,#{change_width}}/)








input = gets.split(" ").map(&:to_i)
height = input[0]
wide = input[0]
after_wide = input[0]
arr = []
moji = (1..height).map{gets.chomp!.split("")}.flatten
moji.each do |m|
    arr << m.each_slice(6).to_a
    p arr
end






input = gets.split(" ").map(&:to_i)
height = input[0]
wide = input[0]
after_wide = input[0]
arr = []
moji = (1..height).map{gets.chomp!.split("")}.flatten
    arr << moji.each_slice(after_wide).to_a
arr.each do |aa|
    aa.each do |a|
        p a
    end
end