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




1 2 3 4 5 6
3
1 5 4 2 3 6
9 6 2 7 1 5
32 9 87 33 41 60

tousenn = gets.split(" ").map(&:to_i)
num = gets.to_i
my_kuji = (1..num).map{gets.split(" ")}.map(&:to_i)
# tousenの配列の中から同じ数字があればその数だけ出したい。
my_kuji.each do |kuji|
    p (tousenn & kuji).uniq.count
end


array1 & array2).present?
