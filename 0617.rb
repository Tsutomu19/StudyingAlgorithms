D143:制動距離の計算


以上の値が与えられるので、制動距離 L を求めるプログラムを作成してください。
ただし、小数点以下は切り捨てて出力してください。


input = gets.split(" ").map(&:to_i)
mass,velocity,force = input[0],input[1],input[2]
length = (mass * velocity ** 2) / (2 * force)
p length.floor


D079:同じ文字
単純なパスワード入力を防ぐために手始めに 全ての文字が同じ パスワードであった場合は "NG" と出力し、それ以外は "OK" と出力してください。
出力最後に改行を 1 つ入れ、余計な文字、空行を含んではいけません


配列の要素の出現回数を知りたい。


string = gets.split(" ")
string.size - string.uniq.size == 0 ? puts "NG" : puts "OK"
これだと重複しているモノの数がでる

AAAAAA
=>1



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


要素が全て同じ
全ての値が同一
重複が一つ



string = gets.chomp.split("")
string.uniq.count == 1 ? puts "NG" : puts "OK"



string = gets.chomp.split("")
if string.uniq.count == 1 
    puts "NG" 
else 
    puts "OK"
end