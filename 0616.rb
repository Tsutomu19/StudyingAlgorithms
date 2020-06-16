D002:数の比較
aとbを比較し大きい方の値を出力して下さい。aとbが同じ場合は「eq」と出力して下さい。

i = gets.split(" ").map(&:to_i)
a,b = i[0],i[1]
if a > b 
    p a 
elsif a == b
    puts "eq"
else
    p b
end


paizaレーティング
1181




D134:タイトルの長さ

文字列 S が与えられるので 10 文字ごとに改行して出力してください。

moji = gets.split("")
i = moji.count
if i <= 9
    puts moji[0..i].join("")
else
    puts moji[0..9].join("")
    puts moji[10..i].join("")
end

paizaレーティング
1216
