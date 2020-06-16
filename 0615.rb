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




D077:計算機の表示
その計算機は最大で4桁までしか表示できず 9,999 より大きな数字は表示が出来ず "NG" と表示されます。
2つの正の整数 a, b が入力されるので、a と bを掛け算した時 9,999 以下であれば掛け算した結果を出力し、10,000 以上の場合は "NG" と出力するプログラムを作成してください。



input = gets.split(" ").map(&:to_i)
a,b = input[0], input[1]
result = a * b
result <= 9999 ? p result : puts "NG"

if result <= 9999
    p result
else
    puts "NG"
end



D060:AボタンとBボタン


botan = gets.split(" ").map(&:to_i)
a,b = botan[0],botan[1]
p a - b


D055:ワインのキャッチコピー


moji = gets.split(" ")
array = ["Best","in"]
p array



moji = gets.split(" ")
# ["a", "decade"]
best_in = ["Best","in"]
best_in << moji[0]
best_in << moji[1]
p best_in.join(" ")
# p array.join(" ")

ary_a.concat(ary_b)




moji = gets.split(" ")
best_in = ["Best","in"]
best_in.concat(moji)
p best_in.join(" ")
# "Best in a decade"


# putsにする

moji = gets.split(" ")
best_in = ["Best","in"]
best_in.concat(moji)
puts best_in.join(" ")


1143




D157:信号の組み合わせ
n = gets.to_i
p 2**n





D086:門松の作成
最も短い竹の長さが与えられるので、長さは 3 : 5 : 7 の 3 本の竹に切断し門松を作るために必要な 1 本の竹の長さを出力してください。
3:5 = small : m 
3:7 = small : l



small = gets.to_i
mid = (5 * small).to_f / 3 
lon = (7 * small).to_f / 3
p small + mid + lon 



small = gets.to_i
mid = small * ( 5 / 3.to_f )
long = small * ( 7 / 3.to_f )
p (small + mid + long).ceil









あー。これでいいんだ。どうすれば楽そうか。を考えた時に閃いた。
3:15 = 60 : 300
1:5


small = gets.to_i
p small * 5




B021:複数形への変換 

3
dog
cat
pig


英単語 a_i を複数形に変換した答えを i 行目に出力してください。

"string".end_with?("ing")          # => true
"string".end_with?("str")          # => false
"string".end_with?("str", "ing")   # => true

・末尾が s, sh, ch, o, x のいずれかである英単語の末尾に es を付ける
・末尾が f, fe のいずれかである英単語の末尾の f, fe を除き、末尾に ves を付ける
・末尾の1文字が y で、末尾から2文字目が a, i, u, e, o のいずれでもない英単語の末尾の y を除き、末尾に ies を付ける
・上のいずれの条件にも当てはまらない英単語の末尾には s を付ける



# ["dog", "cat", "pig"]

num = gets.to_i
words = (1..num).map{gets.chomp}
words.each do |w|
    if w.end_with?("s","sh","ch","o","x")
        puts "w"+"es"
    elsif w.end_with?("f")
        puts "w.tr("f",ves")
    elsif w.end_with?("fe")
        
    end
end


f.end_with?("f")
puts f.chop + "ves"


・末尾の1文字が y で、末尾から2文字目が a, i, u, e, o のいずれでもない英単語の末尾の y を除き、末尾に ies を付ける

num = gets.to_i
words = (1..num).map{gets.chomp}
words.each do |w|
    if w.end_with?("s","sh","ch","o","x")
        puts w + "es"
    elsif w.end_with?("f")
        w.chop!
        puts w.chop + "ves"
    elsif w.end_with?("fe")
        w.chop!.chop!
        puts w.chop + "ves"
    elsif w.end_with?("y") && ! w[-2].include?("a","i","u","e","o")
        puts w.chop + "ies"
    else
        puts w + "s"
    end
end




num = gets.to_i
words = (1..num).map{gets.chomp}
words.each do |w|
    if w.end_with?("s","sh","ch","o","x")
        puts w + "es"
    elsif w.end_with?("fe")
        w.chop!.chop!
        puts w.chop + "ves"
    elsif w.end_with?("f")
        w.chop!
        puts w.chop + "ves"
    elsif w.end_with?("y") && ! [w[-2]].any? {|i| ["a","i","u","e","o"].include?(i)}
        puts w.chop + "ies"
    else
        puts w + "s"
    end
end