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


