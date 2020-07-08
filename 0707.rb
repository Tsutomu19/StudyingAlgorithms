D126
p gets.split(" ").map(&:to_i).sum


D131:脱出ゲーム

array = []
data = gets.chomp.split("").map(&:to_i)
.each do |d|
    if d == 1
        array << "A"
    elsif d == 2
        array << "B"
    else
        array << "C"
    end
end

puts array.join



あなたは気象庁のデータ分析の担当者で、8 月の台風の上陸の間隔についてのデータを作るよう求められました。

サンプルとなる5 個の台風について上陸した日が与えられるので、それぞれ (2 個目以降) について直前の上陸日との間隔日数を出力してください。

例)
与えられる入力

1
5
15
27
28


data = (1..5).map{gets.chomp}.map(&:to_i)
p data[1]-data[0]
p data[2]-data[1]
p data[3]-data[2]
p data[4]-data[3]

# 綺麗な解き方を知りたい。