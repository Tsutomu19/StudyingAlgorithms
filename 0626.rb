
D123:自動でチャージ

money = gets.to_i
p money < 10000 ? money + 10000 : money



D103:逆さ読み
string = gets.chomp.split("")
p string.reverse

# 回答
puts gets.chomp.split("").reverse.join
# ok