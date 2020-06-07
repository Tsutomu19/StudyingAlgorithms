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