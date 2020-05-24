



C067:【ハッカー入門コラボ問題】数字の調査


3 44
4
2
6
・期待する出力は N 行からなります。
・i 行目 (1 ≦ i ≦ N) には X を 2 進数表現にしたときの右から k_i 番目の桁の数字を表す a_i を出力して下さい。
・すべて整数で出力してください。



input = gets.split(" ").map(&:to_i)
num = (1..input[0]).map{gets.chomp}.map(&:to_i)
array = []
array << input[1].to_s(2).split("")

p [-num[0]]






data = gets.split(" ").map(&:to_i)
count = data[0]
number = data[1]

(1..count).map{gets.chomp}.each do |i|
     puts number.to_s(2).split("").reverse[i.to_i-1]
end



C074:【クロニクルコラボ問題】文章サイズ変更



6 8 6
My#name#
is#paiza
.#I#like
#program
ming#ver
y#much.#
