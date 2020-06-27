D142:【キャンペーン問題】イルミネーションの数

data = gets.split(" ").map(&:to_i)
p (data[0].to_f / data[1]).ceil * data[2]

小数点まで計算結果が欲しいときは
.to_fを使う。ただし場所に注意。