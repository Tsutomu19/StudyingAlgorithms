
D123:自動でチャージ

money = gets.to_i
p money < 10000 ? money + 10000 : money



D103:逆さ読み
string = gets.chomp.split("")
p string.reverse

# 回答
puts gets.chomp.split("").reverse.join
# ok


C017:ハイアンドロー・カードゲーム
7 3
4
7 1
7 4
5 3
10 1

# 問題理解するのに40分くらい........
parent = gets.split(" ").map(&:to_i)
num = gets.to_i
(1..num).map{gets.split(" ").map(&:to_i)}
.each do |c|
    if parent[0] > c[0]
        puts "High"
    elsif parent[0] < c[0]
        puts "Low"
    else
        if parent[1] < c[1]
            puts "Low"
        else parent[1] > c[1]
            puts "High"
        end
    end
end





parent = gets.split(" ").map(&:to_i)
num = gets.to_i
(1..num).map{gets.split(" ").map(&:to_i)}
.each do |c|
    if parent[0] > c[0]
        puts "High"
    elsif parent[0] < c[0]
        puts "Low"
    else
        if parent[1] < c[1]
            puts "High"
        else parent[1] > c[1]
            puts "Low"
        end
    end
end