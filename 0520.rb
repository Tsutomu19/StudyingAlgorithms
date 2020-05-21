C040:【ロジサマコラボ問題】背比べ
# 6
# le 120.3
# ge 115.7
# le 122.0
# ge 116.9
# le 119.1
# le 117.6

身長がわからない子供の身長が h_i 以下のとき c_i は "le"、h_i 以上のとき "ge" となります。
ただし h_i と同じ時は "le" となります。
("le", "ge" はそれぞれ "less than or equal to", "greater than or equal to" の略で「〜以下」「〜以上」の意味



求める子供の身長のとりうる範囲の最小値、最大値 (cm) を
この順に半角スペース区切りで出力してください。
各値は入力と同じ小数第 1 位までを含む小数で出力してください。

input_line = gets.to_i
count = 0
# for i in 1..input_line
(1..input_line).each do
    tests = gets.split(" ")
    rikei =  tests[2..3].map(&:to_i).sum
    bunkei = tests[4..5].map(&:to_i).sum
    summary = tests[1..5].map(&:to_i).sum
    if summary >= 350 && (tests[0] == "l" && bunkei >= 160 || tests[0] == "s" && rikei >= 160)
        count = count + 1
    end
end
puts count






number = gets.to_i
answer = []
(1..number).each do
    mm = gets.split(" ")
    tall =  mm[1].to_i
    if
        answer << 
    end
end
puts answer.join(" ")





data = (1..gets.to_i).map{gets.chomp.split(" ")}

less_than = []
greater_than = []

data.each do |f|
    if f[0] == "le"
       less_than <<  f[1].to_f
    else
        greater_than << f[1].to_f
    end
end

puts "#{greater_than.max} #{less_than.min}"





C021:暴風域にいますか？
0 0 1 2
3
0 0
1 1
4 2
1 から n 番目の人まで順に、暴風域にいれば "yes"、そうでなければ "no" を、それぞれ一行に出力してください。

input = gets.split(" ").map(&:to_i)
c, cc, r1, r2 = input[0],input[1],input[2],input[3]

(1..gets.to_i).map{gets.split(" ")}
.each do |x,y|
    if r1 **2 <= (x - c) **2 + (y - cc) **2 && (x - c) **2 + (y - cc) **2 <= r2 **2
        puts "yes"
    else
        puts "no"
    end
end
