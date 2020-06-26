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
my_kuji = (1..num).map{gets.split(" ").map(&:to_i)}
# tousenの配列とmy_kujiの配列を比較して同じ数字があればその数を表示したい。
my_kuji.each do |kuji|
    p (tousenn & kuji).uniq.count
end
# (array1 & array2).present?

# をググって
# 13ふんぐらいで溶けた。成長。





C039:古代の数式

<///////+<<</+////
→ 17 + 31 + 4 = 52


ones_place_count = 0
tens_place_count = 0
paiza_moji = gets.chomp.split("")
.each do |m|
    if m == "<"
        tens_place_count += 1
    elsif m == "/"
        ones_place_count += 1
        next m == "+"
    end
end
p tens_place_count * 10 + ones_place_count


# yuki
arr = gets.chomp.split("+")

answer = []
arr.each do |f|
    ten = f.count("<")
    one = f.count("/")
    number = 10 * ten + one
    answer << number
end
p answer.sum

# splitするときにそうするのか.......
# count("何か")便利だ
