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
paizaレーティング
1216



D100:区切り文字の統一
あなたはソースコードを読んでいる時に区切り文字として「_」(アンダースコア)と「-」(ハイフン)が混在している文字列の存在に気が付きました。
そこで「_」か「-」どちらか一方に統一するため以下のルールで変換することにしました。

・「_」と「-」のうち数が多い方に統一
・もし同数の場合は「_」に統一

ruby_python-java-php


text = gets.split("")
under,hyphen = 0,0
text.each do |t|
    if t == "_"
        under += 1
    elsif t == "-"
        hyphen += 1
    end
end
text.join("")
if under >= hyphen
    puts text.gsub!("-","_")
else
    puts text.gsub!("_","-")
end




最終的な回答
text = gets.split("")
under,hyphen = 0,0
text.each do |t|
    if t == "_"
        under += 1
    elsif t == "-"
        hyphen += 1
    end
end

if under >= hyphen
    puts text.join("").gsub!("-","_")
else
    puts text.join("").gsub!("_","-")
end


paizaレーティング
1196



D095:ジュースの分配
ジュースを N ミリリットルを M ミリリットル入るコップいくつにわけられるかを出力してください。
ただし、余ったジュースはわけた数には含まないことにします。

末尾に改行を入れ、余計な文字、空行を含んではいけません。



juice = gets.to_i
cup = gets.to_i

puts juice / cup

1204



D111:文字を切り詰める
i = gets.to_i
string = gets.split("")
puts string[0..i-1].join("")