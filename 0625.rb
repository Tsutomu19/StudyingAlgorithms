D115:【エンジニア死滅コラボ問題】おかしの二等分
okashi = gets.to_i
p okashi.even? ? okashi / 2 : (okashi - 1) / 2


D105:長さの一致

# 1
string_a,string_b = gets.split,gets.split
puts string_a.count == string_b.count ? "Yes" : "No"

# 2
string_a,string_b = gets.split(""),gets.split("")
puts string_a.count == string_b.count ? "Yes" : "No"

# 3
string_a,string_b = gets.chomp.split(""),gets.chomp.split("")
puts string_a.count == string_b.count ? "Yes" : "No"