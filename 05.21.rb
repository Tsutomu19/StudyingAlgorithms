C024:

・SET i a : 変数 i に値 a を代入する (i = 1, 2)
・ADD a :「変数 1 の値 + a」を計算し、計算結果を変数 2 に代入する
・SUB a :「変数 1 の値 - a」を計算し、計算結果を変数 2 に代入する


3
SET 1 10
SET 2 20
ADD 40

input = gets.to_i
var1,var2 = [],[]
(1..input).each do
  type = gets.split(" ")
  i =  type[1].to_i
  a = type[2].to_i
  if type[0] == "SET" && i == 1
    var1 << a
  elsif type[0] == "SET" && i == 2
    var2 << a
  elsif type[0] == "ADD" && i == 2
    var2 << a
  elsif type[0] == "ADD" && i == 2
    var2 << a
  end
end
puts var1.sum.join(" ") var2.sum.join(" ")


# 一個の値しか入らないから、配列じゃなくていいのですね。。

# そう。。。問題起きました。。変数3つ準備してやるようにします
# そうですね。入れる前に＋ーしたり変化しますね、、わかりました。


data = (1..gets.to_i).map{gets.chomp.split(" ")}
data_A,data_B = 0,0

data.each do |f,g,h|
    if f =="SET"
        if g =="1"
            data_A = h.to_i
        else
            data_B = h.to_i
        end
    elsif f =="ADD"
        data_B = data_A + g.to_i
    else
        data_B = data_A - g.to_i
    end 
end

puts "#{data_A} #{data_B}"









C058:模様そろえ（想
# ・1 行目には箱の側面の数を表す N、
# そろえる向きを表す文字列 t、
# 最初の箱の向きを表す文字列 s 
# がこの順に半角スペース区切りで与えられます。
# 5 PAIZA ZAPAI




# 何をしたいか




input = gets.split(" ")
n = input[0].to_i
t = input[1].split('')
s = input[2].split('')
count = 0
# "ZAPAI"
# s　が　tと同じになるまで文字を入れ替える
t.each_with_index do |tt, i|
    until t == s
    t[i]
    end
end













data = gets.split(" ")

correct = data[1].split("")
miss = data[2].split("")
count = 0

if correct == miss
    return puts 0
end

loop do
    m = miss.shift
    miss << m
    count += 1
    break if miss.join("") == correct.join("")
end

p count
























C070

・1 行目に、ポーカーの手札の個数を表す整数 N が与えられます。
・続く N 行のうちの i 行目 (1 ≦ i ≦ N) には、i 番目の手札の情報を表す 4 個の数字からなる文字列が与えられます
。i 行目の文字列 s_i の j 番目 (1 ≦ j ≦ 4) の文字 s_{i, j} は、i 番目の手札の j 番目のカードに書かれた数字が s_{i, j} であるということを表します。


8
7777
2229
5566
2669
1689
1333
1189
3588
配列の中の配列の要素で、4枚中何枚同じ数があるか

cards = (1..gets.to_i).map{gets.chomp}.map(&:to_i)
answer = []

cards.each do |n|
    answer << n..split("").uniq
    if answer.count == 4
        puts "Four Card"
    elsif answer.count == 3
        puts "Three Card"
    elsif answer.count == 2
        puts "Two Card"
    elsif answer.count == 1
        puts "One Card"
    elsif answer.count == 0
        puts "No Pair"
    end
end



# yuki
cards = (1..gets.to_i).map{gets.chomp}.map(&:to_i)
answer = []

cards.each do |n|
    answer << n.split("").uniq
    if answer.count == 4
        puts "Four Card"
    elsif answer.count == 3
        puts "Three Card"
    elsif answer.count == 2
        puts "Two Card"
    elsif answer.count == 1
        puts "One Card"
    elsif answer.count == 0
        puts "No Pair"
    end
end



















C076:給与の計算
・1 行目には、通常の時給 X、夜の時給 Y、深夜の時給 Z 
がこの順に整数で半角スペース区切りで与えられます。
・2 行目には、出勤日数 N が整数で与えられます。
・続く N 行の i 番目 (1 ≦ i ≦ N) には
、i 日目の出勤時刻 S_i と退勤時刻 T_i がこの順に整数で半角スペース区切りで与えられます。
・入力は合計で N + 2 行となり、入力値最終行の末尾に改行が 1 つ入ります。

1000 1300 1500
4
0 9
9 17
17 22
22 23
・N 日間の給料の合計金額を整数で出力してください。


input = gets.split(" ").map(&:to_i)
x,y,z = input[0],input[1],input[2]
day = gets.to_i
answer = 0
(1..day).map{gets.split(" ").map(&:to_i)}
.each do |s,f|
    if s >= 9 && f <= 17
       answer = (f - s) * x
    elsif s >= 17 && f <= 22
        answer = answer + (f - s) * y
    else
        answer = answer + (f - s)%24.abs * z
    end
end
p answer