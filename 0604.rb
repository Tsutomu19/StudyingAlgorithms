0604.rb
B066:チョコの分割

input = gets.split(" ").map(&:to_i)
h = input[0]
w = input[1]
choco = (1..h).map{gets.split(" ").map(&:to_i)}
# 配列の先頭を切り取る
i = 0
while i <= cols
 choco[0].shift(i).sum == choco[0].drop(i).sum
 i += 1
end






input = gets.split(" ").map(&:to_i)
h = input[0]
w = input[1]
choco = (1..h).map{gets.split(" ").map(&:to_i)}
# 配列の先頭を切り取る
choco.each_with_index do |c,i|
    
end



data = gets.split(" ").map(&:to_i)
rows = data[0]
cols = data[1]

choco = (1..rows).map{gets.split(" ").map(&:to_i)}

i_log = []
i = 0
while i <= cols
 i += 1
 # 削った方の合計　＝ 削られて残った方の合計
 i_log << i if choco[0].first(i).sum == choco[0].drop(i).sum
end
# p i_log
# =>2
answer = []
i_log.last.times{ answer << "A"}
(cols - i_log.last).times{ answer << "B"}
p answer




問題文
N
 個の整数 
A
1
,
.
.
.
,
A
N
 が与えられます。

A
1
×
.
.
.
×
A
N
 を求めてください。

ただし、結果が 
10
18
 を超える場合は、代わりに -1 を出力してください。



input = gets.to_i
(1..input).).map{gets.split(" ").map(&:to_i)}




input = gets.to_i
arr = (1..input).map{gets.split(" ").map(&:to_i)}

arr.size.each_with_index do |n,i|
    if arr[i] * arr[i+1] <= 10 **18
        puts arr[i] * arr[i+1]
    else
        puts '-1'
    end
end





