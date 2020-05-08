# 二百万までの素数の和を求めなさい

# 初めて自力で理解しながら手を動かした。
# 次は、素数は何かというロジックを考えながら行う

require 'prime'

p Prime.each(20000).to_a.sum






# D問題
line = gets.to_i

p 100 + line*10

# サイコロ
num = gets.to_i
p (7 - num)

# 気温差
line = gets.split(' ').map(&:to_i)
p line[0]-line[1]

line = gets.split(' ').map(&:to_i) 
# 一行に複数、スペース消して、数字に