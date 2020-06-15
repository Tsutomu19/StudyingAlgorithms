D028:数字の桁数

ある10進数の正の整数nが与えられます。

nが何桁かを数字で出力


数の子すうをみる



100
arr = []
 arr << gets.split("")

 p arr.count


# 回答
 i = gets.split("").map(&:to_i)

 p (i.count - 1)
 






 あなたは文字列として記録された天気の分析をしています。
その文字列は晴れの日を "S" 雨の日を "R" とし、 1 日ごとに記録していった長さ n の文字列です。

文字列に記録された晴れの日数と、雨の日数をスペース区切りで出力してください。







i = gets.to_i
data = gets
p data







i = gets.to_i
data = gets.chomp
sun = 0
data.each_char do |moji|
    if moji == "S"
        sun += 1
    end
end
puts "#{sun}" + " " + "#{i-sun}"




d_count = gets.to_i
data = gets.chomp
sunny_day = 0
data.each_char do |moji|
    if moji == "S"
        sunny_day += 1
    end
end
puts "#{sunny_day}" + " " + "#{d_count-sunny_day}"








"hello世界".chars # => ["h", "e", "l", "l", "o", "世", "界"]
Stirng#each_charと同じように動作します。
文字をバラバラ、ばらばら