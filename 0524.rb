



C067:【ハッカー入門コラボ問題】数字の調査


3 44
4
2
6
・期待する出力は N 行からなります。
・i 行目 (1 ≦ i ≦ N) には X を 2 進数表現にしたときの右から k_i 番目の桁の数字を表す a_i を出力して下さい。
・すべて整数で出力してください。



input = gets.split(" ").map(&:to_i)
num = (1..input[0]).map{gets.chomp}.map(&:to_i)
array = []
array << input[1].to_s(2).split("")

p [-num[0]]






data = gets.split(" ").map(&:to_i)
count = data[0]
number = data[1]

(1..count).map{gets.chomp}.each do |i|
     puts number.to_s(2).split("").reverse[i.to_i-1]
end










































C074:【クロニクルコラボ問題】文章サイズ変更



6 8 6
My#name#
is#paiza
.#I#like
#program
ming#ver
y#much.#


input = gets.split(" ").map(&:to_i)

all = (1..input[0]).map{gets.chomp}

all.each do |i|
    all.join.split("")
    p all(0..input[1])
end


# ["My#name#", "is#paiza", ".#I#like", "#program", "ming#ver", "y#much.#"]
p all









data = gets.split(" ").map(&:to_i)
now_line = data[0]
now_width = data[1]
change_width = data[2]

text = (1..now_line).map{gets.chomp}.join

puts text.scan(/.{1,#{change_width}}/)

# p "foobar".scan(/../)               # => ["fo", "ob", "ar"]

# self に対して pattern を繰り返しマッチし、マッチした部分文字列の配列を返します。

# pattern が正規表現で括弧を含む場合は、括弧で括られたパターンにマッチした部分文字列の配列の配列を返します。

# [PARAM] pattern:
# 探索する部分文字列または正規表現
# 例

# p "foobar".scan(/../)               # => ["fo", "ob", "ar"]
# p "foobar".scan("o")                # => ["o", "o"]
# p "foobarbazfoobarbaz".scan(/ba./)  # => ["bar", "baz", "bar", "baz"]

# p "foobar".scan(/(.)/) # => [["f"], ["o"], ["o"], ["b"], ["a"], ["r"]]

# p "foobarbazfoobarbaz".scan(/(ba)(.)/) # => [["ba", "r"], ["ba", "z"], ["ba", "r"], ["ba", "z"]]



















# ruby　文字数　区切る　でググろうよ
###################################################################
















# C060:辞書の作成（

# 7 3 2
# dog cat bird cow bear rabbit mouse




input = gets.split(" ").map(&:to_i)
word = input[0]
word_page = input[1]
sarch_page = input[2]


words = gets.split(" ").sort
array = []
# ["dog", "cat", "bird", "cow", "bear", "rabbit", "mouse"]
# ["bear", "bird", "cat", "cow", "dog", "mouse", "rabbit"]
array = words([0..word_page.to_i - 1])
p array





# 配列　要素　分割　でググろう







data = gets.chomp.split(" ").map(&:to_i)
puts gets.chomp.split(" ").sort_by {|array| array.size}.sort.each_slice(data[1]).to_a[data[2]-1]




.sort_byで降順にしてる


ある配列を任意の長さ n ずつ分解したいです。
例えば、
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] を
[[0, 1, 2], [3, 4, 5], [6, 7, 8], [9, 10]] にしたいということです。

簡単にできるんです。そう Enumerable#each_slice ならね。


























C036:[もし女コラボ問題]犬ぞりトーナメント
1 3
2 4
988 876 921 906
866 911


com_a = gets.chomp.split(" ").map(&:to_i)
com_b = gets.chomp.split(" ").map(&:to_i)
pre = gets.chomp.split(" ").map(&:to_i)
final = gets.chomp.split(" ").map(&:to_i)

p pre[com_a[0]]






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