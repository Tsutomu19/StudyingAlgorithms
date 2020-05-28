# 1 行目には、プレイヤーの人数 N が整数で与えられます。
# ・2 行目には、N 個の文字列が与えられます。

num = gets.to_i
(1..num).



a = gets.to_i
data = gets.split(" ")
max = data.map(&:to_i).max
index = data.map(&:to_i).index(max)


if data.include?("0") && data.include?("x10")
    data[index] = 0
    p data.map(&:to_i).map{|a| a*10 }.sum
    
elsif data.include?("x10")
    p data.map(&:to_i).map{|a| a*10 }.sum
    
elsif data.include?("0")
    data[index] = 0
    p data.map(&:to_i).sum
    
else
    p data.map(&:to_i).sum
    
end













C078:株の売買

1 行目には、株を売買する日数を表す整数 N、
株の売買条件を表す整数 c_1, c_2 が
この順で半角スペース区切りで与えられます。

N 日目に持ち株をすべて売ったあとの損益を出力してください


5 110 120
110
100
120
130
105




input = gets.split(" ").map(&:to_i)
answer = []
(1..input[0]).map{gets.chomp}.map(&:to_i)
.each do |n|
    if n <= input[1]
        answer << n
    elseif n >= input[2]
        answer.sum
    end
end











data = gets.split(" ").map(&:to_i)
last_day = data[0]
buy = data[1]
sell = data[2]
income = 0
stock_count = 0
stock_price = (1..last_day).map{gets.chomp}.map(&:to_i)

stock_price.each do |f|
    if f <= buy
        stock_count += 1
        income -= f
    elsif f >= sell
        income += f*stock_count
        stock_count = 0
    else
        next
    end
end

income += stock_price.last*stock_count if stock_count != 0

p income




C017:ハイアンドロー・カードゲーム
5 1
2
7 2
1 4
parent = gets.split(" ").map(&:to_i)
num = gets.to_
(1..num).map{gets.split(" ").map(&:to_i)}.
.each do |f,s|
    if f <= parent[0]
        puts "High"
    else
        puts "Low"
    end
end