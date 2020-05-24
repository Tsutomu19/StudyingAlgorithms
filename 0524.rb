



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
