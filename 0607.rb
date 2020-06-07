B073:【キャンペーン問題】イルミネーションの調査

5 6
4 3 6 1 3
3
1 3
1 5
2 3


input1 = gets.split(" ").map(&:to_i)
p dennkyuu = gets.split(" ").map(&:to_i)
kukann = gets.to_i
data = (i..input3).map{gets.split(" ").map(&:to_i)}

tree = input1[0]
annzenn = input1[1]



array = []

区間指定されたtreeの電球の個数を求める
安全基準を満たしているかみる
満たしていなかったら満たしていない分だけkukannのtreeに足す。

array << dennkyuu(0..kukan-1).to_a
if array.sum / 3 > annzenn
end



input1 = gets.split(" ").map(&:to_i)
dennkyuu = gets.split(" ").map(&:to_i)
kukann = gets.to_i
data = (1..kukann).map{gets.split(" ").map(&:to_i)}

tree = input1[0]
annzenn = input1[1]



array = []

# 区間指定されたtreeの電球の個数を求める
# 安全基準を満たしているかみる
# 満たしていなかったら満たしていない分だけkukannのtreeに足す。
# [4, 3, 6, 1, 3]
array << dennkyuu(0..kukann).to_a








input1 = gets.split(" ").map(&:to_i)
dennkyuu = gets.split(" ").map(&:to_i)
kukann = gets.to_i
data = (1..kukann).map{gets.split(" ").map(&:to_i)}

tree = input1[0]
annzenn = input1[1]



array = []

# 区間指定されたtreeの電球の個数を求める
# 安全基準を満たしているかみる
# 満たしていなかったら満たしていない分だけkukannのtreeに足す。
# [4, 3, 6, 1, 3]
if dennkyuu[0..kukann-1].sum / 3 < kukann




end








# yuki
data = gets.split(" ").map(&:to_i)
count_wood = data[0]
limit_light = data[1]
light_woods = gets.split(" ").map(&:to_i)
count_range = gets.to_i

# 開始地点と終了地点が来る
total_data = (1..count_range).map{gets.split(" ").map(&:to_i)}

plus_arr = []

total_data.each do |start,goal|
   # 光の個数に関し、部分配列の生成、合計、平均へ
   average = light_woods[start-1..goal-1].sum / (goal-start+1)
   if average < limit_light
       for i in start-1..goal-1
         light_woods[i] += limit_light - average
        #  代入して元の値を変えている
       end
   end
end

puts light_woods.join(" ")
















AtCoder

C - gacha 

くじ引きを 
N
 回行い、
i
 回目には種類が文字列 
S
i
 で表される景品を手に入れました。

何種類の景品を手に入れましたか？

num = gets.to_i
ary = (1..num).map{gets.chomp}.map(&:to_i)
p ary.uniq.count



C006:ハイスコアランキング
4 10 3
1.5 1.2 2 0.4
208 200 3 99988
255 150 50 65472
103 748 39 48571
159 403 32 89928
254 300 67 78492
249 298 47 45637
253 382 89 37282
250 350 78 76782
251 371 69 67821
256 312 89 54382

input = gets.split(" ").map(&:to_i).round(1)
parameter_num = input[0]
user = input[1]
top_number = input[2]

p ci = gets.split(" ").map(&:to_i)

p user_xi = (1..user).map{gets.split(" ").map(&:to_i)}


user_xi.each do |u|
    (u * ci).sum
end
# ユーザーのスコアは、各アイテム持ち数×各アイテムの得点の総和となります。









# yuki
data = gets.split(" ").map(&:to_i)
item_count = data[0]
data_count = data[1]
rank_count = data[2]

item_array = gets.split(" ").map(&:to_f)
play_array = (1..data_count).map{gets.chomp.split(" ").map(&:to_i)}
rank_array = []

play_array.each do |arr|
   rank_array << item_array.zip(arr).map{|m,n| m*n}.sum
end

puts rank_array.sort.reverse![0..2].map{|a| a.round}
