D143:制動距離の計算


# 以上の値が与えられるので、制動距離 L を求めるプログラムを作成してください。
# ただし、小数点以下は切り捨てて出力してください。


input = gets.split(" ").map(&:to_i)
mass,velocity,force = input[0],input[1],input[2]
length = (mass * velocity ** 2) / (2 * force)
p length.floor


D079:同じ文字
# 単純なパスワード入力を防ぐために手始めに 全ての文字が同じ パスワードであった場合は "NG" と出力し、それ以外は "OK" と出力してください。
# 出力最後に改行を 1 つ入れ、余計な文字、空行を含んではいけません


# 配列の要素の出現回数を知りたい。


string = gets.split(" ")
string.size - string.uniq.size == 0 ? puts "NG" : puts "OK"
# これだと重複しているモノの数がでる

# AAAAAA
# =>1



p string = gets.chomp.split("")

count = Hash.new(0)
string.each do |elem|
  count[elem] += 1
end
p count















string = gets.chomp.split("")

count = Hash.new(0)
string.each do |elem|
  count[elem] += 1
end


if string.size - count["A"] == 0 
    puts "NG"
else
    puts "OK"
end


string = gets.chomp.split("")
moji = string[0]
unless string.include?(moji)
    
end




if string.size - count["A"] == 0 
    puts "NG"
else
    puts "OK"
end


# 要素が全て同じ
# 全ての値が同一
# 重複が一つ



string = gets.chomp.split("")
string.uniq.count == 1 ? puts "NG" : puts "OK"



string = gets.chomp.split("")
if string.uniq.count == 1 
    puts "NG" 
else 
    puts "OK"
end



D037:花粉症でつらい

# あなたは花粉症でティッシュを毎日使っては買いに行くのを繰り返していましたが、必要なティッシュ箱の数を計算し一気に注文しようと考えました。

# ティッシュ1箱が空になるまでの期間を M 日、残りの花粉症の季節を N 日が改行区切りで入力されるので、花粉症の季節が終わるまでに必要なティッシュ箱の数を求めて下さい。

# 例えば、ティッシュ1箱が空になるまでの期間を 7 日、残りの花粉症の季節を 30 日とした時

box = gets.to_i
day = gets.to_i
p day.div(box) + 1



# 回答

box = gets.to_i
day = gets.to_i
need = day.divmod(box)
if need[1] == 0
    p need[0]
else
    p need[0] + 1
end




# 最終的な回答
box,day = gets.to_i,gets.to_i
need = day.divmod(box)
need[1] == 0 ? (p need[0]) : (p need[0] + 1)

# ()が必要なようだ





D112:工場の生産力

product,hour = gets.to_i,gets.to_i
p product * hour















D062:ひな祭り




num = gets.split(" ").map(&:to_i)
upper,middle,lower = num[0],num[1],num[2]
dolls = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
puts dolls[0..upper - 1].join("")
puts dolls[upper..middle ].join("")
puts dolls[middle..lower - 1].join("")
# 一応通るけど




# 地続きのやつこれ使おう
row = gets.split(" ").map(&:to_i)
ningyou = ("A".."J").to_a
row.size.times {|i| puts ningyou.shift(row[i]).join }









puts 40 <= gets.to_i && gets.to_i <=60 ? "OK" : "NG"


# 範囲があるときはこれ
puts gets.to_i.between?(40,60) ? "OK":"NG"








